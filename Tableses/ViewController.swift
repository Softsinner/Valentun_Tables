//
//  ViewController.swift
//  Tableses
//
//  Created by Валентин Гуріненко on 02.12.2019.
//  Copyright © 2019 Валентин Гуріненко. All rights reserved.
//

import UIKit

var sections = ["Учні", "Вільні слухачі", "Вибули"]

var students = ["Бондар Павло", "Вождай Ігор", "Демченко Михайло", "Запорожець Максим", "Ілюшенко Ілля", "Nedopaka Alexander", "Таченко Дмитро", "Гуріненко Валентин"]

var off = ["Горошнюк Вячеслав", "БЕРЕЗА МАРИНА",]

var free = ["Пухлій Віталій", "Сагайдак Ілля", "Шурман Андрій", "Лавренко Віталій", "Братчикова Дар'я", "Крістіна",]

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
}
  
// MARK: - UITableViewDataSource
    extension ViewController: UITableViewDataSource {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            3
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection  section: Int) -> Int {
            switch section {
            case 0:
                return 8
            case 1:
            return 2
            default:
                return 6
            }
            
            }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let identifire = indexPath.section == 0 ? "BasicCell" : "BasicCell1"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
            
            cell.textLabel?.text = "Гуріненко Валентин"
            return cell
        }
    
    }
    

// MARK: - UITableViewDelegate
    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            "Section \(section)"
        }
    }
    


