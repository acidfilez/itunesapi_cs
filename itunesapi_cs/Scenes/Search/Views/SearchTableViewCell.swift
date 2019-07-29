//
//  SearchTableViewCell.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

import UIKit
import AlamofireImage

class SearchTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTrackLabel: UILabel!
    @IBOutlet weak var cellArtistLabel: UILabel!

    var media: Media? = nil {
        didSet {
            cellImageView.af_cancelImageRequest()

            guard let media = media else {
                cellImageView.image = nil
                cellTrackLabel.text = "Error al obtener información"
                cellArtistLabel.text = nil
                return
            }

            cellImageView.image = nil

            if let artworkUrl = media.urlForArtwork {
                cellImageView.af_setImage(withURL: artworkUrl)
            }

            cellTrackLabel.text = media.trackName
            cellArtistLabel.text = media.artistName
        }
    }
}
