//
//  MediaPlayerViewController.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright (c) 2019 Alejandro Melo Domínguez. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MediaPlayerDisplayLogic: class {
    func closeMediaPlayer(viewModel: MediaPlayer.CloseViewModel?)
}

class MediaPlayerViewController: UIViewController, MediaPlayerDisplayLogic {
    var interactor: MediaPlayerBusinessLogic?
    var router: (NSObjectProtocol & MediaPlayerRoutingLogic & MediaPlayerDataPassing)?

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: Setup

    private func setup() {
        let viewController = self
        let interactor = MediaPlayerInteractor()
        let presenter = MediaPlayerPresenter()
        let router = MediaPlayerRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: Routing

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBlurEffect()
    }

    // MARK: Actions
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        closeMediaPlayer(viewModel: nil)
    }
    
    // MARK: Layout
    func setupBlurEffect() {
        // Background blur yeeey
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds

        view.addSubview(blurEffectView)
        view.sendSubviewToBack(blurEffectView)
    }

    func closeMediaPlayer(viewModel: MediaPlayer.CloseViewModel?) {
        router?.dismissPopup(animated: true)
    }
}
