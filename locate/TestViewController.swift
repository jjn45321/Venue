//
//  TestViewController.swift
//  locate
//
//  Created by Keanu Robles on 3/11/17.
//  Copyright © 2017 hackathon. All rights reserved.
//

import UIKit
import AWSDynamoDB
import os.log

class TestViewController: UIViewController {
    

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dynamoDBObjectMapper = AWSDynamoDBObjectMapper.default()
        
        dynamoDBObjectMapper.load(Place.self, hashKey: "123abc", rangeKey: nil).continueWith(block: { (task:AWSTask<AnyObject>!) -> Any? in
            if let error = task.error as? NSError {
                os_log("here2", log: OSLog.default, type: .debug)
                print("The request failed. Error: \(error)")
            } else if let resultBook = task.result as? Place {
                // Do something with task.result.
                DispatchQueue.main.async(execute: {
                    self.testLabel.text = resultBook.venueName
                })
            }
            return nil
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doneTest(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    
    
}
