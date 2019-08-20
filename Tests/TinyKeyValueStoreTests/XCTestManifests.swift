import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CacheTests.allTests),
        testCase(MemoryTests.allTests),
    ]
}
#endif
