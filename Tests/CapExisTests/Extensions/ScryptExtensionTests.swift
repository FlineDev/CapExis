@testable import CapExis
import CryptoSwift
import XCTest

class ScryptExtensionTests: XCTestCase {
    func testInitAndCalculate() {
        let password = "myPassword123"
        let salt = "aBcDeFg"

        // retrieved on https://www.browserling.com/tools/scrypt with N 16384, r 8, p 1 and Output size 64
        let expectedHash = "a980364f9e12d96adcfe21b8df2807aee4bc9d2730db297d7bc919f847bdbd137c9159fcf2365c84f4445ff2c5696461f8ac38f7e255731138eb0b6f740c4487"

        XCTAssertEqual(try Scrypt(password: password.bytes, salt: salt.bytes).calculate().toHexString(), expectedHash)
    }
}
