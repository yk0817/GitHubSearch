//
//  Repository.swift
//  GitHubSearch
//
//  Created by 山本　憲 on 2018/09/02.
//  Copyright © 2018年 山本　憲. All rights reserved.
//

struct Repository : Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }

}
