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
    
    let allSources = QuestionsSources()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSources.sourcesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = Bundle.main.loadNibNamed("SourceTableViewCell", owner: self, options: nil)?.first as! SourceTableViewCell
        
        cell.titleLabel.text = allSources.sourcesList[indexPath.row].title
        
        cell.descriptionLabel.text = allSources.sourcesList[indexPath.row].description
        
        cell.cellDelegate = self
        cell.index = indexPath
        
        
        return cell
        
    }

 

}

extension SourcesTableViewController: TableViewNew {
    
    func onClickCell(index: Int) {
        
        print("\(index) is clicked")
        print(allSources.sourcesList[index].sourceURL)
        
        
    }
}
