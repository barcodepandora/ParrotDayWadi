//
//  IndiUseCase.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import Foundation

protocol IndiUseCaseProtocol {
    func deliver() async throws -> [Indi]
}

class IndiUseCase: IndiUseCaseProtocol {
    func deliver() async throws -> [Indi] {
        var indies: [Indi] = []
        do {
                let (data, response) = try await URLSession.shared.data(from: URL(string: "https://jsonplaceholder.typicode.com/comments?postId=1")!)
                let decoder = JSONDecoder()
                indies = try decoder.decode([Indi].self, from: data)
//                print(indies)
        } catch {
            print("KO")
        }
        return indies
    }
}
