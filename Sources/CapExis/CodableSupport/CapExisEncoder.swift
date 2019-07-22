import Foundation

public struct CapExisEncoder: Encoder {
    public var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    public var userInfo: [CodingUserInfoKey : Any] {
        fatalError() // TODO: not yet implemented
    }

    public func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        KeyedEncodingContainer(CapExisKeyedEncodingContainer<Key>(encoder: self))
    }

    public func unkeyedContainer() -> UnkeyedEncodingContainer {
        CapExisUnkeyedEncodingContainer(encoder: self)
    }

    public func singleValueContainer() -> SingleValueEncodingContainer {
        CapExisSingleValueEncodingContainer(encoder: self)
    }
}
