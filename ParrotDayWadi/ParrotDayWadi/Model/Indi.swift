//
//  Indi.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import Foundation

struct Indi {
    var postId: Int?
    var id: Int?
    var name: String?
    var email: String?
    var body: String?
    
    init(postId: Int = 0, id: Int = 0, name: String = "", email: String = "", body: String = "") {
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}

extension Indi: Codable {
    
}

extension Indi: Identifiable {
    
}

