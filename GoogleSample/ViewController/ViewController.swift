//
//  ViewController.swift
//  GoogleSample
//
//  Created by Daniel Suskevic on 19/12/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    var searchKeyword : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func readButtonTapped(_ sender: UIButton) {
        readTextField()
        execute()
    }
    
    func execute() {
        textField.resignFirstResponder()
        let session = ConfigureSession.configureSession()
        let urlrequest = ConfigureURL.configureURL(searchKeyword: searchKeyword)
       // let instance = ReadDataJSON()
       // instance.readDataJSON(urlrequest: urlrequest, session: session) {
        ReadDataJSON.readDataJSON(urlrequest: urlrequest, session: session) {
            self.tableview.reloadData()
        }
    }
    
    func readTextField() {
        if textField.text != "" {
            searchKeyword = textField.text!
        } else {
            print("Error, there is no text in textfield")
        }
    }
}

//MARK: Table View
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableViewCell.title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: "titleCell", for: indexPath) as! TableViewCell
        
        cell.titleCell.text = TableViewCell.title[indexPath.row]
        
        return cell
    }
}

