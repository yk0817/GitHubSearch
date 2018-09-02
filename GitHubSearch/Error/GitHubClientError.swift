//
//  GitHubClientError.swift
//  GitHubSearch
//
//  Created by 山本　憲 on 2018/09/02.
//  Copyright © 2018年 山本　憲. All rights reserved.
//
enum GitHubClientError: Error {
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GitHubAPIError)
}
