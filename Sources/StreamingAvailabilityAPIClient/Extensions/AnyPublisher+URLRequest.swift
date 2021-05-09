//
//  AnyPublisher+Additions.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation
import Combine

extension AnyPublisher {
    static func publisher<T: Codable>(for request: URLRequest) -> AnyPublisher<T, Error> {
        let publisher = URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return publisher
    }
}
