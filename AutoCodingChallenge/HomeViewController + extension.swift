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
            return popularCars?.makeList.count ?? 10
        } else {
            return 15
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
    //        cell.backgroundColor = .red
            cell.layer.cornerRadius = cell.frame.size.height/4
            
            
            return cell
        }
        else {
            let model = allCars?.result[indexPath.row]
            guard let cell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: AllCarsCollectionViewCell.identifier, for: indexPath) as? AllCarsCollectionViewCell else { return UICollectionViewCell() }
            
            cell.configure(with: model?.imageURL ?? "")
            cell.productNametextView.text =   self.allCars?.result[indexPath.item].title
            cell.productBrandTextView.text =  self.allCars?.result[indexPath.item].sellingCondition
            cell.productPriceTextView.text = self.allCars?.result[indexPath.item].mileageUnit
            
            return cell
        }
        
  
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let paddingSpace = sectionInsets.left * (itemsPerRow + 4)
            let availableWidth = view.frame.width - paddingSpace
            let widthPerItem = availableWidth / itemsPerRow

            return CGSize(width: widthPerItem, height: widthPerItem)
    }
//
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}
