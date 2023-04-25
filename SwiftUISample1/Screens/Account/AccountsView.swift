//
//  AccountsView.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 25/04/2023.
//

import SwiftUI

struct AccountsView: View {

    @ObservedObject var viewModel: AccountsViewModel

    var body: some View {
        NavigationView {
            List(viewModel.accounts) { account in
                AccountView(account: account)
            }
            .navigationTitle("Accounts")
        }
        .onAppear {
            viewModel.getAccounts()
        }
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView(viewModel: .init(accountsApiService: AccountApiPreviewClient()))
    }
}
