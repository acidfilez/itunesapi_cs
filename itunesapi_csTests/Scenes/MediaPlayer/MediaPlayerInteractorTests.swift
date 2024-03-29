//
//  MediaPlayerInteractorTests.swift
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

class MediaPlayerInteractorTests: XCTestCase {
    // MARK: Subject under test

    var sut: MediaPlayerInteractor!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupMediaPlayerInteractor()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupMediaPlayerInteractor() {
        sut = MediaPlayerInteractor()
    }

    // MARK: Tests

    func testPlayMedia() {
        // Given
        let media = Media(
            wrapperType: "track",
            artistName: "Various Artists",
            collectionId: 1,
            collectionName: "The Lion King",
            kind: "soundtrack",
            trackId: 1,
            trackName: "Circle of Life",
            trackNumber: 1,
            artwork: "https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/59/f2/cb/59f2cbb4-6800-2298-8de5-070caae3ec6a/00050086085873.rgb.jpg/100x100w.jpg",
            previewUrl: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/53/bc/1c/53bc1c62-87a6-b255-7888-62e00972b18e/mzaf_1500676314994411111.plus.aac.p.m4a"
        )
        let presenterSpy = MediaPlayerPresentationLogicSpy()
        sut.presenter = presenterSpy
        let request = MediaPlayer.PlayRequest(media: media)

        // When
        sut.playMedia(request: request)

        // Then
        XCTAssertTrue(presenterSpy.presentPlaybackStatusCalled)
    }
}
