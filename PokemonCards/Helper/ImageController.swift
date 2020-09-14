import UIKit


class ImageController {
    static func getImage(for url: String, completion: @escaping (UIImage?) -> Void){
        guard let imageURL = URL(string: url) else{
            fatalError("Could not create url from string: \(url)")
        }
        NetworkController.performRequest(for: imageURL, httpMethod: .Get) {
            (data, error) in
            guard let data = data, let image = UIImage(data: data) else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
