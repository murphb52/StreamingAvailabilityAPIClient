//
//  JSONStubRequest.swift
//  StreamingAvailabilityAPIClientTests
//
//  Created by Brian Murphy on 14/02/2020.
//

import Foundation

struct JSONStubRequest {
    let host: String
    let path: String
    let queryParms: [String: String]

    init(host: String = "streaming-availability.p.rapidapi.com",
         path: String,
         queryParams: [String: String] = [:]) {
        self.host = host
        self.path = path
        self.queryParms = queryParams
    }
}
