//
//  TaskEightViewController.swift
//  EjercicioClase3_8
//
//  Created by TEO on 8/11/22.
//

import UIKit

class TaskEightViewController: UIViewController {
    
    struct Const{
        static let startRandomNumber = 1
        static let finalRandomNumber = 10
        static let losingNumber = 9
        static let imageBurst = "burst"
        static let imageHappy = "happy"
    }

    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    var randomNumber = Const.startRandomNumber
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showRandomNumber()
        updateImageView()
    }

    func showRandomNumber(){
        randomNumberLabel.text = "\(randomNumber)"
    }
    
    func updateRandomNumber(){
        randomNumber = Int.random(in: Const.startRandomNumber...Const.finalRandomNumber)
    }
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        play()
    }
    
    func updateImageView(){
        if randomNumber == Const.losingNumber{
            imageView.image = UIImage(named: Const.imageBurst)
        }else{
            imageView.image = UIImage(named: Const.imageHappy)
        }
    }
    
    func hideButton(){
        nextButton.isHidden = randomNumber == Const.losingNumber
    }
    
    func hideLabel(){
        randomNumberLabel.isHidden = randomNumber == Const.losingNumber
    }
    
    func play(){
        updateRandomNumber()
        showRandomNumber()
        updateImageView()
        hideLabel()
        hideButton()
    }
    
}

