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
            .field("support_level", .string)
            .deleteField("address_id")
            .field("address", .dictionary)
            .unique(on: "email", "phone")
            .update()
        //TODO: Constrain so that EITHER first name or last name are not nil - 2/11/22
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("contacts").delete()
    }
    
}
