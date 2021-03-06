//
//  NetViewController.swift
//  Athletes
//
//  Created by La Cantouch on 2017/6/18.
//  Copyright © 2017年 ChiaYu. All rights reserved.
//

import UIKit

class NetViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    var sportUrl: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = sportUrl+"官網"
        if sportUrl == "NBA" {
            sportUrl = "https://nba.udn.com/nba/index#"
            
        } else if sportUrl == "MLB" {
            sportUrl = "https://www.mlb.com"
            
        } else if sportUrl == "NHL" {
            
            sportUrl = "https://www.nhl.com"
            
        } else{
            sportUrl = "https://www.mlssoccer.com"
        }

        
        
        
        webView.delegate = self
        if let url = URL(string: sportUrl) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
