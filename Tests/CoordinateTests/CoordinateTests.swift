import XCTest
@testable import Coordinate

final class CoordinateTests: XCTestCase {
    
    func test_Dmm2Dms() {
        let dms = Coordinate.shared.Dmm2Dms(degree: 35, minute: 21.6363)
        XCTAssertEqual(dms.degree, 35)
        XCTAssertEqual(dms.minute, 21)
        XCTAssertEqual(round(1000 * dms.seconds) / 1000, 38.178)
    }
    func test_Dms2Dmm() {
        let dmm = Coordinate.shared.Dms2Dmm(degree: 35, minute: 21, seconds: 38.178)
        XCTAssertEqual(dmm.degree, 35)
        XCTAssertEqual(round(10000 * dmm.minute) / 10000, 21.6363)
    }
    
    func test_Dms2Deg() {
        let deg = Coordinate.shared.Dms2Deg(degree: 133, minute: 56, seconds: 45.553)
        XCTAssertEqual(round(1000000 * deg) / 1000000, 133.945987)
    }
    func test_Deg2Dms() {
        let dms = Coordinate.shared.Deg2Dms(degree: 133.945987)
        XCTAssertEqual(dms.degree, 133)
        XCTAssertEqual(dms.minute, 56)
        XCTAssertEqual(round(1000 * dms.seconds) / 1000, 45.553)
    }
    
    func test_Dmm2Deg() {
        let deg = Coordinate.shared.Dmm2Deg(degree: 35, minute: 21.6363)
        XCTAssertEqual(round(1000000 * deg) / 1000000, 35.360605)
    }
    func test_Deg2Dmm() {
        let dmm = Coordinate.shared.Deg2Dmm(degree: 35.360605)
        XCTAssertEqual(dmm.degree, 35)
        XCTAssertEqual(round(10000 * dmm.minute) / 10000, 21.6363)
    }

    static var allTests = [
        ("test_Dmm2Dms", test_Dmm2Dms),
        ("test_Dms2Dmm", test_Dms2Dmm),
        ("test_Dms2Deg", test_Dms2Deg),
        ("test_Deg2Dms", test_Deg2Dms),
        ("test_Dmm2Deg", test_Dmm2Deg),
        ("test_Deg2Dmm", test_Deg2Dmm)
    ]
}
