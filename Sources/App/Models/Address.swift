//
//  File.swift
//  
//
//  Created by Matthew Wylder on 2/11/22.
//

import Foundation

final class Address: Model, Content {
    static let schema = "addresses"
    
    @Field(key: Keys.address1)
    var address1: String?
    
    @Field(key: Keys.address2)
    var address2: String?
    
    @Field(key: Keys.city)
    var city: String?
    
    @Field(key: "state_province")
    var stateProvince: String?
    
    @Field(key: "postal_code")
    var postalCode: String?
    
    @Field(key: "country")
    var country: String?
}
