export default class Cart {

    private id_cart: number;
    private cartNumber: string | null;
    private month: string | null;
    private year: number ;

    constructor(id: number, cartNumb?: string, mois?: string, an?: number ){
        this.id_cart = id;
        this.cartNumber = (cartNumb) ? null : cartNumb;
        this.month = (mois === undefined) ? null : mois;
        this.year = an;
    }

    get id() : number{
        return this.id_cart;
    }

    get cartNumb() : string{
        return (this.cartNumber === null) ? '' : this.cartNumber ;
    }

    get Month() : string{
        return (this.month === null) ? '' : this.month;
    }
    
    get Year() : number{
        return this.year;
    }

}