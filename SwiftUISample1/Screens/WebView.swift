import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest
    private var webView: WKWebView?

    init(request: URLRequest) {
        self.webView = WKWebView()
        self.request = request
    }

    func makeUIView(context: Context) -> WKWebView {
        return webView!
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.navigationDelegate = context.coordinator
        uiView.load(request)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let host = navigationAction.request.url?.host {

                var response = navigationAction.request.url?.absoluteString

                if ((response?.contains("lowell://login/success")) != nil) {
                    print(response)
                }

                if (host != "www.google.com") && (navigationAction.navigationType == .linkActivated) {
                    UIApplication.shared.open(navigationAction.request.url!)
                    decisionHandler(.cancel)
                    return
                }
            }
            decisionHandler(.allow)
        }
    }

}
