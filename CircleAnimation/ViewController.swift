//
//  ViewController.swift
//  CircleAnimation
//
//  Created by Артур Фомин on 21.09.2022.
//

import UIKit

//MARK: - Direction enum

enum Direction {
    case down
    case right
    case up
    case left
}

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: - var/let
    
    var circle = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    var direction: Direction = .down
    let step: CGFloat = 100
    var condition = false
    
    //MARK: - Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle.backgroundColor = .systemPink
        circle.layer.cornerRadius = circle.frame.height/2
        view.addSubview(circle)
    }

    //MARK: - IBActions
    
    @IBAction func startPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func stopPressed(_ sender: UIButton) {
        
    }
    
    //MARK: - functions
    
    private func moveCircle() {
        condition = true
        if condition {
            self.startButton.isEnabled = false
        }
        UIView.animate(withDuration: 0.3) {
            self.defineMove()
        } completion: { _ in
            if self.condition {
            self.moveCircle()
            }
        }
    }
    
    private func defineMove() {
        switch direction {
        case .down:
                self.circle.frame.origin.y += step
                self.direction = .right
                return
        case .right:
                self.circle.frame.origin.x += step
                self.direction = .up
                return
        case .up:
                    self.circle.frame.origin.y -= step
                    self.direction = .left
                    return
        case .left:
                self.circle.frame.origin.x -= step
                self.direction = .down
                return
        }
    }
}

