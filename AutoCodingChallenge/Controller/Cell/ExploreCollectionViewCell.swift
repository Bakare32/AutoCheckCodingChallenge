//
//  ExploreCollectionViewCell.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 03/12/2021.
//

import UIKit
import SVGKit
import Kingfisher

class ExploreCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "BrandCollectionViewCell"
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var brandName: UILabel!
    
    
    func configure(with urlString: String){
      guard let url = URL(string: urlString) else {
        return
        
      }
      URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
        guard let data = data , error == nil else {
          return
        }
        DispatchQueue.main.async {
          print(data)
          
          guard let image: SVGKImage = SVGKImage(contentsOf: url) else {
            return
          }
          self?.productImageView.image = image.uiImage
          guard let img  = UIImage(data: data) else { return }
          self?.productImageView.image = img
          
        }
      }.resume()
    }
    
}


extension UIView {
  func anchorToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
    anchorWithConstantsToTop(top: top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
  }
  func anchorWithConstantsToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil,
                                bottom: NSLayoutYAxisAnchor? = nil,
                                right: NSLayoutXAxisAnchor? = nil,
                                topConstant: CGFloat = 0,
                                leftConstant: CGFloat = 0,
                                bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
    translatesAutoresizingMaskIntoConstraints = false
    if let top = top {
      topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
    }
    if let bottom = bottom {
      bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
    }
    if let left = left {
      leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
    }
    if let right = right {
      rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
    }
  }
  
}
