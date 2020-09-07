import CryptoKit
import Foundation
import HandySwift

/// A one-way (secure) hash wrapper to use for storing data in a non-reversible way. Use for anonymized data which requires fast comparison, like phone numbers.
///
/// - NOTE: This uses a fast encryption method which scales well performance-wise but is hackable with enough computing time (e.g. via brute-force & tables).
/// - WARNING: Don't use this for securing sensible data like passwords. Use `SecureHashedString` instead.
public struct FastHashedString: Codable {
    private let hash: String

    /// Initializes a `FastHashedString` from a given plaintext `String`.
    ///
    /// - Parameter plaintext: The plaintext to be stored securely.
    ///
    /// - NOTE: Calculates a hash using the SHA-256 algorithm.
    public init(_ plaintext: String) throws {
        let hashData = plaintext.data(using: .utf8)!
        self.hash = SHA256.hash(data: hashData).description
    }

    /// Compares a given plaintext to this objects plaintext by hashing the given parameter and comparing the hashes.
    ///
    /// - Parameter plaintext: The plaintext to compare with the hashed string.
    /// - Returns: `true` if the plaintexts are the same, else `false`.
    public func plaintextEquals(to plaintext: String) throws -> Bool {
        let hashData = plaintext.data(using: .utf8)!
        return hash == SHA256.hash(data: hashData).description
    }
}
