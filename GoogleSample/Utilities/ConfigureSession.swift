//
//  ConfigureSession.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 20/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import Foundation

class ConfigureSession {
    class func configureSession() -> URLSession {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        
        return session
    }
}
