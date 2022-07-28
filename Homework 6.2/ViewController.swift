//
//  ViewController.swift
//  Homework 6.2
//
//  Created by Дмитрий Соколовский on 6.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Public properties
    
    let circleViewWidth: CGFloat = 50
    let circleViewHeight: CGFloat = 50
    let step = CGFloat(15)
    let edge: CGFloat = 40
    
    var minY: CGFloat = 0
    var minX: CGFloat = 0
    var maxY: CGFloat = 0
    var maxX: CGFloat = 0
    
    // MARK: IBOutlets
    
    
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var circleView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSubviews()
    }
    
    // MARK: Public methods
    
    func setupSubviews() {
        let view = self.view.bounds
        let superViewWidth = view.width
        let superViewHeight = view.height
        
        minX = edge
        minY = edge
        maxY = superViewHeight - circleViewHeight - edge
        maxX = superViewWidth - circleViewWidth - edge
        
        circleView.frame = CGRect(x: superViewWidth / 2 - circleViewWidth / 2,
                                  y: superViewHeight / 2 - circleViewHeight / 2,
                                  width: circleViewWidth,
                                  height: circleViewHeight)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = circleViewHeight / 2
    }
        // MARK: IBAction
        
    @IBAction func upButtonPressed(_ sender: UIButton) {
        let newY = max(circleView.frame.origin.y - step, minY)
        circleView.frame.origin.y = newY
    }
    @IBAction func leftButtonPressed(_ sender: Any) {
        let newX = max(circleView.frame.origin.x - step, minX)
        circleView.frame.origin.x = newX
    }
    @IBAction func rightButtonPressed(_ sender: Any) {
        let newX = min(circleView.frame.origin.x + step, maxX)
        circleView.frame.origin.x = newX
    }
    @IBAction func downButtonPressed(_ sender: Any) {
        let newY = min(circleView.frame.origin.y + step, maxY)
        circleView.frame.origin.y = newY
    }
}
  
  


  

