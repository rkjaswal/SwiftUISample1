//
//  AccountsApiService.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 24/04/2023.
//

import Foundation

protocol AccountsApiService {

    // MARK: - Methods
    
    func getAccounts() async throws -> [Account]
}
