//
//  ViewController.swift
//  HomeworkWeek4Assignment1
//
//  Created by Carl Duncan on 9/11/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    @IBSegueAction func showDetailsView(_ coder: NSCoder) -> UIViewController? {
        UIHostingController(coder: coder, rootView: DetailsView(passedInImage: burger.image, passedInName: burger.name, passedInDescription: burger.description))
    }
    
    let myBurgers = burgers
    var burger = burgers[0]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        burger = myBurgers[indexPath.row]
        performSegue(withIdentifier: "ShowBurgerDetails", sender: burger)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBurgers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = myBurgers[indexPath.row].name
        cell.imageView?.image = UIImage(named:myBurgers[indexPath.row].image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowBurgerDetails" {
            guard let DescriptionViewController = segue.destination as? DescriptionViewController,
                  let menuItem = sender as? MenuItem else {
                return
            }
            DescriptionViewController.menuItem = menuItem
        }
    }

}

