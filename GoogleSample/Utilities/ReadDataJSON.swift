//
//  ReadDataJSON.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 20/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import Foundation

class ReadDataJSON {
    class func readDataJSON(urlrequest: URLRequest, session: URLSession, completion: @escaping ()->(Void)) {
    let task = session.dataTask(with: urlrequest, completionHandler: {
        /*[weak self]*/ (data: Data?, response: URLResponse?, error: Error?) -> Void in
        // Parse the data in the response and use it
        guard let data = data else {
            return
        } 
        guard let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
            return
        }
        SortJSON.sortData(result: json)
        completion()
    })
    task.resume()
    }
}
