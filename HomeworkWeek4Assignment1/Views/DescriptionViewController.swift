//
//  DescriptionViewController.swift
//  HomeworkWeek4Assignment1
//
//  Created by Carl Duncan on 9/11/22.
//

import UIKit
import SwiftUI

class DescriptionViewController: UIViewController {
   
    var menuItem: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let childView = UIHostingController(rootView: DetailsView(passedInImage: menuItem?.image ?? "", passedInName: menuItem?.name ?? "", passedInDescription: menuItem?.description ?? ""))
        addChild(childView)
        childView.view.frame = UIScreen.main.bounds
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        

    }
    

}
