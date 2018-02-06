//
//  GroupChatRoomViewController.swift
//  HowlTalk
//
//  Created by 유명식 on 2018. 2. 7..
//  Copyright © 2018년 swift. All rights reserved.
//

import UIKit
import Firebase

class GroupChatRoomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Database.database().reference().child("users").observeSingleEvent(of: DataEventType.value, with: {(datasnapshot) in
            let dic = datasnapshot.value as! [String:AnyObject]
            print(dic.count)
            
        })
        // Do any additional setup after loading the view.
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

}
