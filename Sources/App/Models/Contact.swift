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
    var firstName: String?
    
    @Field(key: "last_name")
    var lastName: String?
    
    @Field(key: "phone")
    var phone: String?
    
    @Field(key: "email")
    var email: String?
    
    @Field(key: "address1")
    var address1: String?
    
    @Field(key: "address2")
    var address2: String?
    
    @Field(key: "city")
    var city: String?
    
    @Field(key: "state_province")
    var stateProvince: String?
    
    @Field(key: "postal_code")
    var postalCode: String?
    
    @Field(key: "country")
    var country: String?
    
    @Field(key: "first_contact")
    var firstContact: Date
    
    @Field(key: "last_contact")
    var lastContact: Date
    
    @Field(key: "support_level")
    var supportLevel: SupportLevel?
    
    init() { }
    
    init(firstName: String?, lastName: String?, phone: String?,
         email: String?, address1: String, address2: String?,
         city: String?, stateProvince: String?, postalCode: String?,
         country: String?, firstContact: Date, lastContact: Date,
         supportLevel: SupportLevel?) {
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.email = email
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.stateProvince = stateProvince
        self.postalCode = postalCode
        self.country = country
        self.firstContact = firstContact
        self.lastContact = lastContact
        self.supportLevel = supportLevel
    }
}
