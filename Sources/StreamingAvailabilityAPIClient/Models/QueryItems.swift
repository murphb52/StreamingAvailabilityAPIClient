//
//  QueryItems.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

typealias QueryItems = [String: String]

extension URLQueryItem {
    init(_ element: Dictionary<String, String>.Element) {
        self.init(name: element.key, value: element.value)
    }
}
