//
//  SearchWorkerTests.swift
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

class SearchWorkerTests: XCTestCase {
    // MARK: Subject under test

    var sut: SearchWorker!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupSearchWorker()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupSearchWorker() {
        sut = SearchWorker()
    }

    // MARK: Tests

    func testSomething() {
        // Given

        // When

        // Then
    }
}
