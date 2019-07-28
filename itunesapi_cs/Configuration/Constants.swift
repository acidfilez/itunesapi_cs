//
//  Constants.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

import Foundation

struct Constants {
    struct API {
        static let searchURL = URL(string: "https://itunes.apple.com/search?mediaType=music")!
        static let resultsPerPage = 20

        static let detailsURL = URL(string: "https://itunes.apple.com/lookup?entity=song")! // &id=collectionId
    }
}
