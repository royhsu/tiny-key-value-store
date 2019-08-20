// MARK: - KeyValueStore

public protocol KeyValueStore: AnyObject {
    
    associatedtype Key: Hashable
    
    associatedtype Value
    
    subscript(key: Key) -> Value? { get set }
    
}
