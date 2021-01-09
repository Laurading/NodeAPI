import { Request, Response } from 'express';
import { verify } from 'jsonwebtoken';
import Tuteur from '../models/Tuteur';


export class SubscriptionController {

   
    /**
     * @static
     * @memberof SubscriptionController
     */
    static subscribe = async(req: Request, res: Response) => {
       
            res.send("profile");
        
        



    }


}
