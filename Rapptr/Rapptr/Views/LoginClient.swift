//
//  LoginClient.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation
import SwiftUI
/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request here to login.
 *
 * 2) Using the following endpoint, make a request to login
 *    URL: http://dev.rapptrlabs.com/Tests/scripts/login.php
 *
 * 3) Don't forget, the endpoint takes two parameters 'email' and 'password'
 *
 * 4) email - info@rapptrlabs.com
 *   password - Test123
 *
 */

class LoginClient {
    func login(email: String, password: String, completion: @escaping (String) -> Void, error errorHandler: @escaping (String?) -> Void) {
   
    let urlString = "http://dev.rapptrlabs.com/Tests/scripts/login.php"
    let session = URLSession.shared
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)

    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in
        if let data = data{
            do{
                let json = try JSONSerialization.jsonObject(with: data)
                print(json)
            }
            catch {
                print(error)
            }
        }

    })
    }
}

