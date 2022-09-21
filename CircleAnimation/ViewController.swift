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
}

