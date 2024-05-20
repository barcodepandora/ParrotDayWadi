//
//  APIRouter.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import Foundation

enum APIRouter {
    case getData
    
    var urlRequest: URLRequest {
        switch self {
        case .getData:
            return URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/comments?postId=1")!)
        }
    }
}
