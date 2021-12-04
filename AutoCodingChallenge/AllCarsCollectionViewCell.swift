//
//  AllCarsCollectionViewCell.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 04/12/2021.
//

import UIKit
import SVGKit

class AllCarsCollectionViewCell: UICollectionViewCell {
    static let identifier = "AllCarsCollectionViewCell"
    

    let productImageView: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.layer.cornerRadius = 20
//        imageView.backgroundColor = .red
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let productNametextView: UILabel = {
      let textView = UILabel()
      textView.text = "Product Name"
      textView.font = UIFont.boldSystemFont(ofSize: 18)
      textView.font = UIFont(name: "NunitoSans-Bold", size: 18)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productBrandTextView: UILabel = {
      let textView = UILabel()
      textView.text = "Brand"
      textView.font = UIFont.boldSystemFont(ofSize: 13)
      textView.font = UIFont(name: "NunitoSans-Regular", size: 13)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productRateLabel: UILabel = {
      let textView = UILabel()
      textView.text = "5.0"
      textView.font = UIFont(name: "NunitoSans-Regular", size: 14)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productRateView: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.image = UIImage(named: "star")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let productPriceTextView: UILabel = {
      let textView = UILabel()
      textView.text = "#10.67"
      textView.font = UIFont.boldSystemFont(ofSize: 14)
      textView.font = UIFont(name: "NunitoSans-Semibold", size: 14)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productImage: UIImageView = {
      let view = UIImageView()
//        view.backgroundColor = .red
      view.contentMode = .scaleAspectFit
      view.layer.cornerRadius = 15
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    let productDetailsView: UIView = {
      let view = UIView()
      view.backgroundColor = .white
      view.layer.cornerRadius = 15
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    lazy var addButton: UIButton = {
      let button = UIButton()
      button.layer.cornerRadius = 25
      button.backgroundColor = .black
      button.setTitleColor(.yellow, for: .normal)
      button.setTitle("+", for: .normal)
      button.translatesAutoresizingMaskIntoConstraints = false
      return button
    }()
    override init(frame: CGRect) {
      super.init(frame: frame)
      setUpViews()
      
    }
    func setUpViews() {
      productDetailsView.addSubview(productNametextView)
      productDetailsView.addSubview(productBrandTextView)
      productDetailsView.addSubview(productPriceTextView)
      productDetailsView.addSubview(productRateView)
      productDetailsView.addSubview(productRateLabel)
      addSubview(productImage)
      addSubview(productDetailsView)
      addSubview(addButton)
      addSubview(productImageView)
      productDetailsView.addSubview(productImage)
      
      productImageView.anchorWithConstantsToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
      
      productDetailsView.anchorWithConstantsToTop(top: topAnchor, left: leftAnchor, bottom:bottomAnchor, right: rightAnchor, topConstant: 80, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
      
      productImage.anchorWithConstantsToTop(top: topAnchor, left:  leftAnchor, bottom: productDetailsView.bottomAnchor, right: rightAnchor, topConstant: 35, leftConstant: 35, bottomConstant: 120, rightConstant: 35)
      
      productNametextView.anchorWithConstantsToTop(top: productImage.bottomAnchor, left: leftAnchor,
                                                   bottom: bottomAnchor,right: rightAnchor,topConstant: 0,leftConstant: 50,
                                                   bottomConstant: 60, rightConstant: 0)
      productBrandTextView.anchorWithConstantsToTop(top: productNametextView.bottomAnchor, left: leftAnchor,
                                                    bottom: bottomAnchor,right: rightAnchor,topConstant: 0,leftConstant: 50,
                                                    bottomConstant: 40, rightConstant: 0)
      productPriceTextView.anchorWithConstantsToTop(top: productBrandTextView.bottomAnchor, left: leftAnchor,
                                                    bottom: bottomAnchor,right: rightAnchor,topConstant: 0,leftConstant: 50,
                                                    bottomConstant: 0, rightConstant: 0)
      productRateView.anchorWithConstantsToTop(top: productBrandTextView.bottomAnchor, left: leftAnchor,
                                               bottom: bottomAnchor,right: rightAnchor,topConstant: 0,leftConstant: 300,
                                               bottomConstant: 70, rightConstant: 0)
      productRateView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.05).isActive = true
      productRateView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.05).isActive = true
      addButton.anchorWithConstantsToTop(top: productRateView.bottomAnchor, left: leftAnchor,
                                         bottom: bottomAnchor,right: rightAnchor,topConstant: 0,leftConstant: 280,
                                         bottomConstant: 10, rightConstant: 0)
      addButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.10).isActive = true
      addButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.18).isActive = true
      
      NSLayoutConstraint.activate([
        productRateLabel.bottomAnchor.constraint(equalTo: addButton.topAnchor, constant: -3),
        productRateLabel.trailingAnchor.constraint(equalTo: productDetailsView.trailingAnchor, constant: -5)
      ])
    }
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    func configure(with urlString: String){
      guard let url = URL(string: urlString) else {
        return
        
      }
      URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
        guard let data = data , error == nil else {
          return
        }
        DispatchQueue.main.async {
          let image = UIImage(data: data)
          self?.productImage.image = image
          
        }
      }.resume()
    }
  }

  
