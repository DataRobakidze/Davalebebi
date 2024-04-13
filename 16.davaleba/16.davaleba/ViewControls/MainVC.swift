//
//  MainVC.swift
//  16.davaleba
//
//  Created by Data on 12.04.24.
//

import UIKit


class MainVC: UIViewController {
    
    var iosDevelopers = [String]()
    
    var sectionTitle = [String]()
    
    var iosDevelopersDict = [String: [String]]()
    
    let LargeTitle: UILabel = {
        let squad = UILabel()
        
        squad.text = "iOS Squad"
        squad.textColor = .black
        squad.font = UIFont.systemFont(ofSize: 34)
        squad.font = UIFont.boldSystemFont(ofSize: 41)
        squad.translatesAutoresizingMaskIntoConstraints = false
        
        return squad
    }()
    
    let tableViewOfSquad: UITableView = {
        let tableView = UITableView()
        
        tableView.backgroundColor = .white
//        tableView.rowHeight = 100
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "iOS Squad"
        
        squadTitle()
        
        iosDevelopers = ["nodar ghachava", "elene donadze", "temuri chitashvili", "irina datoshvili", "tornike elkanashvili", "ana ioramashvili", "nini bardavelidze", "barbare tepnadze", "mariam sreseli", "valeri mekhashishvili", "zuka papuashvili", "nutsa beriashvili", "luka kharatishvili", "data robakidze", "nika kakhniashvili", "sandro gelashvili", "ana namgaladze", "bakar kharabadze", "archil menabde", "tamuna kakhidze", "giorgi michitashvili", "salome topuria", "luka gujejiani", "gega tatulishvili", "raisa badalova", "aleksandre saroiani", "begi kopaliani", "akaki titberidze", "sandro kupatadze", "gvantsa gvagvalia", "vano kvakhadze"
        ]
        addTableView()
        
        sectionTitle = Array(Set(iosDevelopers.compactMap({String($0.prefix(1))})))
        sectionTitle.sort()
        sectionTitle.forEach({iosDevelopersDict[$0] = [String]()})
        iosDevelopers.forEach({iosDevelopersDict[String($0.prefix(1))]?.append($0)})
    }
    
    func squadTitle() {
        view.addSubview(LargeTitle)
        LargeTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        LargeTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        LargeTitle.heightAnchor.constraint(equalToConstant: 41).isActive = true
    }
    
    func addTableView() {
        view.addSubview(tableViewOfSquad)
        setTableViewDelegates()
        
        
        //constraints
        tableViewOfSquad.topAnchor.constraint(equalTo: LargeTitle.bottomAnchor, constant: 25 ).isActive = true
        tableViewOfSquad.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableViewOfSquad.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableViewOfSquad.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableViewOfSquad.register(ContactCell.self, forCellReuseIdentifier: "cell")
        
//        tableViewOfSquad.register(MainVC.self, forCellReuseIdentifier: "cell")
    }
    
    func setTableViewDelegates() {
        tableViewOfSquad.delegate = self
        tableViewOfSquad.dataSource = self
    }
}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iosDevelopersDict[sectionTitle[section]]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = iosDevelopersDict[sectionTitle[indexPath.section]]?[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitle[section]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        sectionTitle
    }
    
    
}




class ContactCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview {
    MainVC()
}
