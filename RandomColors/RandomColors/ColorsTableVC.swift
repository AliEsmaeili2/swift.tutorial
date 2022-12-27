//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Ali esmaeili on 12/26/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   // @IBAction func tempButtonTapped(_ sender: UIButton) {
        
    //    performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
   // }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
    }
    // for number of Rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    //For what to show in row
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    //for select rows and 'Enter'
}
