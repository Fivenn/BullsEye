//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Nicolas SUEUR on 14/10/2018.
//  Copyright © 2018 Nicolas SUEUR. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html",
                             textEncodingName: "UTF-8",
                             baseURL: baseURL)
            }
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
