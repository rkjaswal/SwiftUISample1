import Foundation

final class LoginViewModel: ObservableObject {

    var authorizeUrl = "https://identityservice.lowellgroup.co.uk/connect/authorize?response_type=code&client_id=lfl.mobile.ios&state=appstate&redirect_uri=lowell%3A%2F%2Flogin%2Fsuccess&scope=openid%20profile%20email%20offline_access%20identity.account.manage%20lfl.mobile.ios%20lfl.api.gateway%20lfl.api.account%20lfl.api.payment%20lfl.api.affordability%20scope.caseflowapi%20scope.bankaccountchecker%20api.documents%20api.transunion&nounce=123&code_challenge=x-Ja9AqmfMbqkBkpO3rmDo5kTo-9RCU8_BQtH_1c1XA&code_challenge_method=S256"

    func login() {
        var url = URL(string: authorizeUrl)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { (data, response, error) in
            print(data)
            print(response)
            print(error)
        }
        task.resume()
    }
}

