import { verify } from 'jsonwebtoken';
import { Request, Response } from 'express';

const split = (token: string) => { return token.split('Bearer ').join('') }

export const subMidd = (req: Request, res: Response, next: () => void) => {

    
    try {
        if (req.headers.authorization && verify(split(req.headers.authorization), < string > process.env.JWT_KEY))
            return next()
        else
            throw new Error(`Votre token n'est pas correct`)
    } catch (err) {
        return res.status(401).json({ error: true, message: err.message }).end();
    }

}

export const LoggedIdMidd = (req: Request, res: Response, next: () => void ) =>{

        if (req.headers && req.headers.authorization) {
            var authorization = req.headers.authorization.split(' ')[1], decoded;
            try {
                decoded = verify(authorization, < string > process.env.JWT_KEY);
                console.log("##############");
                console.log(decoded);
            } catch (e) {
                return res.status(401).send('utilisateur non trouvé');
        }
    }
}


