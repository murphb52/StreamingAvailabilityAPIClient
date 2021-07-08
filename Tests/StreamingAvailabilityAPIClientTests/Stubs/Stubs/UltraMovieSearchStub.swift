//
//  File.swift
//  
//
//  Created by Brian Murphy on 07/07/2021.
//

import Foundation

public struct UltraMovieSearchStub: JSONStub {
    var request = JSONStubRequest(path: "search/ultra", queryParams: [:])
    var response = JSONStubResponse(fileName: "ultra_movie_search.json")
}
