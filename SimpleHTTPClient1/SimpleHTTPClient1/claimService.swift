//
//  PersonService.swift
//  SimpleHttpClient
//
//  Created by DG on 11/29/20
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import Foundation

struct Claim : Codable {
    var claimName : String
    var claimDate : String
}

class claimService {

    init(vc : ViewController) {
        viewController = vc
    }
    
    var viewController : ViewController
       
    func addClaim(cObj : Claim) {
        // Implement logic using Async HTTP client API (POST method)
        let requestUrl = "http://localhost:8020/ClaimService/add"
        var request = URLRequest(url: NSURL(string: requestUrl)! as URL)
        let jsonData : Data! = try! JSONEncoder().encode(cObj)
        //
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //
        let task = URLSession.shared.uploadTask(with: request, from: jsonData) {
            (data, response, error) in
            if let resp = data {
                // type of resp is Data
                let respStr = String(bytes: resp, encoding: .utf8)
                print("The response data sent from the server is \(respStr!)")
                //
            } else if let respError = error {
                print("Server Error : \(respError)")
            }
        }
        task.resume()
    }
        
}
