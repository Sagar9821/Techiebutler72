//
//  APIRouter.swift
//  Techiebutler72
//
//  Created by psagc on 28/05/24.
//

import Foundation

enum HTTPMethod : String {
    case get
    case post
    case put
}

protocol APIRouter {
    var path: String { get }
    var method: HTTPMethod { get }
    var body: Data? { get }
}

enum Router: APIRouter {
    case getPost
}

// MARK: - Path's
extension Router {
    var path: String {
        switch self {
        case .getPost:
            return ""
        }
    }
}

// MARK: - Method type
extension Router {
    var method: HTTPMethod {
        switch self {
        case .getPost:
            return .get
        }
    }
}


// MARK: - Body
extension Router {
    var body: Data? {
        switch self {
        case .getPost:
            return nil
        }
    }
}
