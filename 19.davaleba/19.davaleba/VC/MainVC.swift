//
//  MainVC.swift
//  19.davaleba
//
//  Created by Data on 19.04.24.
//

import UIKit

class MainVC: UIViewController {
    
    var newsModel = [Desctiption]()
    var urlLinkFromImedi = "https://imedinews.ge/api/categorysidebarnews/get#"
    
    let tableViewOfNews: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .none //TableView-ze xazebis gasakrobad
        tableView.allowsSelection = true
        tableView.backgroundColor = .white
        tableView.rowHeight = 108
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CellForNews.self, forCellReuseIdentifier: "CellForNews")
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addTavleViewOfNews()
        getNewsFromImedi()
    }
    
    func getNewsFromImedi() {
        NetworkService().getData(urlString: urlLinkFromImedi) { (result: Result<Lists,Error>) in
            switch result {
            case .success(let success):
                self.newsModel = success.list
                self.tableViewOfNews.reloadData()
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func addTavleViewOfNews() {
        view.addSubview(tableViewOfNews)
        NSLayoutConstraint.activate([
            tableViewOfNews.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            tableViewOfNews.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            tableViewOfNews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            tableViewOfNews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
        setupData()
    }
    
    func setupData() {
        title = "Panicka News"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableViewOfNews.dataSource = self
        tableViewOfNews.delegate = self
    }
}

extension MainVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        newsModel.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellForNews", for: indexPath) as? CellForNews else {
                return UITableViewCell()
            }
        cell.selectionStyle = .none
        let newsItem = newsModel[indexPath.section]
        
        cell.configure(time: newsItem.time, title: newsItem.title, image: newsItem.photoUrl)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        15
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextView = NewsDetailed()
        let newsItem = newsModel[indexPath.section]
        
        for news in newsModel {
            if newsItem.title == news.title {
                nextView.newTitle = newsItem.title
                nextView.timeText = newsItem.time
                nextView.image = newsItem.photoUrl
                
                navigationController?.pushViewController(nextView, animated: true)
            }
        }
        
    }
}

extension MainVC: UITableViewDelegate {
    
}


