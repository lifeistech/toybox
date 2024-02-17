//
//  TextHistoryTableViewController.swift
//  Singleton
//
//  Created by 保坂篤志 on 2024/02/17.
//

import UIKit

class TextHistoryTableViewController: UIViewController {
    
    //このように書くことで、allHistoryを呼び出すとgetAllTextHistory()を呼び出し、その結果を返してくれます
    var allHistory: [String] {
        return TextDataModel.shared.getAllTextHistory()
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    func setupTableView() {
        tableView.dataSource = self
    }
}

extension TextHistoryTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //cell.textLabelを指定するのではなく、configurationを使って文字を追加する方が現在では推奨されています
        var config = cell.defaultContentConfiguration()
        config.text = allHistory[indexPath.row]
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allHistory.count
    }
}
