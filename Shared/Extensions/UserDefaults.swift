//
//  UserDefaults.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/17/21.
//

import Foundation

extension UserDefaults {
//  stores codable object to the user default
    func storeCodableObjc<T:Codable>(data: T?,forKey key: String){
        let encoded = try? JSONEncoder().encode(data)
        set(encoded,forKey: key)
    }
    
    //fetches codable object from the user default
    func fetchCodableObjc<T:Codable>(dataType: T.Type,key: String)->T?{
        guard let fetchedData = data(forKey: key) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: fetchedData)
    }
}
