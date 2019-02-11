//
//  ViewController.swift
//  MyMovies
//
//  Created by Maurício Oliveira on 11/02/2019.
//  Copyright © 2019 Maurício Oliveira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mockupMovies()
    }
    
    func mockupMovies() {
        
        var movie: Movies
        
        movie = Movies(title: "Movie 1",description: "Description 1",image: UIImage(named: "filme1")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 2",description: "Description 2",image: UIImage(named: "filme2")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 3",description: "Description 3",image: UIImage(named: "filme3")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 4",description: "Description 4",image: UIImage(named: "filme4")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 5",description: "Description 5",image: UIImage(named: "filme5")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 6",description: "Description 6",image: UIImage(named: "filme6")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 7",description: "Description 7",image: UIImage(named: "filme7")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 8",description: "Description 8",image: UIImage(named: "filme8")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 9",description: "Description 9",image: UIImage(named: "filme9")!)
        movies.append(movie)
        
        movie = Movies(title: "Movie 10",description: "Description 10",image: UIImage(named: "filme10")!)
        movies.append(movie)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reuseCell = "reuseCell"
        
        let movie = movies[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath) as! MovieCell
        /*cell.textLabel?.text = movie.title
        cell.imageView?.image = movie.image*/
        
        cell.movieImageView.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        
        
        /*
         SET ON STORYBOARD
         cell.movieImageView.layer.cornerRadius = 42
        cell.movieImageView.clipsToBounds = true */
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "movieCellSegue" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let movie = self.movies[indexPath.row]
                
                let vcDestino = segue.destination as! DetailsMovieViewController
                vcDestino.movie = movie
            }
            
        }
        
    }


}

