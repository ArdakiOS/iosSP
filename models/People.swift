//
//  People.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 16.03.2023.
//

import Foundation

struct People: Hashable,Codable{
    let person_id : UUID
    let first_name : String
    let last_name : String
    let password : String
    let email : String
    let birth_date : String
}
