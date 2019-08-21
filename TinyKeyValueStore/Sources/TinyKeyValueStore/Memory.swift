// MARK: - Memory

/// A convenient wrapper around dictionary.
/// Use this if you don't need to keep data persisntently. It's useful in testing.
public final class Memory<Key, Value> where Key: Hashable {
    
    private var storage: Dictionary<Key, Value>
    
    public init(dictionary: Dictionary<Key, Value> = [:]) {
        
        self.storage = dictionary
        
    }
    
}

// MARK: - ExpressibleByDictionaryLiteral

extension Memory: ExpressibleByDictionaryLiteral {
    
    public convenience init(dictionaryLiteral elements: (Key, Value)...) {
        
        self.init(dictionary: Dictionary(uniqueKeysWithValues: elements))
        
    }
    
}

// MARK: - KeyValueStore

extension Memory: KeyValueStore {
    
    public subscript(key: Key) -> Value? {
        
        get { storage[key] }
        
        set { storage[key] = newValue }
        
    }
    
}
