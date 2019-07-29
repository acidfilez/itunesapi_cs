//
//  SearchBusinessLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchBusinessLogicSpy: SearchBusinessLogic {
    var startSearchCalled = false
    var startSearchQuery = ""

    func startSearch(request: Search.Request) {
        startSearchQuery = request.searchTerm
        startSearch(request: request, localResultsOnly: false)
    }

    func startSearch(request: Search.Request, localResultsOnly: Bool) {
        startSearchCalled = true
    }

    var nextPageCalled = false
    
    func nextPage(request: Search.Request) {
        nextPageCalled = true
    }

    var didSelectMediaCalled = false

    func didSelectMedia(request: Search.DetailsRequest) {
        didSelectMediaCalled = true
    }
}
