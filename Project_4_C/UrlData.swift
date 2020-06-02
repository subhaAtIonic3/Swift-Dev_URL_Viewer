//
//  UrlData.swift
//  Project_4_C
//
//  Created by Subhrajyoti Chakraborty on 02/06/20.
//  Copyright © 2020 Subhrajyoti Chakraborty. All rights reserved.
//

import Foundation


struct UrlData {
    var title: String
    var urlToLoad: String
    
    func getUrlRequest(for urlString: String) -> URLRequest {
        let url = URL(string: "https://" + urlString)!
        return URLRequest(url: url)
    }
}
