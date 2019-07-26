//
//  SourcesTableViewController.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/26/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit

class SourcesTableViewController: UITableViewController {
    
    //Properties: -
    
    let allQuestions = QuestionBank()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allQuestions.questionList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = Bundle.main.loadNibNamed("SourceTableViewCell", owner: self, options: nil)?.first as! SourceTableViewCell
        
        cell.titleLabel.text = allQuestions.questionList[indexPath.row].questionText
        cell.descriptionLabel.text = String(allQuestions.questionList[indexPath.row].answer)
        
        
        return cell
        
    }

 

}
