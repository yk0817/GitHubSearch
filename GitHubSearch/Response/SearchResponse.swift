//
//  SearchResponse.swift
//  GitHubSearch
//
//  Created by 山本　憲 on 2018/09/02.
//  Copyright © 2018年 山本　憲. All rights reserved.
//

struct SearchResponse<Item : Decodable> : Decodable {
    let totalCount: Int
    let items: [Item]
    
    enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
