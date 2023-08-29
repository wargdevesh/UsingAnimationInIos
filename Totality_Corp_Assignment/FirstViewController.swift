//
//  ViewController.swift
//  Totality_Corp_Assignment
//
//  Created by Richa Joshi on 26/08/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableHeaderView = titleView
      
  
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension FirstViewController: UITableViewDelegate,  UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayTableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
      tableView.deselectRow(at: indexPath, animated: true)
        let vc : SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "vc2") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
            }
    
    
    }


