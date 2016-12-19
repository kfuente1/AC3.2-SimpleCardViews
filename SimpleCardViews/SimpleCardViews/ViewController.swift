//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Karen Fuentes on 12/17/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardFourView: Card!
    @IBOutlet weak var cardThreeView: Card!
    @IBOutlet weak var cardTwoView: Card!
    @IBOutlet weak var cardOneView: Card!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var arrayofCardValues = ["1","2","3","4","5","6","7","8","9","10", "J", "Q", "K"]
    var arrayOfImage = [#imageLiteral(resourceName: "snoopyxmas1"),#imageLiteral(resourceName: "snoopyXmas2"),#imageLiteral(resourceName: "snoopyXmas3"),#imageLiteral(resourceName: "snoopyXmas4"),#imageLiteral(resourceName: "snoopyXmas5"),#imageLiteral(resourceName: "snoopyXmas7"),#imageLiteral(resourceName: "snoopyXmas9"),#imageLiteral(resourceName: "snoopyXmas10")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingUpBackground()
        settingUpCardOne()
        settingUpCardTwo()
        settingUpCardThree()
        setupCardFour()
}
    func settingUpBackground() {
    backgroundImageView.image = #imageLiteral(resourceName: "snoopyBackground")
    backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
    backgroundImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    backgroundImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    backgroundImageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    backgroundImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    func settingUpCardOne() {
       let randomIndexForImage = Int(arc4random_uniform(UInt32(arrayOfImage.count - 1)))
        let randomCardValue = Int(arc4random_uniform(UInt32(arrayofCardValues.count - 1)))
        cardOneView.cardImage.image = arrayOfImage[randomIndexForImage]
        cardOneView.leftCardNumberLabel.text = arrayofCardValues[randomCardValue]
        cardOneView.rightCardNumberLabel.text = cardOneView.leftCardNumberLabel.text
        //CONSTRAINTS
        cardOneView.translatesAutoresizingMaskIntoConstraints = false
        cardOneView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cardOneView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        cardOneView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:40).isActive = true
        cardOneView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true

    }
    
    func settingUpCardTwo() {
        let randomIndexForImage = Int(arc4random_uniform(UInt32(arrayOfImage.count - 1)))
        let randomCardValue = Int(arc4random_uniform(UInt32(arrayofCardValues.count - 1)))
        cardTwoView.cardImage.image = arrayOfImage[randomIndexForImage]
        cardTwoView.leftCardNumberLabel.text = arrayofCardValues[randomCardValue]
        cardTwoView.rightCardNumberLabel.text = cardTwoView.leftCardNumberLabel.text
        //constraints
        cardTwoView.translatesAutoresizingMaskIntoConstraints = false
        cardTwoView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cardTwoView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        cardTwoView.leadingAnchor.constraint(equalTo: cardOneView.trailingAnchor,constant: 8).isActive = true
        cardTwoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
    }
    
    func settingUpCardThree() {
        let randomIndexForImage = Int(arc4random_uniform(UInt32(arrayOfImage.count - 1)))
        let randomCardValue = Int(arc4random_uniform(UInt32(arrayofCardValues.count - 1)))
        cardThreeView.cardImage.image = arrayOfImage[randomIndexForImage]
        cardThreeView.leftCardNumberLabel.text = arrayofCardValues[randomCardValue]
        //constraints
        cardThreeView.rightCardNumberLabel.text = cardThreeView.leftCardNumberLabel.text
        cardThreeView.translatesAutoresizingMaskIntoConstraints = false
        cardThreeView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cardThreeView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        cardThreeView.topAnchor.constraint(equalTo:cardOneView.bottomAnchor, constant: 8).isActive = true
        cardThreeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    }
    
    func setupCardFour () {
        let randomIndexForImage = Int(arc4random_uniform(UInt32(arrayOfImage.count - 1)))
        let randomCardValue = Int(arc4random_uniform(UInt32(arrayofCardValues.count - 1)))
        cardFourView.cardImage.image = arrayOfImage[randomIndexForImage]
        cardFourView.leftCardNumberLabel.text = arrayofCardValues[randomCardValue]
        cardFourView.rightCardNumberLabel.text = cardFourView.leftCardNumberLabel.text
        //constraints 
        cardFourView.translatesAutoresizingMaskIntoConstraints = false
        cardFourView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cardFourView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        cardFourView.topAnchor.constraint(equalTo:cardTwoView.bottomAnchor, constant: 8).isActive = true
        cardFourView.leadingAnchor.constraint(equalTo: cardThreeView.trailingAnchor,constant: 8).isActive = true
    }
}

