//
//  IndiViewModel.swift
//  ParrotDayWadi
//
//  Created by Juan Manuel Moreno on 20/05/24.
//

import Foundation

protocol IndiViewModelProtocol {
    func deliver() async
}

class IndiViewModel: IndiViewModelProtocol, ObservableObject {
    
    @Published var indies: [Indi] = []
    private let useCase: IndiUseCaseProtocol?
    
    init(useCase: IndiUseCaseProtocol = IndiUseCase()) {
        self.useCase = useCase
    }
    
    func deliver() async {
        do {
            self.indies = try await (useCase?.deliver())!
            print(self.indies)
        } catch {
            
        }
    }
}
