//
//  MovieDetailViewController.swift
//  cinema
//
//  Created by wh on 2022/5/15.
//

import UIKit

class BadDetailViewController: UIViewController {

    /// 电影封面ImageView
    @IBOutlet weak var movieCoverView: UIImageView!
    /// 电影名称label
    @IBOutlet weak var movieNameLabel: UILabel!
    
    /// 上映时间label
    @IBOutlet weak var publishTimeLabel: UILabel!
    
    /// 类型label
    @IBOutlet weak var movieCategoryLabel: UILabel!

    /// 导演label
    @IBOutlet weak var directorLabel: UILabel!
    
    /// 主演label
    @IBOutlet weak var leadingRoleLabel: UILabel!
    
    /// 剧情简介label
    @IBOutlet weak var movieBriefLabel: UILabel!
    
    /// 剧照1 ImageView
    @IBOutlet weak var stagePhotoView1: UIImageView!
    
    /// 剧照2 ImageView
    @IBOutlet weak var stagePhotoView2: UIImageView!
   /// 返回按钮
    @IBOutlet weak var backActionButton: UIButton!
    
    /// 确认按钮
    @IBOutlet weak var confirmActionButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backActionButton.layer.cornerRadius = 5.0
        backActionButton.layer.borderColor = UIColor.systemBlue.cgColor
        backActionButton.layer.borderWidth = 0.5

        confirmActionButton.layer.cornerRadius = 5.0
        confirmActionButton.layer.borderColor = UIColor.systemBlue.cgColor
        confirmActionButton.layer.borderWidth = 0.5

        
        setupData()
    }
    
    //MARK: 这里填充数据
    func setupData() {
        
    }
    
    //MARK: 点击返回按钮
    @IBAction func onClickedBackButton(_ sender: Any) {
    }
    
    //MARK: 点击确认按钮
    @IBAction func onClickedConfirmButton(_ sender: Any) {
    }
    
}
