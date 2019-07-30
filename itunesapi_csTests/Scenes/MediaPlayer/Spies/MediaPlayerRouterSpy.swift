//
//  MediaPlayerRouterSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs

class MediaPlayerRouterSpy: MediaPlayerRouter {

    var dismissPopupCalled = false

    override func dismissPopup(animated: Bool) {
        dismissPopupCalled = true
    }
    
}
