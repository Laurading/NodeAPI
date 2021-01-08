import "reflect-metadata";
import {createConnection} from "typeorm";
import {User} from "./src/entity/User";

createConnection().then(async connection => {

    console.log("Inserting a new user into the database...");
    const user = new User();
    
    user.firstName = "Laura";
    user.lastName = "Ding";
    user.email= "Laurxding@hotmail.com";
    user.password="Ananas";
    user.date_naissance ="22 mai 2000";
    user.sexe = "F"
    await connection.manager.save(user);
    console.log("Saved a new user with id: " + user.id);

    console.log("Loading users from the database...");
    const users = await connection.manager.find(User);
    console.log("Loaded users: ", users);

    console.log("Here you can setup and run express/koa/any other framework.");

}).catch(error => console.log(error));
