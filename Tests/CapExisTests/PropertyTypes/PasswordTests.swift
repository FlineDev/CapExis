@testable import CapExis
import XCTest

final class PasswordTests: XCTestCase {
    func testInitAndVerify() {
        let passwords: [String] = [
            "",                                 // empty password
            " \t \n ",                          // blank password
            "p",                                // short password
            "password",                         // medium password
            "This password is very long!",      // long password
            "Amazing ✨ Fun 😄 Love ❤️"         // password including emoji
        ]

        for password in passwords {
            let alteredPassword = password + String(randomWithLength: 3, allowedCharactersType: .alphaNumeric)
            let passwordObject = try! Password(password)

            XCTAssertTrue(try! passwordObject.verify(password: password))
            XCTAssertFalse(try! passwordObject.verify(password: alteredPassword))
        }
    }
}
