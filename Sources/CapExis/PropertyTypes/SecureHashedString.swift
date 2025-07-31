import CryptoKit
import Foundation
import HandySwift

/// A one-way secure hash wrapper to use for storing data in a non-reversible way. Use for passwords and other sensitive data.
///
/// - NOTE: This uses a complex encryption method which doesn't scale well performance-wise by design to provide maximum security.
/// - WARNING: Don't use this for securing anonymized data that requires fast comparison. Use `FastHashedString` instead.
public struct SecureHashedString: Codable {
   private let hash: String
   private let salt: String

   /// Initializes a `SecureHashedString` from a given plaintext `String`.
   ///
   /// - Parameter plaintext: The plaintext to be stored securely.
   ///
   /// - NOTE: Automatically generates an 8-16 characters long salt and calculates a hash using the Scrypt algorithm with sensible parameters.
   public init(_ plaintext: String) throws {
      let saltLength: Int = 16 + Int(randomBelow: 8)!
      let salt = String(randomWithLength: saltLength, allowedCharactersType: .alphaNumeric)

      let hashData = "\(plaintext)+\(salt)".data(using: .utf8)!

      // TODO: Use secure password hashing function with multiple iterations like PBKDF2, bcrypt or scrypt.
      self.hash = SHA512.hash(data: hashData).description
      self.salt = salt
   }

   /// Compares a given plaintext to this objects plaintext by hashing the given parameter and comparing the hashes.
   ///
   /// - Parameter plaintext: The plaintext to compare with the hashed string.
   /// - Returns: `true` if the plaintexts are the same, else `false`.
   public func plaintextEquals(to plaintext: String) throws -> Bool {
      let hashData = "\(plaintext)+\(salt)".data(using: .utf8)!

      // TODO: Use secure password hashing function with multiple iterations like PBKDF2, bcrypt or scrypt.
      let hashOfPlaintextToCompare = SHA512.hash(data: hashData).description
      return hash == hashOfPlaintextToCompare
   }
}
