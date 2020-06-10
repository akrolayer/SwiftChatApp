//
//  Animation.swift
//  chatApp
//
//  Created by akrolayer on 2020/06/10.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import Foundation
import Lottie

func startAnimation(animationView:AnimationView,view:UIView){
    let animation = Animation.named("loading")
    animationView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/1.5)
    animationView.animation = animation
    animationView.contentMode = .scaleAspectFit
    animationView.loopMode = .loop
    animationView.play()
    
    view.addSubview(animationView)
}

func stopAnimation(animationView:AnimationView){
    animationView.removeFromSuperview()
}
