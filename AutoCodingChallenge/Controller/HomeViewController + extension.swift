//
//  HomeViewController + extension.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 04/12/2021.
//

import UIKit


extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == homeCollectionView {
            return popularCars?.makeList.count ?? 20
        } else {
            return allCars?.result.count ?? 25
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if collectionView == homeCollectionView {
            let model = popularCars?.makeList[indexPath.row]
            guard let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: ExploreCollectionViewCell.identifier, for: indexPath) as? ExploreCollectionViewCell else { return UICollectionViewCell() }
            
            let image = try? model?.imageURL.asUrl
            cell.productImageView.kf.setImage(with: image)
            cell.configure(with: model?.imageURL ?? "")
            cell.brandName.text = model?.name
            cell.layer.cornerRadius = cell.frame.size.height/2
            return cell
        }
        else {
            let model = allCars?.result[indexPath.row]
            guard let cell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: AllCarsCollectionViewCell.identifier, for: indexPath) as? AllCarsCollectionViewCell else { return UICollectionViewCell() }
            cell.configure(with: model?.imageURL ?? "")
            cell.productNametextView.text =   self.allCars?.result[indexPath.item].title
            cell.productBrandTextView.text =  self.allCars?.result[indexPath.item].city
            cell.productPriceTextView.text = "\(String(describing: self.allCars?.result[indexPath.item].marketplacePrice ?? 4)) Naira"
            cell.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
            cell.layer.cornerRadius = 25
           
            return cell
        }
        
  
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == carsCollectionView {
            return CGSize(width: view.frame.width, height: 300)
        } else {
            return CGSize(width: 60, height: 60)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == carsCollectionView {
            let viewController = DetailProductViewController()
            viewController.usedId = (allCars?.result[indexPath.row].id)!
            UserDefaults.standard.set(viewController.usedId, forKey: "Myid")
            viewController.configure(with: (allCars?.result[indexPath.row].imageURL)!)
            viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true, completion: nil)
        }
    }
}
