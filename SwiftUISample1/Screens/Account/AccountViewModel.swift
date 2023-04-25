//
//  AccountViewModel.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

struct AccountViewModel: Identifiable {

    // MARK: - Properties

    private let account: Account

    var id: Int {
        Int(account.accountReference)!
    }

    // MARK: - Initialization

    init(account: Account) {
        self.account = account
    }
}

extension AccountViewModel : AccountPresentable {

    var companyName: String {
        account.companyName
    }

    var accountReference: String {
        account.accountReference
    }

    var outstandingBalance: String {
        String(format: "%.2f", account.outstandingBalance as CVarArg)
    }
}
