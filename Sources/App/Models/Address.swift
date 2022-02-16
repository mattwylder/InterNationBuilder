//
//  File.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Fluent
import Vapor

final class Address: Model, Content {
    static let schema = "addresses"
    
    @ID(key: .id)
    var id: UUID?
    
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
}
