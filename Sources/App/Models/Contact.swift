//
//  Contact.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Fluent
import Vapor

final class Contact: Model, Content {
    
    struct Keys {
        static let firstName = FieldKey.string("firstName")
        static let lastName = FieldKey.string("lastName")
        static let phone = FieldKey.string("phone")
        static let email = FieldKey.string("email")
        static let address1 = FieldKey.string("address1")
        static let address2 = FieldKey.string("address2")
        static let city = FieldKey.string("city")
        static let stateProvince = FieldKey.string("stateProvince")
        static let country = FieldKey.string("country")
        static let postalCode = FieldKey.string("postalCode")
        static let firstContact = FieldKey.string("firstContact")
        static let lastContact = FieldKey.string("lastContact")
        static let supportLevel = FieldKey.string("supportLevel")
    }
    
    enum SupportLevel: Codable {
        case strongSupport, weakSupport, undecided, weakOppose, strongOppose
    }
    
    static let schema = "contacts"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: Keys.firstName)
    var firstName: String?
    
    @Field(key: Keys.lastName)
    var lastName: String?
    
    @Field(key: Keys.phone)
    var phone: String?
    
    @Field(key: Keys.email)
    var email: String?
    
    @Field(key: Keys.address1)
    var address1: String?
    
    @Field(key: Keys.address2)
    var address2: String?
    
    @Field(key: Keys.city)
    var city: String?
    
    @Field(key: Keys.stateProvince)
    var stateProvince: String?
    
    @Field(key: Keys.postalCode)
    var postalCode: String?
    
    @Field(key: Keys.country)
    var country: String?
    
    @Field(key: Keys.firstContact)
    var firstContact: Date
    
    @Field(key: Keys.lastContact)
    var lastContact: Date
    
    @Field(key: Keys.supportLevel)
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
