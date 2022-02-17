//
//  File.swift
//  
//
//  Created by Matthew Wylder on 2/16/22.
//

import Fluent
import Vapor

struct UpdateContact: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("contacts")
            .deleteField("address_id")
            .field("address", .dictionary)
            .update()
        //TODO: Constrain so that EITHER first name or last name are not nil - 2/11/22
    }
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("contacts").delete()
    }
}
