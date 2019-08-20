// MARK: - Field

public struct Field<Name, Value> where Name: Hashable {

    private let name: Name
    
    private let store: AnyKeyValueStore<Name, Value>
    
    public init<S>(name: Name, store: S)
    where
        S: KeyValueStore,
        S.Key == Name,
        S.Value == Value {
            
        self.name = name
            
        self.store = AnyKeyValueStore(store)
            
    }
    
}

extension Field {
    
    public var wrappedValue: Value? {
        
        get { store[name] }
        
        nonmutating set { store[name] = newValue }
        
    }
    
}
