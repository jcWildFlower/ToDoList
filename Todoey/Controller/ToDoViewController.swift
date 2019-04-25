//
//  ViewController.swift
//  Todoey
//
//  Created by Jongchan Son on 4/24/19.
//  Copyright © 2019 Jongchan Son. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {

    let itemArray = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    //MARK - Tableview DataSorce Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row].title
        
        return cell
        
    }
    
    
    //MARK - Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row].title)
        
        //To have a checkMark when selecting each cell.
            //1. ToDoItemCell -> Attributes Inspector -> Accessory -> checkMark
            //2. write a code bellow
        //Code: if a selected cell has a checkmark already, then removing it when selecting
        //      else, if a selected cell has no checkmark, then assigning it when selecting
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //To get rid of the hightlight color when selecting each cell
        tableView.deselectRow(at: indexPath, animated: true)
        
    }


}

