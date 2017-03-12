//
//  Books.swift
//  MySampleApp
//
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.12
//

import Foundation
import UIKit
import AWSDynamoDB

class Books: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _iSBN: String?
    var _title: String?
    var _author: String?
    
    class func dynamoDBTableName() -> String {

        return "hackathon-mobilehub-193603921-Books"
    }
    
    class func hashKeyAttribute() -> String {

        return "_iSBN"
    }
    
    class func rangeKeyAttribute() -> String {

        return "_title"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_iSBN" : "ISBN",
               "_title" : "Title",
               "_author" : "Author",
        ]
    }
}
