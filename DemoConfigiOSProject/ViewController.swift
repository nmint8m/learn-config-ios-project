//
//  ViewController.swift
//  DemoConfigiOSProject
//
//  Created by Tam Nguyen M. on 4/30/19.
//  Copyright © 2019 Tam Nguyen M. All rights reserved.
//

import UIKit
import LKAWaveCircleProgressBar

final class ViewController: UIViewController {

    var waveCircleView: LKAWaveCircleProgressBar?

    override func viewDidLoad() {
        super.viewDidLoad()
        configBar()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        waveCircleView?.startWaveRollingAnimation()
        waveCircleView?.progress = 0.7
    }

    private func configBar() {
        let waveCircleView = LKAWaveCircleProgressBar(frame: CGRect(origin: Config.origin,
                                                          size: Config.size))

        waveCircleView.progress = 0
        view.addSubview(waveCircleView)
        self.waveCircleView = waveCircleView
    }
}

extension ViewController {
    struct Config {
        static let size: CGSize = {
            let width = UIScreen.main.bounds.width - 100
            return CGSize(width: width, height: width)
        }()

        static let origin: CGPoint = {
            let x: CGFloat = 50
            let screenSize = UIScreen.main.bounds
            let y: CGFloat = (screenSize.height - (screenSize.width - 100)) / 2
            return CGPoint(x: x, y: y)
        }()
    }
}
