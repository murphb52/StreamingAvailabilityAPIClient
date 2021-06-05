//
//  BasicTVSeriesSearchStub.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct BasicTVSeriesSearchStub: JSONStub {
    var request = JSONStubRequest(path: "/search/basic", queryParams: [:])
    var response = JSONStubResponse(fileName: "basic_tv_series_search.json")
}
