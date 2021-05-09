//
//  Encodable+Additions.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

protocol RequestParameter: Encodable {

    func toDictionary() -> [String: Any]

}

extension RequestParameter {
    func toDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else { return [:] }
        return (try? JSONSerialization.jsonObject(with: data,
                                                  options: .allowFragments))
            .flatMap { $0 as? [String: Any] } ?? [:]
    }

    func toQueryItems() -> QueryItems {
        return toDictionary()
            .tryConvertValuesToStrings()
    }
}
