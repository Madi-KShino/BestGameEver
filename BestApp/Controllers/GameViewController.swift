//
//  GameViewController.swift
//  BestApp
//
//  Created by Darin Marcus Armstrong on 7/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    
    
    var playerImage = #imageLiteral(resourceName: "cross")
    
    var buttons: [UIButton] {
        return [buttonOne, buttonTwo, buttonThree, buttonFour, buttonFive, buttonSix, buttonSeven, buttonEight, buttonNine]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func checkForWinner(player: String) {
        if buttonOne.imageView?.image == buttonTwo.imageView?.image && buttonOne.imageView?.image == buttonThree.imageView?.image && buttonOne.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
            
        else if buttonFour.imageView?.image == buttonFive.imageView?.image && buttonFour.imageView?.image == buttonSix.imageView?.image && buttonFour.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonSeven.imageView?.image == buttonEight.imageView?.image && buttonSeven.imageView?.image == buttonNine.imageView?.image && buttonSeven.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonOne.imageView?.image == buttonFour.imageView?.image && buttonFour.imageView?.image == buttonSeven.imageView?.image && buttonOne.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonTwo.imageView?.image == buttonFive.imageView?.image && buttonTwo.imageView?.image == buttonEight.imageView?.image && buttonTwo.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonThree.imageView?.image == buttonSix.imageView?.image && buttonSix.imageView?.image == buttonNine.imageView?.image && buttonThree.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonOne.imageView?.image == buttonFive.imageView?.image && buttonFive.imageView?.image == buttonNine.imageView?.image && buttonOne.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else if buttonThree.imageView?.image == buttonFive.imageView?.image && buttonFive.imageView?.image == buttonSeven.imageView?.image && buttonThree.imageView?.image != nil {
            presentWinnerAlert(player: player)
        }
        
        else {
            var allFilled = true
            for button in buttons {
                if button.imageView?.image == nil {
                    allFilled = false
                }
            }
            if allFilled {
                presentTieAlert()
            }
        }
    }
    
    func switchImage(button: UIButton) {
        if button.imageView!.image == nil {
            if playerImage == #imageLiteral(resourceName: "cross") {
                button.setImage(playerImage, for: .normal)
                checkForWinner(player: "Player X")
                playerImage = #imageLiteral(resourceName: "circle")
            } else if playerImage == #imageLiteral(resourceName: "circle") {
                button.setImage(playerImage, for: .normal)
                checkForWinner(player: "Player O")
                playerImage = #imageLiteral(resourceName: "cross")
            }
        }
    }
    
    func clearImage(button: UIButton) {
        button.setImage(nil, for: .normal)
        button.imageView?.image = nil
        playerImage = #imageLiteral(resourceName: "cross")
    }
    
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonFiveTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonSixTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonSevenTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonEightTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }
    
    @IBAction func buttonNineTapped(_ sender: UIButton) {
        switchImage(button: sender)
    }

    @IBAction func newGameButtonTapped(_ sender: UIButton) {
        for button in buttons {
            clearImage(button: button)
        }
    }
}

extension GameViewController {
    func presentWinnerAlert (player: String) {
        let alert = UIAlertController(title: "WINNER!", message: "Way to go \(player)", preferredStyle: .alert)
        let newGameButton = UIAlertAction(title: "New Game", style: .destructive) { (action) in
            for button in self.buttons {
                self.clearImage(button: button)
            }
        }
        alert.addAction(newGameButton)
        present(alert, animated: true)
    }
    
    func presentTieAlert () {
        let alert = UIAlertController(title: "CAT!", message: "It's a tie", preferredStyle: .alert)
        let newGameButton = UIAlertAction(title: "New Game", style: .destructive) { (action) in
            for button in self.buttons {
                self.clearImage(button: button)
            }
        }
        alert.addAction(newGameButton)
        present(alert, animated: true)
    }
}
