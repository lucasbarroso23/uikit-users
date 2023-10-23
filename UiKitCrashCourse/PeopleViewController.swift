//
//  PeopleViewController.swift
//  UiKitCrashCourse
//
//  Created by Lucas Barroso IZ on 16/10/2023.
//

import UIKit

class PeopleViewController: UIViewController {
    
    private lazy var cv: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: UIScreen.main.bounds.width, height: 130)
        
        let vw = UICollectionView(frame: .zero, collectionViewLayout: layout)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
 
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("oh boy, UiKit time!")
        setup()
    }


}

private extension PeopleViewController {
    
    func setup() {
        self.view.backgroundColor = .white
        
     
        
    }
    
 
  
}

