//
//  SearchDisplayLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchDisplayLogicSpy: SearchDisplayLogic {
    var displayResultsCalled = false

    func displayResults(viewModel: Search.ViewModel) {
        displayResultsCalled = true
    }

    var displayNoResultsCalled = false

    func displayNoResults() {
        displayNoResultsCalled = true
    }

    var routeToMediaDetailsCalled = false

    func routeToMediaDetails(viewModel: Search.DetailsViewModel) {
        routeToMediaDetailsCalled = true
    }

    var hideNoResultsCalled = false

    func hideNoResults() {
        hideNoResultsCalled = true
    }

    var showLoadingIndicatorCalled = false

    func showLoadingIndicator() {
        showLoadingIndicatorCalled = true
    }

    var hideLoadingIndicatorCalled = false

    func hideLoadingIndicator() {
        hideLoadingIndicatorCalled = true
    }

}
