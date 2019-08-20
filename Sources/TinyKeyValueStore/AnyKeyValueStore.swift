// MARK: - AnyKeyValueStore

public final class AnyKeyValueStore<Key, Value> where Key: Hashable {
    
    private let _get: (Key) -> Value?
    
    private let _set: (Value?, Key) -> Void
    
    public init<S>(_ store: S)
    where
        S: KeyValueStore,
        S.Key == Key,
        S.Value == Value {
            
        self._get = { key in store[key] }
            
        self._set = { value, key in store[key] = value }
            
    }
    
}

// MARK: - KeyValueStore

extension AnyKeyValueStore: KeyValueStore {
    
    public subscript(key: Key) -> Value? {
        
        get { _get(key) }
        
        set { _set(newValue, key) }
        
    }
    
}
