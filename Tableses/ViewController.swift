//
//  ViewController.swift
//  Tableses
//
//  Created by Валентин Гуріненко on 02.12.2019.
//  Copyright © 2019 Валентин Гуріненко. All rights reserved.
//

import UIKit

var sections = ["Учні", "Вибули", "Вільні слухачі"]

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
            
            var identifire = indexPath.section == 0 ? "BasicCell" : "BasicCell1"
            if indexPath.section == 2 {
                identifire = "BasicCell2"
            }
            
            let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
            
            
            
            cell.textLabel?.text = "\(students)"
            return cell
        }
    }
    

// MARK: - UITableViewDelegate
    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                switch section {
                case 0:
                    return "\(sections[0])"
                case 1:
                    return "\(sections[1])"
                default:
                    return "\(sections[2])"
                }
            }
    }
    


