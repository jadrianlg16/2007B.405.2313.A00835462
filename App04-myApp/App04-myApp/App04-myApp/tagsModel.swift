//
//  tagsModel.swift
//  App04-myApp
//
//  Created by Alumno on 20/10/23.
//

// TagModel.swift

import SwiftUI
import SwiftyJSON
import Alamofire

@Observable
class TagsModel {
    var tags: [String] = []
    
    init() {
 
    }
    let baseURL = "http://localhost:5000"
    
    func fetchTags() {
        tags.removeAll()
        
        
        let url = "\(baseURL)/get_tags"
        //print(url)
        AF.request(url, method: .get, encoding: URLEncoding.default).responseData { [self] data in
            if let error = data.error{
                print("Error de conexion")
            }else{
                
                let json = try! JSON(data: data.data!)
                
                if json.count > 0 {
                    let tag = json[0]
                    let newTags = Tag(
                        id: tag["_id"].stringValue,
                        tags: (tag["tags"].arrayObject as? [String])!
                       
                    )
                    //print(newTags)
                    tags.append(contentsOf: newTags.tags)
                }
            }
        }
    }
}

