//
//  Contact.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Fluent
import Vapor

final class Contact: Model, Content {
    enum SupportLevel: Int, Codable {
        case strongSupport = 1, weakSupport, undecided, weakOppose, strongOppose
    }
    
    static let schema = "contacts"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "first_name")
    var first_name: String
    
    @Field(key: "last_name")
    var last_name: String?
    
    @Field(key: "phone")
    var phone: String?
    
    @Field(key: "email")
    var email: String?
    
    @Timestamp(key: "first_contact", on: .create)
    var first_contact: Date?
    
    @Timestamp(key: "last_contact", on: .update)
    var last_contact: Date?
    
    @Field(key: "support_level")
    var support_level: SupportLevel?
    
    @Field(key: "address")
    var address: Address?
    
    init() { }
    
    init(first_name: String,
         last_name: String?,
         phone: String?,
         email: String?,
         support_level: SupportLevel?,
         address: Address) {
        self.first_name = first_name
        self.last_name = last_name
        self.phone = phone
        self.email = email
        self.support_level = support_level
        self.address = address
    }
}
