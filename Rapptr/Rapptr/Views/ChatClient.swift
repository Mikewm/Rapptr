//
//  ChatClient.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request to fetch chat data used in this app.
 *
 * 2) Using the following endpoint, make a request to fetch data
 *    URL: http://dev.rapptrlabs.com/Tests/scripts/chat_log.php
 *
 */




@available(iOS 13.0.0, *)
@available(iOS 15.0, *)

enum NetworkError: Error {
    case badUrl
    case invalidData
    case decodingError
}
struct Constants {
    
    struct Urls {
        
        static func topMessages(by source: String) -> URL? {
            return URL(string: " http://dev.rapptrlabs.com/Tests/scripts/chat_log.php")
        }
                
        static let url: URL? = URL(string: "http://dev.rapptrlabs.com/Tests/scripts/chat_log.php")
    }
    
}

class ChatClient {
    
    var session: URLSession?
    
 //   func fetchChatData(completion: @escaping ([Message]) -> Void, error errorHandler: @escaping (String?) -> Void) {
       
        }
  //  }

