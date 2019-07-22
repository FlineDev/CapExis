import Foundation

public struct CapExisDecoder: Decoder {
    public var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    public var userInfo: [CodingUserInfoKey : Any] {
        fatalError() // TODO: not yet implemented
    }

    public func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        KeyedDecodingContainer(CapExisKeyedDecodingContainer<Key>(decoder: self))
    }

    public func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        CapExisUnkeyedDecodingContainer(decoder: self)
    }

    public func singleValueContainer() throws -> SingleValueDecodingContainer {
        CapExisSingleValueDecodingContainer(decoder: self)
    }
}
