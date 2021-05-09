//
//  BasicSearchStub.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct BasicSearchStub: JSONStub {
    var request = JSONStubRequest(path: "/search/basic", queryParams: [:])
    var response = JSONStubResponse(fileName: "basic_search.json")
}
