use admin;
db.createUser(
{
    user: "admin",
    pwd: "admin",
    roles: [ "root" ]
});

