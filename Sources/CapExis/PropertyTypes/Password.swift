import CryptoSwift
import Foundation
import HandySwift

/// A one-way hash wrapper to use for storing passwords securely.
public struct Password: Codable {
    private let hash: String
    private let salt: String

    /// Initializes a Password from a given password String.
    ///
    /// - NOTE: Automatically generates an 8-16 characters long salt and calculates a hash using the Scrypt algorithm with sensible parameters.
    public init(_ password: String) throws {
        let saltLength: Int = 16 + Int(randomBelow: 8)!
        let salt = String(randomWithLength: saltLength, allowedCharactersType: .alphaNumeric)

        self.hash = try Scrypt(password: password, salt: salt).calculateString()
        self.salt = salt
    }

    public func verify(password: String) throws -> Bool {
        let hashOfPasswordToVerify = try Scrypt(password: password, salt: salt).calculateString()
        return hash == hashOfPasswordToVerify
    }
}
