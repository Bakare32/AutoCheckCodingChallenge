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
//            cell.backgroundColor = .red
            cell.layer.cornerRadius = cell.frame.size.height/2
            
            
            return cell
        }
        else {
            let model = allCars?.result[indexPath.row]
            guard let cell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: AllCarsCollectionViewCell.identifier, for: indexPath) as? AllCarsCollectionViewCell else { return UICollectionViewCell() }
            cell.configure(with: model?.imageURL ?? "")
            cell.productNametextView.text =   self.allCars?.result[indexPath.item].title
            cell.productBrandTextView.text =  self.allCars?.result[indexPath.item].sellingCondition
            cell.productPriceTextView.text = "#\(String(describing: self.allCars?.result[indexPath.item].marketplacePrice ?? 4))"
           
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
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == carsCollectionView {
            print("Hello")
            let viewController = DetailProductViewController()
            viewController.totalAmount = "Total: #\(String(allCars?.result[indexPath.row].marketplacePrice ?? 4))"
            viewController.productName = (allCars?.result[indexPath.row].title)!
            viewController.productBrand = (allCars?.result[indexPath.row].sellingCondition)!
            viewController.setButtonAmount = "#\(String(allCars?.result[indexPath.row].marketplacePrice ?? 4))"
            viewController.productPrice = "#\(String(describing: allCars?.result[indexPath.item].marketplacePrice ?? 4))"
            viewController.configure(with: (allCars?.result[indexPath.row].imageURL)!)
            viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true, completion: nil)
//            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
