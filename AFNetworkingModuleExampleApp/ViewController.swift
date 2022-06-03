import UIKit
import AFNetworkingModule

struct Character: Decodable {
    let identifier: Int
    let name: String
    let status: String
    let species: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case name
        case status
        case species
        case image
    }
}

struct CharactersList: Decodable {
    let results: [Character]
}

struct ApiCallError: Error {
    let message: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AFNetworkingModule().networkingModule(url: "https://rickandmortyapi.com/api/character") { (result: Result<CharactersList, ApiCallError>) in
            switch result {
            case .success(let list):
                print(list.results)
            case .failure(let error):
                print(error)
            }
        }
    }

}
