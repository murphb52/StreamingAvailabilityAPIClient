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

    func testBasicSearch() throws {
        try JSONStubManager.setupStub(.basicSearch)

        let parameters = BasicSearch.Parameters(country: "en",
                                                service: .disney,
                                                type: .movie,
                                                genre: nil,
                                                page: nil,
                                                language: nil)

        assert(publisher: sut.basicSearch(parameters)) { response in
            XCTAssertEqual(response.results.count, 8)
        }
    }

    func testOptionalParametersAreNotIncludedWhenNil() {
        let params = BasicSearch.Parameters(country: "en",
                                            service: .disney,
                                            type: .movie,
                                            genre: nil,
                                            page: nil,
                                            language: nil)
        let payload = params.toDictionary()
        XCTAssertNil(payload["genre"])
        XCTAssertNil(payload["page"])
        XCTAssertNil(payload["language"])
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

