//
//  storyLogic.swift
//  Destini-iOS Manual
//
//  Created by apple on 1/5/21.
//

import Foundation

struct storyLogic{
    
    var storyNumber = 0
    
    let stories = [
        Story(title: " Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens thepassenger door for you and says: \"Need a ride, boy?\". ", choice1: " I'll hop in. Thanks for the help!", choice2: "Well, I don't have many options. Better ask him if he's a murderer"),
        Story(title: "He nods slowly, unphased by the question.", choice1: "At least he's honest. I'll climb in", choice2: "Wait, I know how to change a tire"),
        Story(title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", choice1: "I love Elton John! Hand him the cassette tape", choice2: ": It’s him or me. Take the knife and stab him"),
        Story(title: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?", choice1: "The", choice2: "End"),
        Story(title: " As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in. ", choice1: "The", choice2: "End"),
        Story(title: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier\" ", choice1: "The", choice2: "End")
        
        
    ]
    
    func getTitle() -> String{
        return stories[storyNumber].title
    }
    func getFirstChoice() -> String{
        return stories[storyNumber].choice1
    }
    func getSecondChoice() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(_ userChoice:String) {
        print(userChoice)
        if userChoice == stories[storyNumber].choice1 && storyNumber == 0{
            storyNumber = 2
            //print(stories[storyNumber].title)
        }else if userChoice == stories[storyNumber].choice2 && storyNumber == 0{
            storyNumber = 1
          //  print(stories[storyNumber].title)
        }else if userChoice == stories[storyNumber].choice1 && storyNumber == 1 {
            storyNumber = 2
        }else if userChoice == stories[storyNumber].choice2 && storyNumber == 1 {
            storyNumber = 3
        }else if userChoice == stories[storyNumber].choice1 && storyNumber == 2 {
            storyNumber = 5
        }else if userChoice == stories[storyNumber].choice2 && storyNumber == 2 {
            storyNumber = 4
        }
    }
}
