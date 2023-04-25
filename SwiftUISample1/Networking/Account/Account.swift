//
//  Account.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

struct Account: Codable {
    //let id: Int
    let companyName: String
    let accountReference: String
    let outstandingBalance: Decimal
}

protocol AccountPresentable {

    // MARK: - Properties

    var companyName: String { get }
    var accountReference: String { get }
    var outstandingBalance: String { get }

}
