//
//  SecondViewController.swift
//  Sebastian_CSP
//
//  Created by Bravo, Sebastian on 10/26/17.
//  Copyright © 2017 Bravo, Sebastian. All rights reserved.
//

import UIKit

public class InternetMasterViewController : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
        "Definitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"
        ]
    }()
    
    private var detailViewController : InternetMasterViewController?
    
    private func setup() -> Void
    {
        //replace all these links with other URLS
        
                "https://www.google.com",
                "https://www.google.com",
                "https://www.google.com",
                "https://www.google.com",
                "https://www.google.com",
                "https://www.google.com",
                "https://www.google.com"
    }
    
    
    
}


class SecondViewController: UIViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> InternetMasterViewController
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexpath.row]
        cell.textLabel.text = currentText
        
        return cell
    }
    
    
    
}

