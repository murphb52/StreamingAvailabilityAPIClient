import XCTest
@testable import StreamingAvailabilityAPIClient
import Combine

final class StreamingAvailabilityAPIClientTests: XCTestCase {
    var anyCancellables: [AnyCancellable] = []

    let sut = StreamingAvailabilityAPIClient(apiKey: "some_key")
    var disposabes: [AnyCancellable] = []

    override func tearDown() {
        disposabes.removeAll()

        JSONStubManager.tearDown()
    }

    func testBasicMovieSearch() throws {
        try JSONStubManager.setupStub(.basicMovieSearch)

        let parameters = BasicMovieSearchParameters(country: "en",
                                                    service: .disney)
        let publisher = sut.basicMovieSearchRequest(parameters)
        assert(publisher: publisher) { response in
            XCTAssertEqual(response.results.count, 8)
        }
    }

    func testBasicTVSeriesSearch() throws {
        try JSONStubManager.setupStub(.basicTVSeriesSearch)

        let parameters = BasicTVSeriesSearchParameters(country: "en",
                                                     service: .disney)
        let publisher = sut.basicTVSeriesSearchRequest(parameters)
        assert(publisher: publisher) { response in
            XCTAssertEqual(response.results.count, 8)
        }
    }

//    func testProSearch() throws {
//        try JSONStubManager.setupStub(.proSearch)
//
//        let parameters = ProSearch.Parameters(country: "en",
//                                              service: .disney,
//                                              type: .movie,
//                                              orderBy: .originalTitle,
//                                              yearMin: nil,
//                                              yearMax: nil,
//                                              genre: nil,
//                                              page: nil,
//                                              desc: nil,
//                                              language: nil,
//                                              keyword: nil)
//        assert(publisher: sut.proSearch(parameters)) { response in
//            XCTAssertEqual(response.results.count, 10)
//        }
//    }

    func testOptionalParametersAreNotIncludedWhenNilForBasicSearch() {

        let params = BasicMovieSearchParameters(country: "en",
                                                service: .disney,
                                                genre: nil,
                                                page: nil,
                                                language: nil)
        let payload = params.toDictionary()
        XCTAssertEqual(payload.keys.count, 3)
        XCTAssertNotNil(payload["country"])
        XCTAssertNotNil(payload["service"])
        XCTAssertNotNil(payload["type"])
    }

    func testOptionalParametersAreNotIncludedWhenNilForProSearch() {
//        let parameters = ProSearch.Parameters(country: "en",
//                                              service: .disney,
//                                              type: .movie,
//                                              orderBy: .originalTitle,
//                                              yearMin: nil,
//                                              yearMax: nil,
//                                              genre: nil,
//                                              page: nil,
//                                              desc: nil,
//                                              language: nil,
//                                              keyword: nil)
//        let payload = parameters.toDictionary()
//        XCTAssertEqual(payload.keys.count, 4)
//        XCTAssertNotNil(payload["country"])
//        XCTAssertNotNil(payload["service"])
//        XCTAssertNotNil(payload["type"])
//        XCTAssertNotNil(payload["order_by"])
    }
}

private extension StreamingAvailabilityAPIClientTests {

    func assert<T>(publisher: AnyPublisher<T, Error>,
                   receiveClosure: @escaping (_ response: T) -> Void) {
        let testExpectation = expectation(description: #function)

        publisher
            .sink(receiveCompletion: { (completion) in
                XCTAssertNil(completion.error)
                testExpectation.fulfill()
            },
                  receiveValue: { (response) in
                    receiveClosure(response)
            })
            .store(in: &disposabes)

        waitForExpectations(timeout: 5, handler: nil)
    }

}

extension Subscribers.Completion {
    var error: Error? {
        switch self {
        case .failure(let error): return error
        case .finished: return nil
        }
    }
}

