import XCTest
@testable import TinyKeyValueStore

final class TinyKeyValueStoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TinyKeyValueStore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
