//
//  EndpointPaths.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

enum EndpointPath: String {
    case basicSearch = "/search/basic"
    case proSearch = "/search/pro"
    case ultraSearch = "/search/ultra"

    var path: String { rawValue }
}
