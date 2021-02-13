//
//  Post.swift
//  JSON Parsing Example
//
//  Created by Veer Patel on 12/02/2021.
//

import Foundation

struct NewsFeed: Codable {
    
    var status: String? = ""
    var totalResults: Int? = 0
    var articles: [Article]?
    
    
}
