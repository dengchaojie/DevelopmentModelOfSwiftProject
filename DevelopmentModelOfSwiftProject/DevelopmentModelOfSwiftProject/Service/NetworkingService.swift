


import UIKit
import Alamofire
import SwiftyJSON

class NetworkingService: NSObject {
    
    /// 网络工具类单例
    static let shared = NetworkingService()

    func post(path pathObj: String,
              parameters parametersObj: [String : Any]?,
              response responseObj: (@escaping (_ value: JSON?, _ errMsg:String?) -> ())
        ) {
        print("request == " + pathObj)
        print(parametersObj ?? "parameters is nil")

        let url = ServerBaseURL + pathObj
        
        Alamofire.request(url, method: HTTPMethod.post, parameters: parametersObj, encoding: JSONEncoding.default).responseJSON { (response) in
            print("response == " + pathObj)
            
            switch response.result
            {
                case .success(let value):
                    let json = JSON(value)
                    print(json)
                    responseObj(json, nil)
                case .failure(let error):
                    print(error)
                    responseObj(nil, error.localizedDescription)
            }
        }
    }
}
