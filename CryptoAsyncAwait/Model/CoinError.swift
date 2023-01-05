//
//  CoinError.swift
//  CryptoAsyncAwait
//
//  Created by Stephan Dowless on 1/5/23.
//

import Foundation

enum CoinError: Error, LocalizedError {
    case invalidURL
    case serverError
    case invalidData
    case unkown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return ""
        case .serverError:
            return "There was an error with the server. Please try again later"
        case .invalidData:
            return "The coin data is invalid. Please try again later"
        case .unkown(let error):
            return error.localizedDescription
        }
    }
}
