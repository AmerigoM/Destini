//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    let myStory: Book = Book()
    var storyIndex: Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {

        updateStory(directionOfStory: sender.tag)
        
        updateView()
        
    
    }
    
    
    func updateStory(directionOfStory: Int){
    // the story progress is checked in here
        
        if(storyIndex == 1 && directionOfStory == 1) {
            storyIndex = 3
        } else if(storyIndex == 1 && directionOfStory == 2) {
            storyIndex = 2
        } else if(storyIndex == 3 && directionOfStory == 1) {
            storyIndex = 6
        } else if(storyIndex == 3 && directionOfStory == 2) {
            storyIndex = 5
        } else if(storyIndex == 2 && directionOfStory == 1) {
            storyIndex = 3
        } else if(storyIndex == 2 && directionOfStory == 2) {
            storyIndex = 4
        } else {
            storyIndex = 1
            topButton.isHidden = false
            bottomButton.backgroundColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1)
        }
        
    }
    
    
    func updateView() {
        // the view is updated here according to the progress of the story
        
        storyTextView.text = myStory.bookChapters[storyIndex - 1].story
        
        if(storyIndex != 4 && storyIndex != 5 && storyIndex != 6) {
            topButton.setTitle(myStory.bookChapters[storyIndex - 1].answerA, for: .normal)
            bottomButton.setTitle(myStory.bookChapters[storyIndex - 1].answerB, for: .normal)
        }
        else {
            topButton.isHidden = true
            bottomButton.setTitle("Restart game", for: .normal)
            bottomButton.backgroundColor = UIColor(red: 39/255, green: 174/255, blue: 96/255, alpha: 1)
        }
        
    }
    



}

