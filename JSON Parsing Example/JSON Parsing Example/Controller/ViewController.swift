//
//  ViewController.swift
//  JSON Parsing Example
//
//  Created by Veer Patel on 12/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=\(Contstants.apiKey)"
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil {
                
                let decoder = JSONDecoder()
                
                do {
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    print(newsFeed)
                } catch {
                    print("Error in JSON parsing", error)
                }
                
                
            }
            
        }
        
        dataTask.resume()
        
    }
    
}

