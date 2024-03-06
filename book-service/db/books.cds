namespace db.testsap;

using { cuid, managed } from '@sap/cds/common';
using { db.testsap.Products } from './products';

entity Books : Products { // erediterà anche i campi di Products
    pages: Integer;
    isbn: String;
    rating: Decimal(2, 1);
    author: Association to Authors; // con questo si aggiungerà un authorID su questa entity
}


entity Authors: cuid, managed {
    name: String;
    age: Integer
}

type Rating : Integer enum {
    Best = 5;
    Good = 4;
    Average = 3;
    Poor = 2;
    Worst= 1;
}


entity Reviews : cuid, managed {
    rating: Rating;
    subject: UUID;    
}
