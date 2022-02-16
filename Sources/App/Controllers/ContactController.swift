//
//  ContactController.swift
//  
//
//  Created by Matthew Wylder on 2/16/22.
//

import Fluent
import Vapor

struct ContactController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let contactRoutes = routes.grouped("contacts")
        contactRoutes.get(use: index)
    }
    
    func index(request: Request) throws -> EventLoopFuture<[Contact]> {
        return Contact.query(on: request.db).all()
    }
    
    func create(request: Request) throws -> EventLoopFuture<Contact> {
        let contact = try request.content.decode(Contact.self)
        return contact.save(on: request.db).map { contact }
    }
}
