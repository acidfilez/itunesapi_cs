//
//  MediaPlayerViewControllerTests.swift
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

class MediaPlayerViewControllerTests: XCTestCase {
    // MARK: Subject under test
    var sut: MediaPlayerViewController!
    var window: UIWindow!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setupMediaPlayerViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: Test setup
    
    func setupMediaPlayerViewController() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "MediaPlayerViewController", bundle: bundle)
        sut = (storyboard.instantiateInitialViewController() as! MediaPlayerViewController)
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Tests
    
}
