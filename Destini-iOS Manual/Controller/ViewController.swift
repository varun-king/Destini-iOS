//
//  ViewController.swift
//  Destini-iOS Manual
//
//  Created by apple on 1/5/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var fisrtChoiceLabel: UIButton!
    @IBOutlet weak var secondChoiceLabel: UIButton!
    
    var logic = storyLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
      //  print(sender.currentTitle!)
        var userAnswer = sender.currentTitle!
        logic.nextStory(userAnswer)
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = logic.getTitle()
        fisrtChoiceLabel.setTitle("\(logic.getFirstChoice())", for: .normal)
        secondChoiceLabel.setTitle("\(logic.getSecondChoice())", for: .normal)
    }
    
    
    

}

