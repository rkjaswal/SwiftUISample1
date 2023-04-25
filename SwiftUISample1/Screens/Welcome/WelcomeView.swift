//
//  WelcomeView.swift
//  SwiftUISample1
//
//  Created by Rajeev Jaswal on 21/04/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Login", destination: LoginView(viewModel: LoginViewModel()).navigationBarBackButtonHidden(false))
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(25)
                NavigationLink("Register", destination: RegisterView())
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(25)
                }
            }
        }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
