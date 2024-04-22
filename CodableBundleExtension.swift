//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Patricia D on 19/03/2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. LOCATE JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
                
        //2. CRATE PROPERTY FOR DATA
        guard let data =  try? Data(contentsOf: url) else {
            fatalError("Failet to load \(file) from bundle.")
        }
        
        //3. CREATE DECODER
        let decoder = JSONDecoder()
        
        //4. CREATE PROPERTY FOR DECOED DATA
        guard let decoderData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        //5. RETURN THE READY TO USE DATA
        return decoderData
    }
}
