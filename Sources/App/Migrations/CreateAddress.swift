//
//  CreateAddress.swift
//  
//
//  Created by Matthew Wylder on 2/16/22.
//

import Fluent

struct CreateAddress: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("addresses")
            .id()
            .field("address1", .string)
            .field("address2", .string)
            .field("state_province", .string)
            .field("postal_code", .string)
            .field("country", .string)
            .create()
    }
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("addresses").delete()
    }
}
