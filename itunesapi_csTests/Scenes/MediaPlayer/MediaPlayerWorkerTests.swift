//
//  MediaPlayerWorkerTests.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright (c) 2019 Alejandro Melo Domínguez. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import itunesapi_cs
import XCTest

class MediaPlayerWorkerTests: XCTestCase {
    // MARK: Subject under test

    var sut: MediaPlayerWorker!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupMediaPlayerWorker()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupMediaPlayerWorker() {
        sut = MediaPlayerWorker()
    }

    // MARK: Test doubles

    // MARK: Tests

    func testSomething() {
        // Given

        // When

        // Then
    }
}