//
//  ConfigureURL.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 20/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import Foundation

class ConfigureURL {
    class func configureURL(searchKeyword: String) -> URLRequest {
        var searchURL : String = "https://www.googleapis.com/customsearch/v1?key=AIzaSyDGmUruqRXGgaHKWuxXyMlKE7NGnxuX2Is&cx=017576662512468239146:omuauf_lfve&q="
        searchURL.append(searchKeyword) // add keyword to search
        let url = URL(string: searchURL)
        var urlrequest : URLRequest = URLRequest(url: url!)
        urlrequest.httpMethod = "GET"
        urlrequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return urlrequest
    }
}
