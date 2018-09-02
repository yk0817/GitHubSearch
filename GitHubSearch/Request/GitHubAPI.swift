//
//  GitHubAPI.swift
//  GitHubSearch
//
//  Created by 山本　憲 on 2018/09/02.
//  Copyright © 2018年 山本　憲. All rights reserved.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
    
    struct SearchUsers : GitHubRequest {

        let keyword: String
        typealias Response = SearchResponse<User>

        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
