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
        questionList.append(Question(questionText: "LGBTQ+ people are very rare", answer: false))
        
        questionList.append(Question(questionText: "LGBTQ+ people do not choose to be gay, but are actually born that way", answer: true))
        
        questionList.append(Question(questionText: "People turn out gay as a result of childhood trauma or because of a lack of good parental role models", answer: false))
        
        questionList.append(Question(questionText: "Coming out for LGBTQ+ people is ongoing and lifelong", answer: true))
        
        questionList.append(Question(questionText: "LGBTQ+ people are worse parents and more likely to cause harm to a child or children", answer: false))
        
        questionList.append(Question(questionText: "Gay men are always feminine and lesbians are always masculine or 'butch' ", answer: false))
        
        questionList.append(Question(questionText: "Pedophiles are not more likely to be gay men", answer: true))
        
        questionList.append(Question(questionText: "You can “spot” lesbian, gay man, or trans-identified person based off of specific mannerisms, clothing choices or physical characteristics", answer: false))
        
        questionList.append(Question(questionText: "A bisexual person is not someone who can't make up their mind about whether or not they are straight or gay", answer: true))
        
        questionList.append(Question(questionText: "Bisexual people like both genders equal amounts", answer: false))

    }
}
