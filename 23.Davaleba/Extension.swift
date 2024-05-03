//
//  Extension.swift
//  23.Davaleba
//
//  Created by Data on 03.05.24.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        factsCats.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellForPets", for: indexPath) as? CellForPets else {
                return UITableViewCell()
            }
        cell.selectionStyle = .none
        let newsItem = factsCats[indexPath.section]
        cell.configure(textOfFacts: newsItem.fact)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        15
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
}

extension ViewController: UITableViewDelegate {
    
}
