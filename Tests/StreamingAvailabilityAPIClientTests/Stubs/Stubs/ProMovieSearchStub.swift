//
//  ProMovieSearchStub.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct ProMovieSearchStub: JSONStub {
    var request = JSONStubRequest(path: "search/pro", queryParams: [:])
    var response = JSONStubResponse(fileName: "basic_movie_search.json")
}
