export default class User {

    private id_user: number;
    private firstname: string;
    private lastname: string;
    private email: string;
    private password: string;
    private date_naissance: Date;
    private sexe: string;

    constructor(userId: number, nom: string, prenom: string, mail: string, pwd: string, birthDay: Date, genre: string){
        this.id_user = userId;
        this.firstname = nom;
        this.lastname = prenom;
        this.email = mail;
        this.password = pwd;
        this.date_naissance = birthDay;
        this.sexe = genre;
    }
}