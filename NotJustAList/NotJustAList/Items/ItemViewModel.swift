//
//  ItemViewModel.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/10/20.
//

import Foundation

struct ItemLoadingError: Error {
    // TBD
}

final class Remote<A>: ObservableObject {
    @Published var result: Result<A, Error>? = nil
    var value: A? {
        try? result?.get()
    }
    
    let url: URL?
    let transform: (Data) -> A?
    
    init(url: URL?, transform: @escaping (Data)->A?){
        self.url = url
        self.transform = transform
    }
    
    func load(){
        guard let url = url else {
            self.result = .failure(ItemLoadingError())
            return
        }
        URLSession.shared.dataTask(with: url) {(data, _, _) in
            DispatchQueue.main.async{
                if let data = data,
                   let v = self.transform(data){
                    self.result = .success(v)
                } else{
                    self.result = .failure(ItemLoadingError())
                }
            }
        }.resume()
    }
}
