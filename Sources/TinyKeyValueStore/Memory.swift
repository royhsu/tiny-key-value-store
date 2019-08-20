// MARK: - Memory

public final class Memory<Key, Value> where Key: Hashable {
    
    private var dictionary: Dictionary<Key, Value>
    
    public init(dictionary: Dictionary<Key, Value> = [:]) {
        
        self.dictionary = dictionary
        
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
        
        get { dictionary[key] }
        
        set { dictionary[key] = newValue }
        
    }
    
}