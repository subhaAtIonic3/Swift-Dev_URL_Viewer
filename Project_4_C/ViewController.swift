//
//  ViewController.swift
//  Project_4_C
//
//  Created by Subhrajyoti Chakraborty on 02/06/20.
//  Copyright © 2020 Subhrajyoti Chakraborty. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var websites = [UrlData(title: "Angular", urlToLoad: "angular.io"), UrlData(title: "React Native", urlToLoad: "reactnative.dev"), UrlData(title: "Flutter", urlToLoad: "flutter.dev"), UrlData(title: "Ionic", urlToLoad: "ionicframework.com"), UrlData(title: "Vue", urlToLoad: "vuejs.org")]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "URL Viewer"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UrlCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "WebView") as WebViewController? {
            vc.urlData = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

