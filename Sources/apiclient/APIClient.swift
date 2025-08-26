import Foundation
import Alamofire

public class APIClient {
    public static let shared = APIClient()

    private init() {}

    public func getRequest(_ url: String, completion: @escaping (Result<Data, Error>) -> Void) {
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let afError):
                completion(.failure(afError))
            }
        }
    }
}
