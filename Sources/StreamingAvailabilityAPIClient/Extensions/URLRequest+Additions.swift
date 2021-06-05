//
//  URLRequest+Additions.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

extension URLRequest {
    static func create(path: EndpointPath,
                       queryItems: QueryItems,
                       headers: [String: String]) -> URLRequest {
        var urlComponenets = URLComponents()
        urlComponenets.scheme = "https"
        urlComponenets.host = "streaming-availability.p.rapidapi.com"
        urlComponenets.path = path.rawValue
        urlComponenets.queryItems = queryItems.map(URLQueryItem.init)

        let request = NSMutableURLRequest(url: urlComponenets.url!,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        return request as URLRequest
    }
}
