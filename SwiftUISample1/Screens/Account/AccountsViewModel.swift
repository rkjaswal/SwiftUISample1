//
//  AccountsViewModel.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

@MainActor final class AccountsViewModel: ObservableObject {

    // MARK: - Properties

    private let accountsApiService: AccountsApiService

    @Published private(set) var accounts: [AccountViewModel] = []

    // MARK: - Initialization

    init(accountsApiService: AccountsApiService) {
        self.accountsApiService = accountsApiService
    }

    // MARK: - Public Methods

    func getAccounts() {
        Task {
            do {
                accounts = try await accountsApiService.getAccounts()
                    .map(AccountViewModel.init)
            } catch {
                print("Unable to get accounts \(error)")
            }
        }
    }
}
