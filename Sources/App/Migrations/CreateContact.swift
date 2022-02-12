//
//  CreateContact.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Fluent

struct CreateContact: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Contact.schema)
            .id()
            .field(Contact.Keys.firstName, .string, .required)
            .field(Contact.Keys.lastName, .string)
            .field(Contact.Keys.phone, .string)
            .field(Contact.Keys.email, .string)
            .field(Contact.Keys.address1, .string)
            .field(Contact.Keys.address2, .string)
            .field(Contact.Keys.city, .string)
            .field(Contact.Keys.stateProvince, .string)
            .field(Contact.Keys.postalCode, .string)
            .field(Contact.Keys.country, .string)
            .field(Contact.Keys.firstContact, .string, .required)
            .field(Contact.Keys.lastContact, .string, .required)
            .field(Contact.Keys.supportLevel, .string)
            .unique(on: Contact.Keys.email, Contact.Keys.phone)
            .create()
        //TODO: Constrain so that EITHER first name or last name are not nil - 2/11/22
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Contact.schema).delete()
    }
    
}
