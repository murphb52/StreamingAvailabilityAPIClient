//
//  EndpointPaths.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

enum EndpointPaths: String {
    case basicSearch = "/search/basic"
    case proSearch = "/search/pro"

    var path: String { rawValue }
}
