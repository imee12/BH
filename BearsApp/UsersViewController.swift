//
//  UsersViewController.swift
//  BearsApp
//
//  Created by Imee Cuison on 6/25/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

import UIKit


class UsersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

{


    @IBOutlet weak var resultsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return resultsUsernameArray.count
        
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:resultsCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! resultsCell
        
       cell.usernameLbl.text = self.resultsUsernameArray[indexPath.row]
      cell.profileNameLbl.text = self.resultsProfileNameArray[indexPath.row]
        
        
        resultsImageFiles[indexPath.row].getDataInBackgroundWithBlock {
            
            
            (imageData: NSData?, error: NSError?) -> Void in
            
            if error == nil {
                let image = UIImage(data: imageData!)
                cell.profileimg.image = image
            }
            
        }
        
        return cell
    }
    
    
    
}
