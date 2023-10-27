//
//  PeopleViewModel.swift
//  UiKitCrashCourse
//
//  Created by Lucas Barroso IZ on 20/10/2023.
//

import Foundation

protocol PeopleViewModelDelegate: AnyObject {
    func didFinish()
    func didFail(error: Error)
}

class PeopleViewModel {
    private(set) var people = [PersonResponse]()
    
    weak var delegate: PeopleViewModelDelegate?
    
    @MainActor
    func getUsers() {
        Task { [weak self] in
            do {
                let url = URL(string: "https://reqres.in/api/users")!
                let (data, _) = try await URLSession.shared.data(from: url)
                
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                self?.people = try decoder.decode(UserResponse.self, from: data).data
                self?.delegate?.didFinish()
                
            } catch {
                self?.delegate?.didFail(error: error)
            }
        }
       
    }
}
