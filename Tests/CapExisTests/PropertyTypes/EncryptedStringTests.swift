import CryptoKit
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
                XCTAssertThrowsError(try encryptedString.plaintext(decryptingWithKey: alteredKey)) { error in
                    XCTAssertEqual(error as! CryptoKitError, CryptoKitError.authenticationFailure)
                }
            }
        }
    }
}

extension CryptoKitError: Equatable {
    public static func ==(lhs: CryptoKitError, rhs: CryptoKitError) -> Bool {
        switch (lhs, rhs) {
        case (CryptoKitError.authenticationFailure, CryptoKitError.authenticationFailure),
             (CryptoKitError.incorrectKeySize, CryptoKitError.incorrectKeySize),
             (CryptoKitError.incorrectParameterSize, CryptoKitError.incorrectParameterSize),
             (CryptoKitError.underlyingCoreCryptoError, CryptoKitError.underlyingCoreCryptoError):
            return true

        default:
            return false
        }
    }
}
