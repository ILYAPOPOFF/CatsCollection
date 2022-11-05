//
//  ViewController.swift
//  ViewCollection
//
//  Created by ILYA POPOV on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let collectionView = UICollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cats"
        
        //configureCollectionView()
    }
    
    //MARK: - collectionView
    func configureCollectionView() {
        view.addSubview(collectionView)
        collectionView.pin(to: view)
        
    }
}

