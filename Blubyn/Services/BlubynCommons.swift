//
//  BlubynCommons.swift
//  Blubyn
//
//  Created by JOGENDRA on 11/02/18.
//  Copyright © 2018 Jogendra Singh. All rights reserved.
//

import Foundation
import FBSDKLoginKit
import FirebaseAuth

public class BlubynCommons {
    
    // Fetch User's Public Facebook Profile Data
    class func fetchUserProfileData(completion: @escaping(_ connection: FBSDKGraphRequestConnection?, _ result: Any?, _ error: Error?) -> Void) {
        let params = ["fields": "id, email, first_name, last_name, picture"]
        FBSDKGraphRequest(graphPath: "me", parameters: params).start(completionHandler: { connection, result, error in
            completion(connection, result, error)
        })
    }
    
    class func firebaseSignOut() {
        try? Auth.auth().signOut()
    }
}
