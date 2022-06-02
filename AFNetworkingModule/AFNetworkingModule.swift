import Alamofire

public class AFNetworkingModule {
    public init() {}
    public func networkingModule<T1: Decodable, T2: Error>(url: String, onCompletion: @escaping (Result<T1, T2>) -> Void) {
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: T1.self) { response in
            if let list = response.value {
                onCompletion(.success(list))
            } else {
                onCompletion(.failure(T2.self as! T2))
            }
        }
    }
}
