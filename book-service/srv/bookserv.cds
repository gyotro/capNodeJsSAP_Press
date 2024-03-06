namespace srv.testsap;

using { db.testsap as my } from '../db/books';

service BookStoreSrv {

    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity Reviews as projection on my.Reviews;

}


