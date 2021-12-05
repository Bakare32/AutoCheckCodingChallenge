//
//  ViewController.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 03/12/2021.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {

    
    @IBOutlet weak var homeCollectionView: UICollectionView!

    @IBOutlet weak var carsCollectionView: UICollectionView!
    
    let itemsPerRow: CGFloat = 3
   let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)

    var popularCars: Popular?
    var allCars: Welcome?
    
    var useId: String?
    var results: [Scores] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        
        carsCollectionView.delegate = self
        carsCollectionView.dataSource = self
        
        carsCollectionView.register(AllCarsCollectionViewCell.self, forCellWithReuseIdentifier: AllCarsCollectionViewCell.identifier)
        
        NetworkService.shared.getPopularCars { [ weak self ] result in
            switch result {
            case .success(let data):
                
                self?.popularCars = data
                self?.homeCollectionView.reloadData()
            case .failure(let error):
                print("\(error.localizedDescription)")
            }
        }
        
        NetworkService.shared.getAllCars { [ weak self ] result in
            switch result {
                
            case .success(let data):
                self?.allCars = data
                self?.carsCollectionView.reloadData()
            case .failure(let error):
                print("The error is \(error.localizedDescription)")
            }
        }
       
    }
    
    
    
}

