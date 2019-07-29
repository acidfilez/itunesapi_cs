//
//  SearchTableViewCellTests.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchTableViewCellTests: XCTestCase {

    var sut: SearchTableViewCell!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        setupView()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut.cellImageView.removeFromSuperview()
        sut.cellTrackLabel.removeFromSuperview()
        sut.cellArtistLabel.removeFromSuperview()
    }

    // MARK: - Setup
    private func setupView() {
        sut = SearchTableViewCell(frame: .zero)

        let imageView = UIImageView()
        imageView.image = nil
        sut.addSubview(imageView)
        sut.cellImageView = imageView

        let trackLabel = UILabel()
        trackLabel.text = nil
        sut.addSubview(trackLabel)
        sut.cellTrackLabel = trackLabel

        let artistLabel = UILabel()
        artistLabel.text = nil
        sut.addSubview(artistLabel)
        sut.cellArtistLabel = artistLabel
    }

    // MARK: - Tests
    func testSettingNonEmptyMediaUpdatesView() {
        // Given
        let media = Media(
            wrapperType: "wrapper type",
            artistName: "artist",
            collectionId: 1,
            collectionName: "collection name",
            kind: "kind",
            trackId: 1,
            trackName: "track name",
            trackNumber: 1,
            artwork: "",
            previewUrl: "preview url"
        )

        // When
        sut.media = media

        // Then
        XCTAssertEqual(sut.cellArtistLabel.text, media.artistName)
        XCTAssertEqual(sut.cellTrackLabel.text, media.trackName)

        // should always be nil (or the placeholder UIImage if it's set),
        // because the load is asynchronous
        XCTAssertEqual(sut.cellImageView.image, nil)
    }

    func testSettingEmptyMediaUpdatesView() {
        // Given
        sut.cellArtistLabel.text = "artist"
        sut.cellTrackLabel.text = "track"
        sut.cellImageView.image = nil

        // When
        sut.media = nil

        // Then
        XCTAssertNil(sut.cellImageView.image)
        XCTAssertNil(sut.cellArtistLabel.text)
        XCTAssertEqual(sut.cellTrackLabel.text, "Error al obtener información")
    }
}
