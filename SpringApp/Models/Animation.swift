//
//  Animtion.swift
//  SpringApp
//
//  Created by Александр Полочанин on 2.05.23.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
    
        Animation(
            name: SpringAnimation.shared.animationNames.randomElement() ?? "Pop",
            curve: SpringAnimation.shared.animationCurves.randomElement() ?? "easeIn",
            force: Double.random(in: 0.0...2.0),
            duration: Double.random(in: 0.0...2.0),
            delay: Double.random(in: 0.0...2.0)
        )
        
    }
}
