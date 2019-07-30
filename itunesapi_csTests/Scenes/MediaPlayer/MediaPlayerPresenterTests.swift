//
//  MediaPlayerPresenterTests.swift
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

class MediaPlayerPresenterTests: XCTestCase {
    // MARK: Subject under test

    var sut: MediaPlayerPresenter!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupMediaPlayerPresenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupMediaPlayerPresenter() {
        sut = MediaPlayerPresenter()
    }

    // MARK: Tests
    
}
