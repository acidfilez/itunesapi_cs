//
//  DetailsBusinessLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class DetailsBusinessLogicSpy: DetailsBusinessLogic {

    var fetchAlbumDetailsCalled = false

    func fetchAlbumDetails(request: Details.Request) {
        fetchAlbumDetailsCalled = true
    }
    
}
