//
//  DescriptionViewController.swift
//  HomeworkWeek4Assignment1
//
//  Created by Carl Duncan on 9/11/22.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var ItemName: UILabel!
    @IBOutlet weak var ItemDescription: UITextView!
    
    var menuItem: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = menuItem?.image {
            ItemImage.image = UIImage(named: imageName)
        }
        ItemName.text = menuItem?.name
        ItemDescription.text = menuItem?.description
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
