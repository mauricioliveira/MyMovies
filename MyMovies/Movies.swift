//
//  Movies.swift
//  MyMovies
//
//  Created by Maurício Oliveira on 11/02/2019.
//  Copyright © 2019 Maurício Oliveira. All rights reserved.
//

import UIKit

class Movies {
    var title: String!
    var description: String!
    var image: UIImage!
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}
