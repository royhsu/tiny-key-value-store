// MARK: - MemoryTests

import XCTest

@testable import TinyKeyValueStore

final class MemoryTests: XCTestCase {
    
    func testGetAndSetValueForKey() {
        
        let memory = Memory<String, Int>()
        
        XCTAssertNil(memory["key"])
        
        memory["key"] = 10
        
        XCTAssertEqual(memory["key"], 10)
        
    }

    static var allTests = [
        ("testGetAndSetValueForKey", testGetAndSetValueForKey),
    ]
    
}
