//
//  communities.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 06.04.2023.
//

import Foundation

struct communities : Hashable, Codable{
    let community_id: String
    let administrator_id: String
    let community_name: String
}
