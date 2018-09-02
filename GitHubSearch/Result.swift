//
//  Result.swift
//  GitHubSearch
//
//  Created by 山本　憲 on 2018/09/02.
//  Copyright © 2018年 山本　憲. All rights reserved.
//
enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error){
        self = .failure(error)
    }
}
