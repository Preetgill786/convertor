//
//  CountryList.swift
//  Convertor
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

protocol CountryListTableViewControllerDelegate: class {
func itemDetailViewControllerDidCancel(_ controller: CountryListTableViewController)
    func itemDetailViewController(_ controller: CountryListTableViewController,didFinishAdding item: countryItem)
    func itemDetailViewController(_ controller: CountryListTableViewController,
                     didFinishEditing item: countryItem)
}

class CountryListTableViewController: UITableViewController{
 var username:String = ""
    //@IBOutlet weak var usernamelabel: UILabel!
    let CountryNames = ["🇺🇸 USD" , " 🇮🇳 Rupee" , "🇪🇺 EURO" , "🇨🇦 CAD"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

      
    }
      override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return CountryNames.count
        }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell
        {
        let cell = tableView.dequeueReusableCell(
        withIdentifier: "countryList",for: indexPath) 
            print("Hello")
             cell.textLabel?.text = CountryNames[indexPath.row]
            return cell
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
           
        }
    }
}
