//
//  SearchPresenterTests.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright (c) 2019 Alejandro Melo Domínguez. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import itunesapi_cs
import XCTest

class SearchPresenterTests: XCTestCase {
    // MARK: Subject under test

    var sut: SearchPresenter!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupSearchPresenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupSearchPresenter() {
        sut = SearchPresenter()
    }

    // MARK: Tests

//    func testPresentSomething() {
//        // Given
//        let spy = SearchDisplayLogicSpy()
//        sut.viewController = spy
//        let response = Search.Something.Response()
//
//        // When
//        sut.presentSomething(response: response)
//
//        // Then
//        XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
//    }
}
