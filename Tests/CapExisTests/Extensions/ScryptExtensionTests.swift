@testable import CapExis
import CryptoSwift
import XCTest

class ScryptExtensionTests: XCTestCase {
    func testInitAndCalculate() {
        let password = "myPassword123"
        let salt = "aBcDeFg"

        // retrieved on https://8gwifi.org/scrypt.jsp with N 16384, R 8, P 1 and Length 64
        let expectedHash = "qYA2T54S2Wrc/iG43ygHruS8nScw2yl9e8kZ+Ee9vRN8kVn88jZchPREX/LFaWRh+Kw49+JVcxE46wtvdAxEhw=="

        XCTAssertEqual(try Scrypt(password: password, salt: salt).calculateBase64String(), expectedHash)
    }
}
