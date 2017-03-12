//
//  PlacesViewCell.swift
//  locate
//
//  Created by Keanu Robles on 3/11/17.
//  Copyright © 2017 hackathon. All rights reserved.
//

// Fake entry: demo-QRCode-164269
import UIKit
import AWSDynamoDB

class PlacesViewCell: UITableViewCell {

    @IBOutlet weak var placeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
