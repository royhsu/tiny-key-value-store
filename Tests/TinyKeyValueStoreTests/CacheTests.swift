// MARK: - CacheTests

import XCTest

@testable import TinyKeyValueStore

final class CacheTests: XCTestCase {
    
    func testGetAndSetValueForKey() {
        
        let cache = Cache<String, Int>()
        
        XCTAssertNil(cache["key"])
        
        cache["key"] = 10
        
        XCTAssertEqual(cache["key"], 10)
        
    }

    static var allTests = [
        ("testGetAndSetValueForKey", testGetAndSetValueForKey),
    ]
    
}
