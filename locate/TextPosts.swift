//
//  TextPosts.swift
//  locate
//
//  Created by Keanu Robles on 3/11/17.
//  Copyright © 2017 hackathon. All rights reserved.
//

import UIKit
import AWSDynamoDB

class TextPosts: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var QRCode: String?
    var fileName: String?
    var fileURL: String?
    
    
    
    class func dynamoDBTableName() -> String {
        return "hackathon-mobilehub-193603921-hackathon-mobilehub-193603921-text-posts"
    }
    
    class func hashKeyAttribute() -> String {
        return "QRCode"
    }
    
}
