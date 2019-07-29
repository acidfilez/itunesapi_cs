//
//  SearchPresentationLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchPresentationLogicSpy: SearchPresentationLogic {
    var displayResultsCalled = false

    func displayResults(response: Search.Response) {
        displayResultsCalled = true
    }

    var displayMediaDetailsCalled = false

    func displayMediaDetails(response: Search.DetailsResponse) {
        displayMediaDetailsCalled = true
    }

    var displayLoadingIndicatorCalled = false

    func displayLoadingIndicator() {
        displayLoadingIndicatorCalled = true
    }
}
