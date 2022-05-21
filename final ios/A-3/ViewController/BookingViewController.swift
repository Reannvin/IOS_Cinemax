//
//  BookingViewController.swift
//  A-3
//
//  Created by Cy Lyu on 2022/5/10.
//

import UIKit

class BookingViewController: UIViewController, UITextFieldDelegate{
 
    @IBOutlet weak var searchText: UITextField!
    let movies = ["Sonic The Hedgehog2", "The Bad Guys", "The Secrets Of Dumbledore"]
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
        //make a placeholder on the search bar
        searchText.attributedPlaceholder = NSAttributedString(string: "Search",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }

    
}
extension BookingViewController: UITableViewDelegate, UITableViewDataSource {
    //define the height of the tableView Cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    //define the numbers of the movies
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    //display the movie image from the assets and its name
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieTableView.dequeueReusableCell(withIdentifier: "movieTableViewCell") as! movieTableViewCell
        let movie = movies[indexPath.row]
        cell.movieImage.image = UIImage(named: movie)
        cell.contentLbl.text = movie
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //make the selected cell not keep grey
        tableView.deselectRow(at:indexPath, animated: true)
        
        //seuge the movie detail scene
        let vc = storyboard?.instantiateViewController(withIdentifier: "SonicDetail") as! SonicDetailViewController
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "BadDetail") as! BadDetailViewController
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "DumbledoreDetail") as! DumbledoreDetailViewController
        
        if indexPath.row == 0{
            navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1{
            navigationController?.pushViewController(vc1, animated: true)
        }else{
            navigationController?.pushViewController(vc2, animated: true)
        }
    }

}
