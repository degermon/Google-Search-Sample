//
//  FillArrays.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 20/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import Foundation

class FillArrays {
    
    static func fillArrays() {
        TableViewCell.title.removeAll() // clean array
        for item in SortJSON.arrayOfInstances {
            TableViewCell.title.append(item.title)
        }
        SortJSON.arrayOfInstances.removeAll()
    }
}
