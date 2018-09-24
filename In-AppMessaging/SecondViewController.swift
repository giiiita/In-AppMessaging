//
//  SecondViewController.swift
//  In-AppMessaging
//
//  Created by giiiita on 2018/09/25.
//  Copyright © 2018年 giiiita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate{

    let webView : UIWebView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.delegate = self
        self.webView.frame = self.view.bounds
        self.view.addSubview(self.webView)
        
        self.loadUrl()
    }
    
    func loadUrl() {
        let url: NSURL = NSURL(string: "https://firebase.google.com/docs/in-app-messaging/")!
        let request: NSURLRequest = NSURLRequest(url: url as URL)
        self.webView.loadRequest(request as URLRequest)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SecondViewController {
    //ページが読み終わったときに呼ばれる関数
    func webViewDidFinishLoad(webView: UIWebView) {
    }
    //ページを読み始めた時に呼ばれる関数
    func webViewDidStartLoad(webView: UIWebView) {
    }
}
