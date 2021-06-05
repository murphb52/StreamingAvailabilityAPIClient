//
//  BasicMovieSearchStub.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct BasicMovieSearchStub: JSONStub {
    var request = JSONStubRequest(path: "/search/basic", queryParams: [:])
    var response = JSONStubResponse(fileName: "basic_movie_search.json")
}
