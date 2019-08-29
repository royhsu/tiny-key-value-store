// MARK: - FieldTests

import XCTest

@testable import TinyKeyValueStore

final class FieldTests: XCTestCase {
    
    func testMutateWrappedValue() {
        
        let memory = Memory<Team, Score>()
        
        let whiteTeamScoreField = Field(name: .white, store: memory)
        
        XCTAssertNil(whiteTeamScoreField.wrappedValue)
        
        whiteTeamScoreField.wrappedValue = 80.5
        
        XCTAssertEqual(memory[.white], 80.5)
        
        XCTAssertEqual(whiteTeamScoreField.wrappedValue, 80.5)
        
    }
    
    static var allTests = [
        ("testMutateWrappedValue", testMutateWrappedValue)
    ]
    
}

// MARK: - Score

typealias Score = Double

// MARK: - Team

enum Team {
    
    case white, red
    
}
