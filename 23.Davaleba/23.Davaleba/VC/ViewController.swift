//
//  ViewController.swift
//  23.Davaleba
//
//  Created by Data on 03.05.24.
//

import UIKit
import NetworkService

class ViewController: UIViewController {
    
    // MARK: - properties
    var urlLinkFromImedi = "https://catfact.ninja/facts?https://catfact.ninja/facts?limit=30=30"
    
    var factsCats = [Facts]()
    
    let tableViewOfPets: UITableView = {
        let tableView = UITableView()
//        tableView.separatorStyle = .none
//        tableView.allowsSelection = true
        tableView.backgroundColor = .white
        tableView.rowHeight = 108
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CellForPets.self, forCellReuseIdentifier: "CellForPets")
        return tableView
    }()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addLayoutsForTableView()
        getNewsFromImedi()
    }
    
    // MARK: - function
    func addLayoutsForTableView() {
        view.addSubview(tableViewOfPets)
        
        NSLayoutConstraint.activate([
            tableViewOfPets.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            tableViewOfPets.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            tableViewOfPets.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            tableViewOfPets.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
        setupData()
    }
    
    func setupData() {
        title = "Pets Info"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableViewOfPets.dataSource = self
        tableViewOfPets.delegate = self
    }
    
    


    func getNewsFromImedi() {
        NetworkService().getData(urlString: urlLinkFromImedi) { (result: Result<FactsInfo,Error>) in
            switch result {
            case .success(let success):
                self.factsCats = success.data
                self.tableViewOfPets.reloadData()
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
