//
//  DetailsTableViewCell.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    @IBOutlet weak var trackNumberLabel: UILabel!
    @IBOutlet weak var trackTitleLabel: UILabel!

    var trackNumber: Int? {
        didSet {
            guard let number = trackNumber else {
                trackNumberLabel.text = "00"
                return
            }

            var numberStr = String(number)
            if numberStr.count == 1 {
                numberStr = "0" + numberStr
            }

            trackNumberLabel.text = numberStr
        }
    }

    var trackTitle: String? {
        didSet {
            trackTitleLabel.text = trackTitle ?? "No se pudo obtener el título de esta canción."
        }
    }
}
