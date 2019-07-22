import Foundation

struct CapExisKeyedEncodingContainer<Key: CodingKey>: KeyedEncodingContainerProtocol {
    let encoder: CapExisEncoder

    var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    mutating func encodeNil(forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Bool, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: String, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Double, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Float, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int8, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int16, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int32, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int64, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt8, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt16, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt32, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt64, forKey key: Key) throws {
        // TODO: not yet implemented
    }

    mutating func encode<T>(_ value: T, forKey key: Key) throws where T : Encodable {
        // TODO: not yet implemented
    }

    mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        fatalError() // TODO: not yet implemented
    }

    mutating func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        fatalError() // TODO: not yet implemented
    }

    mutating func superEncoder() -> Encoder {
        fatalError() // TODO: not yet implemented
    }

    mutating func superEncoder(forKey key: Key) -> Encoder {
        fatalError() // TODO: not yet implemented
    }
}
