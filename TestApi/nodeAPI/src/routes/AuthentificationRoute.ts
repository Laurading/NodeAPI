import { Router } from 'express';
import { Request, Response } from 'express';
import { AuthController } from '../controller/AuthController';
import { subMidd, LoggedIdMidd } from '../middlewares/sub.middleware';
import {  loginMidd, registerMidd } from '../middlewares/auth.middleware';
import { SubscriptionController } from '../controller/SubscriptionController';
import {tokenvalidation} from '../utils/verifyToken';





const route: Router = Router();

route.get('/',subMidd, (req: Request, res: Response) => {
    return res.end('<p> hello word </p>')
})

route.post('/login',loginMidd, AuthController.login)
route.post('/register', registerMidd, AuthController.register)
route.put('/subscription',tokenvalidation ,  SubscriptionController.subscribe )


export { route as AuthentificationRoute }
