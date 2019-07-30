//
//  DetailsTableViewCellTests.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class DetailsTableViewCellTests: XCTestCase {

    var sut: DetailsTableViewCell!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        setupView()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut.trackNumberLabel.removeFromSuperview()
        sut.trackTitleLabel.removeFromSuperview()
    }

    // MARK: - Setup
    private func setupView() {
        sut = DetailsTableViewCell(frame: .zero)

        let numberLabel = UILabel()
        numberLabel.text = nil
        sut.addSubview(numberLabel)
        sut.trackNumberLabel = numberLabel

        let titleLabel = UILabel()
        titleLabel.text = nil
        sut.addSubview(titleLabel)
        sut.trackTitleLabel = titleLabel
    }

    // MARK: - Tests
    func testSettingOneDigitTrackNumberUsesTwoDigitFormat() {
        // Given
        let trackNumber = 1
        let expectedResult = "01"

        // When
        sut.trackNumber = trackNumber

        // Then
        XCTAssertEqual(sut.trackNumberLabel.text, expectedResult)
    }

    

}
