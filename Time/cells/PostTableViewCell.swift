//
//  PostTableViewCell.swift
//  InstaPDP1
//
//  Created by Muhammadjon Mamarasulov on 5/6/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {
   
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var fullnameLabel: UILabel!
    
    @IBOutlet weak var postImageView1: UIImageView!
    
    @IBOutlet weak var postImageView2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
