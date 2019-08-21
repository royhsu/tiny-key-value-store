// MARK: - UserDefaults

import Foundation

extension UserDefaults: KeyValueStore {
    
    public subscript(key: String) -> Any? {
        
        get { return value(forKey: key) }
        
        set { set(newValue, forKey: key) }
        
    }
    
}
