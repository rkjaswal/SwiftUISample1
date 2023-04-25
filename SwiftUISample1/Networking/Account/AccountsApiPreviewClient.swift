//
//  AccountsApiPreviewClient.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

struct AccountApiPreviewClient: AccountsApiService {

    func getAccounts() async throws -> [Account] {
        guard let url = Bundle.main.url(forResource: "accountslist", withExtension: "json") else {
            fatalError("Unable to find accounts.json")
        }

        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Account].self, from: data)
    }
}
