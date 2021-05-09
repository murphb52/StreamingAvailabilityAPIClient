//
//  Dictionary+Additions.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

extension Dictionary where Key == String, Value == Any {
    func tryConvertValuesToStrings() -> [String: String] {
        compactMapValues { (value) -> String? in
            if let string = value as? String {
                return string
            }

            if let int = value as? Int {
                return String(int)
            }

            return nil
        }
    }
}
