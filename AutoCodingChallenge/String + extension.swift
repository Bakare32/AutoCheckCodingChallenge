//
//  String + extension.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 03/12/2021.
//

import Foundation


extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
