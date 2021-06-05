//
//  JSONStubManager.swift
//  StreamingAvailabilityAPIClientTests
//
//  Created by Brian Murphy on 14/02/2020.
//

import Foundation
import OHHTTPStubsSwift
import OHHTTPStubs

public class JSONStubManager {

    public enum StubType {
        case basicMovieSearch
        case basicTVSeriesSearch
        case proMovieSearch
        case proTVSeriesSearch
    }

    public static func setupStub(_ stubType: StubType) throws {
        let stubDetails = details(for: stubType)
        let condition = isHost(stubDetails.request.host)
            && pathEndsWith(stubDetails.request.path)
            && containsQueryParams(stubDetails.request.queryParms)
        let url = try JSONFileReader.shared.jsonFile(named: stubDetails.response.fileName)

        stub(condition: condition) { _ in
            return fixture(filePath: url.path, headers: nil)
        }
    }

    public static func tearDown() {
        HTTPStubs.removeAllStubs()
    }

}

private extension JSONStubManager {

    static func details(for stubType: StubType) -> JSONStub {
        switch stubType {
        case .basicMovieSearch: return BasicMovieSearchStub()
        case .basicTVSeriesSearch: return BasicTVSeriesSearchStub()
        case .proMovieSearch: return ProMovieSearchStub()
        case .proTVSeriesSearch: return ProTVSeriesSearchStub()
        }
    }

}
