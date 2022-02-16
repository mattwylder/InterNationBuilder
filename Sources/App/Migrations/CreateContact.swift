//
//  CreateContact.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Fluent

struct CreateContact: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("contacts")
            .id()
            .field("first_name", .string, .required)
            .field("last_name", .string)
            .field("phone", .string)
            .field("email", .string)
            .field("address1", .string)
            .field("address2", .string)
            .field("city", .string)
            .field("state_province", .string)
            .field("postal_code", .string)
            .field("country", .string)
            .field("first_contact", .string, .required)
            .field("last_contact", .string, .required)
            .field("support_level", .string)
            .unique(on: "email", "phone")
            .create()
        //TODO: Constrain so that EITHER first name or last name are not nil - 2/11/22
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("contacts").delete()
    }
    
}
