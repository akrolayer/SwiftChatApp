//
//  AnimationLib.swift
//  chatApp
//
//  Created by akrolayer on 2020/06/11.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import Foundation
import Lottie

class AnimationLib{
    func startAnimation(animationView:AnimationView,viewController:UIViewController){
        let view = viewController.view
        let animation = Animation.named("loading")
        animationView.frame = CGRect(x: 0, y: 0, width: (view?.frame.size.width)!, height: (view?.frame.size.height)!/1.5)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()

        view?.addSubview(animationView)
    }

    func stopAnimation(animationView:AnimationView){
        animationView.removeFromSuperview()
    }
}
