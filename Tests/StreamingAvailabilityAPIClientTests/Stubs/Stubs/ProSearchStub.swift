//
//  ProSearchStub.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct ProSearchStub: JSONStub {
    var request = JSONStubRequest(path: "search/pro", queryParams: [:])
    var response = JSONStubResponse(fileName: "pro_search.json")
}
