//
//  AccountsApiClient.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

final class AccountsApiClient: AccountsApiService {

    func getAccounts() async throws -> [Account] {
        let url = URL(string: "https://cdn.cocoacasts.com/2354d51028d53fcc00ceb0c66f25475d5c79bff0/notes.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Account].self, from: data)    }
}
