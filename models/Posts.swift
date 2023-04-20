//
//  Posts.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 16.03.2023.
//

import Foundation

struct Posts: Hashable, Codable{
    let post_id : String
    let community_id : String
    let person_id : String
    let first_name :String
    let last_name: String
    let text : String
    let group_post: Bool
    let anonymous : Bool
    let created_on : String
    let edited_on : String
    let likes : Int
    let comment_count: Int
}
