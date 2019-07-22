import Foundation

struct CapExisUnkeyedEncodingContainer: UnkeyedEncodingContainer {
    let encoder: CapExisEncoder

    var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    var count: Int {
        fatalError() // TODO: not yet implemented
    }

    mutating func encodeNil() throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Bool) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: String) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Double) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Float) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int8) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int16) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int32) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: Int64) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt8) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt16) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt32) throws {
        // TODO: not yet implemented
    }

    mutating func encode(_ value: UInt64) throws {
        // TODO: not yet implemented
    }

    mutating func encode<T>(_ value: T) throws where T : Encodable {
        // TODO: not yet implemented
    }

    mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        fatalError() // TODO: not yet implemented
    }

    mutating func nestedUnkeyedContainer() -> UnkeyedEncodingContainer {
        fatalError() // TODO: not yet implemented
    }

    mutating func superEncoder() -> Encoder {
        fatalError() // TODO: not yet implemented
    }
}
