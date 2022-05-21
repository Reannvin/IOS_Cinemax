//
//  MovieScheduleViewController.swift
//  cinema
//
//  Created by wh on 2022/5/15.
//

import UIKit

class SonicScheduleViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var dateButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Date", for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.layer.cornerRadius = 5.0
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.borderWidth = 0.5
        button.addTarget(self, action: #selector(onClickedDateButton(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func onClickedDateButton(_ button: UIButton) {
        
    }
}


extension SonicScheduleViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 200))
        view.addSubview(dateButton)
        dateButton.frame = CGRect(x: (view.bounds.width - 150)/2.0, y: view.bounds.height - 80, width: 150, height: 40)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieScheduleTimeCell", for: indexPath) as? SonicScheduleTimeCell else {
            return UITableViewCell()
        }
        
        cell.timeLabel.text = "Timeß\(indexPath.row + 1)"
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       //make the selected cell not keep grey
       tableView.deselectRow(at:indexPath, animated: true)
       
       //seuge the movie detail scene
       let vc = storyboard?.instantiateViewController(withIdentifier: "SeatView") as! SeatViewController
//       let vc1 = storyboard?.instantiateViewController(withIdentifier: "BadDetail") as! BadDetailViewController
//       let vc2 = storyboard?.instantiateViewController(withIdentifier: "DumbledoreDetail") as! DumbledoreDetailViewController
//
       if indexPath.row == 0{
           navigationController?.pushViewController(vc, animated: true)
       }else if indexPath.row == 1{
           navigationController?.pushViewController(vc, animated: true)
       }else{
           navigationController?.pushViewController(vc, animated: true)
       }
   }

}
