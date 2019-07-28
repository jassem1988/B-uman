//
//  WebViewController.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/26/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    //Properties: -
    
    var webView: WKWebView!
    var url: String!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let convertedURL = URL(string: url)!
        webView.load(URLRequest(url: convertedURL))
        webView.allowsBackForwardNavigationGestures = true
    }
    


}
