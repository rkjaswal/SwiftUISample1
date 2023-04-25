//
//  AccountView.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import SwiftUI

struct AccountView: View {

    // MARK: - Properties

    let account: AccountPresentable

    // MARK: - View

    var body: some View {

        VStack(alignment: .leading) {
            Text(account.companyName)
                .font(.title)
            Text(account.accountReference)
            Text(account.outstandingBalance)
        }
    }
}

struct AccountView_Previews: PreviewProvider {

    private struct Account1Presentable: AccountPresentable {
        var companyName: String {
            "HSBC"
        }

        var accountReference: String {
            "123456789"
        }

        var outstandingBalance: String {
            "20.34"
        }
    }

    private struct Account2Presentable: AccountPresentable {
        var companyName: String {
            "O2"
        }

        var accountReference: String {
            "987654321"
        }

        var outstandingBalance: String {
            "987.34"
        }
    }

    static var previews: some View {
        VStack {
            AccountView(account: Account1Presentable())
            AccountView(account: Account2Presentable())
        }
    }
}
