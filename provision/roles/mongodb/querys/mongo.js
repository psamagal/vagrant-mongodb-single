db.employee.update({}, {$set: {isGolden: false}}, {multi: true});
