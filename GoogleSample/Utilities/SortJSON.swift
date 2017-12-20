//
//  SortJSON.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 20/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import Foundation

class SortJSON {
    
    static var arrayOfInstances : [StoredData] = []
    
    static func sortData(result: Any) {
        guard let data = result as? Dictionary<String, Any> else {
            return
        }
        //print(data)
        guard let array = data["items"] as? Array<Dictionary<String, Any>> else {
            return
        }
         
        for item in array {
            let instance = StoredData()

            if let title = item["title"] as? String { // differs from htmlTitle
                instance.title = title
            }
                arrayOfInstances.append(instance)
            }
        FillArrays.fillArrays()
        }
    }

