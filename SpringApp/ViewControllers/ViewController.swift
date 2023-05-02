//
//  ViewController.swift
//  SpringApp
//
//  Created by Александр Полочанин on 2.05.23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets Properties
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var nameLabel: SpringLabel!
    @IBOutlet var curveLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var delayLabel: SpringLabel!
    
    // MARK: - Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Life Cycle View Controller
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "name: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
    }

    // MARK: - IBAction Methods
    @IBAction func runSpringAnimation(_ sender: SpringButton) {

        nameLabel.text = "name: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Next \(animation.name)", for: .normal)
        
    }
}


