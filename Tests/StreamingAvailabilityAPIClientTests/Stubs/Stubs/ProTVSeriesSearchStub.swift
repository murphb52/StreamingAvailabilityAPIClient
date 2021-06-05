//
//  ProTVSeriesSearchStub.swift
//  
//
//  Created by Brian Murphy on 05/06/2021.
//

import Foundation

public struct ProTVSeriesSearchStub: JSONStub {
    var request = JSONStubRequest(path: "search/pro", queryParams: [:])
    var response = JSONStubResponse(fileName: "basic_tv_series_search.json")
}
