//
//  StorageManager.swift
//  Instagram
//
//  Created by Evren Ustun on 19.07.2022.
//

import FirebaseStorage

public class StorageManager {
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void) {
         
    }
    
    public func downloadImage(with referance: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void) {
        bucket.child(referance).downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            completion(.success(url))

        } )
    }
    
}
