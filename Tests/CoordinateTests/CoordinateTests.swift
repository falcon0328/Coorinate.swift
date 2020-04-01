import XCTest
@testable import Coordinate

final class CoordinateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Coordinate().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
