//
//  Images.swift
//  locate
//
//  Created by Keanu Robles on 3/11/17.
//  Copyright © 2017 hackathon. All rights reserved.
//

import UIKit
import AWSDynamoDB

class Images: AWSDynamoDBObjectModel, AWSDynamoDBModeling {

    var QRCode: String?
    var imageName: String?
    var imageURL: String?

    
    
    class func dynamoDBTableName() -> String {
        return "hackathon-mobilehub-193603921-hackathon-mobilehub-193603921-images"
    }
    
    class func hashKeyAttribute() -> String {
        return "QRCode"
    }

}
