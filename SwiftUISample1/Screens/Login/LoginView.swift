//
//  LoginView.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 21/04/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        WebView(request: viewModel.authorizeUrl)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel())
    }
}
