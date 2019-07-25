//
//  QuestionBank.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/24/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import Foundation

struct QuestionBank  {
    var questionList = [Question]()
    
    init() {
        questionList.append(Question(questionText: "In mythology, Mercury fathered Hermaphroditus, who had both male and female sex organs.", answer: true))
        
        questionList.append(Question(questionText: "The word drag is apparently an acronym, a stage direction coined by Shakespeare and his contemporaries meaning ‘Dressed Resembling A Girl’.", answer: true))
        
        questionList.append(Question(questionText: "Carmilla, a story of a lesbian vampire that preyed on young women, was written 25 years after Dracula.", answer: false))
        
        questionList.append(Question(questionText: "An american billionaire offered $65 million to the man that was able to woo and marry his lesbian daughter.", answer: false))
        
        questionList.append(Question(questionText: "The first openly gay doll, Gay Barbie, was launched in 1977. She had a pierced ear and her box was shaped like a closet.", answer: false))
        
        questionList.append(Question(questionText: "The world’s oldest porn, which dates back over 3,000 years, features both male/male, female/female and male/female couples.", answer: true))
        
        questionList.append(Question(questionText: "Uganda had a gay king. King Mwanga II, who reigned from 1884 to 1888, is widely reported to have had affairs with his male servants.", answer: true))
        
        questionList.append(Question(questionText: "In the 1960s, the term AC/DC became a popular slang for bisexual. It came from the abbreviations for two types of electrical currents.", answer: true))
        
        questionList.append(Question(questionText: "Bruce Banner’s name was changed to David Banner in 1970s show The Incredible Hulk, as ‘Bruce’ was considered a stereotypically gay name.", answer: true))
        
        questionList.append(Question(questionText: "The first gay kiss to be screened in Saudi Arabia was seen in 2018.", answer: false))

    }
}
