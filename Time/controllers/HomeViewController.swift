//
//  HomeViewController.swift
//  InstaPDP1
//
//  Created by Muhammadjon Mamarasulov on 4/22/21.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    @IBOutlet weak var tableView: UITableView!
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }

    //MARK: - Method
    
    func initViews(){
        tableView.dataSource = self
        tableView.delegate = self
        
        setNavigationBar()
        
        items.append(Post(fullname: "Muhammadjon", user_img: "im_person2", post_img: "im_post2" ))
        items.append(Post(fullname: "Muhammadjon", user_img: "im_person2", post_img: "im_post2" ))
        items.append(Post(fullname: "Muhammadjon", user_img: "im_person2", post_img: "im_post2" ))
        items.append(Post(fullname: "Muhammadjon", user_img: "im_person2", post_img: "im_post2" ))
        
        
    }
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
        
    }
    
    //MARK: - Action
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
    
    //MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        
        cell.fullnameLabel.text = item.fullname
        cell.profileImageView.image = UIImage(named: item.user_img!)
        cell.postImageView2.image = UIImage(named: item.post_img!)
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}
