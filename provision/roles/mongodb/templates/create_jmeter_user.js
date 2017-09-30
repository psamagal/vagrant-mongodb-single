use jmeter;
db.createUser(
   {
     user: "jmeter",
     pwd: "jmeter",
     roles:
       [
         { role: "readWrite", db: "jmeter" }
       ]
   }
);