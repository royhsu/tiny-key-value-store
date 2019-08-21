// MARK: - Cache

import Foundation

/// A convenient wrapper around Foundation's NSCache.
public final class Cache<Key, Value> where Key: Hashable {
    
    private let storage = NSCache<BridgedKey, BridgedValue>()
    
    public init(dictionary: Dictionary<Key, Value>) {
        
        for (key, value) in dictionary { self[key] = value }
        
    }
    
}

// MARK: - ExpressibleByDictionaryLiteral

extension Cache: ExpressibleByDictionaryLiteral {
    
    public convenience init(dictionaryLiteral elements: (Key, Value)...) {
        
        self.init(dictionary: Dictionary(uniqueKeysWithValues: elements))
        
    }
    
}

// MARK: - KeyValueStore

extension Cache: KeyValueStore {
    
    public subscript(key: Key) -> Value? {
        
        get { storage.object(forKey: BridgedKey(rawValue: key))?.rawValue }
        
        set {
            
            let bridgedKey = BridgedKey(rawValue: key)
            
            if let newValue = newValue {
            
                storage.setObject(
                    BridgedValue(rawValue: newValue),
                    forKey: bridgedKey
                )
                
            }
            else { storage.removeObject(forKey: bridgedKey) }
            
        }
        
    }
    
}

// MARK: - BridgedKey

extension Cache {
    
    private final class BridgedKey: NSObject, RawRepresentable {
        
        let rawValue: Key
        
        init(rawValue: Key) { self.rawValue = rawValue }
        
        override func isEqual(_ object: Any?) -> Bool {
            
            guard let bridgedKey = object as? BridgedKey else { return false }
            
            return rawValue == bridgedKey.rawValue
            
        }
        
        override var hash: Int { return rawValue.hashValue }
        
    }
    
}

// MARK: - BridgedValue

extension Cache {
    
    private final class BridgedValue: NSObject, RawRepresentable {
        
        let rawValue: Value
        
        init(rawValue: Value) { self.rawValue = rawValue }
        
    }
    
}

