//
//  DetailsMovieViewController.swift
//  MyMovies
//
//  Created by Maurício Oliveira on 11/02/2019.
//  Copyright © 2019 Maurício Oliveira. All rights reserved.
//

import UIKit

class DetailsMovieViewController: UIViewController {
    
    var movie: Movies!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImageView.image = self.movie.image
        movieTitleLabel.text = self.movie.title
        movieDescriptionLabel.text = self.movie.description
        
    }
    
}
