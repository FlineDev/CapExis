@testable import CapExis
import XCTest

final class EncryptedStringTests: XCTestCase {
    func testInitAndPlaintext() {
        let plaintexts: [String] = [
            "",                                 // empty plaintext
            " \t \n ",                          // blank plaintext
            "p",                                // short plaintext
            "plaintext",                         // medium plaintext
            "This plaintext is very long!",      // long plaintext
            "Amazing ✨ Fun 😄 Love ❤️"         // plaintext including emoji
        ]

        let keys: [String] = [
            "",                                 // empty key
            " \t \n ",                          // blank key
            "p",                                // short key
            "key",                              // medium key
            "This key is very long!",           // long key
            "Amazing ✨ Fun 😄 Love ❤️"         // key including emoji
        ]

        for plaintext in plaintexts {
            for key in keys {
                let alteredKey = key + String(randomWithLength: 3, allowedCharactersType: .alphaNumeric)
                let encryptedString = try! EncryptedString(plaintext, key: key)

                XCTAssertEqual(try! encryptedString.plaintext(decryptingWithKey: key), plaintext)
                XCTAssertNil(try! encryptedString.plaintext(decryptingWithKey: alteredKey))
            }
        }
    }
}
