//
//  ViewController.swift
//  Final project
//
//  Created by Max Kiselyov on 10/31/23.
//

import UIKit

final class CountdownsTableViewController: UITableViewController {

    let identifire = "reusableIdentifire"
    
    override init(style: UITableView.Style) {
        super.init(style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CountdownTableViewCell.self, forCellReuseIdentifier: identifire)
        
        setupTitle()
        setupNavigationBar()
    }

    // MARK: - Methods
    @objc
    func sortButtonTapped() {
        
    }
    
    @objc
    func plusButtonTapped() {
        
    }

}

// MARK: - Navigation Item
private extension CountdownsTableViewController {
    func setupTitle() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Countdowns"
    }
    
    func setupNavigationBar() {
        // sort
        let sortButton = UIBarButtonItem(title: "Sort", style: .plain, target: self, action: #selector(sortButtonTapped))
        navigationItem.leftBarButtonItem = sortButton
        
        // add
        let addButtion = UIBarButtonItem(image: UIImage(systemName: "plus.circle"), style: .plain, target: self, action: #selector(plusButtonTapped))
        navigationItem.rightBarButtonItem = addButtion
        
    }
}

// MARK: - Delegates and Data Source
extension CountdownsTableViewController {
    //
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Countdown.sampleData.count
    }
    
    // тут инициируем создание ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = Countdown.sampleData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire) as! CountdownTableViewCell

        cell.emojiLabel.text = String(data.emoji)
        cell.nameLabel.text = data.name
        cell.dateLabel.text = formatDate(data.dateTime)
        cell.remainTimeLabel.text = timeDifference(from: data.dateTime).0
        cell.remainTimeUnitsLabel.text = timeDifference(from: data.dateTime).1
        cell.backgroundColor = data.color
        return cell
    }
    
    // высота ячейкт
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}

// MARK: - Working with dateTime
private extension CountdownsTableViewController {
    func timeDifference(from dateTime: Date) -> (String, String) {
        let currentTime = Date()
        let timeDifference = Int(dateTime.timeIntervalSince(currentTime))
        
        if timeDifference >= 60 * 60 * 24 { // Days
            let days = String(timeDifference / (60 * 60 * 24))
            return (days, "days left")
        } else if timeDifference >= 60 * 60 { // Hours
            let hours = String(timeDifference / (60 * 60))
            return (hours, "hours left")
        } else if timeDifference >= 60 { // Minutes
            let minutes = String(timeDifference / 60)
            return (minutes, "min. left")
        } else if timeDifference > 0 { // Seconds
            let seconds = String(timeDifference)
            return (seconds, "sec. left")
        } else {
            return ("V", "done!")
        }
    }
    
    func formatDate(_ dateTime: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E, MMM d, yyyy"
        dateFormatter.locale = Locale(identifier: "en_US") // Use the desired locale
        
        return dateFormatter.string(from: dateTime)
    }
}
