// MARK: - UserDefaults

import Foundation

extension UserDefaults: KeyValueStore {
    
    public subscript(key: String) -> Any? {
        
        get { value(forKey: key) }
        
        set { set(newValue, forKey: key) }
        
    }
    
}
