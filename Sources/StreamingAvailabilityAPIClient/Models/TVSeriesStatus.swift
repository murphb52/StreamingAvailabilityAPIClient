//
//  TVSeriesStatus.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public enum TVSeriesStatus: Int, Codable {
    case unknown =          0
    case returningSeries =  1
    case planned =          2
    case inProduction =     3
    case ended =            4
    case cancelled =        5
    case pilot =            6
}
