//
//  MasterVenue.swift
//  locate
//
//  Created by Keanu Robles on 3/11/17.
//  Copyright © 2017 hackathon. All rights reserved.
//

import UIKit
import AWSDynamoDB

class MasterVenue: AWSDynamoDBObjectModel, AWSDynamoDBModeling{
    
    var QRCode: String?
    var imageHeight: Int?
    var imageWidth: Int?
    var timeStamp: String?
    var userID: String?
    var venueName: String?
    
    
    class func dynamoDBTableName() -> String {
        return "hackathon-mobilehub-193603921-master-venue"
    }
    
    class func hashKeyAttribute() -> String {
        return "QRCode"
    }
    

}
