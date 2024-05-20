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
            let (data, _) = try await URLSession.shared.data(for: APIRouter.getData.urlRequest)
            let decoder = JSONDecoder()
            indies = try decoder.decode([Indi].self, from: data)
        } catch {
            print("KO")
        }
        return indies
    }
}
