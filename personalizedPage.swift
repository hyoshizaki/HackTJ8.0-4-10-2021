//
//  personalizedpage.swift
//  HackTJ4-10-2021
//
//  Created by Shuji Yoshizaki on 4/10/21.
//

import UIKit

struct Category {
    let title: String
    let items:[String]
    
}
class personalizedpage: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tempLabel: UILabel!
    func tableView( tableview: UITableView, didSelectRowAt indexPath:
                        IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        let category = data[indexPath.row]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var s = String()
        var tempIndex = 0;
        while(tempIndex < array.count && !array[tempIndex]){
            tempIndex += 1
        }
        if tempIndex < array.count {
            array[tempIndex] = false
        }
        for i in 0...data[tempIndex].items.count - 1{
            s.append(String(data[tempIndex].items[i]))
        }
        cell.textLabel?.text = s
        return cell
    }
    

    private let tableview:  UITableView = {
            let table = UITableView()
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        return table
    }()
    
    public let data : [Category] = [
        Category(title: "Pets", items: ["Vet records ","leash and collar ","cage "]),
        Category(title: "Pregnant", items: ["medication ","nutrient high foods (protein bars, nuts, etc)","sanitary blankets"]),
        Category(title: "Baby", items: ["baby food ","diapers ","crib"]),
        Category(title: "mobile impairment", items: ["extra wheel chair"]),
        Category(title: "need medication", items: ["extra medication for habitual disease"]),
        Category(title: "tsunami", items: ["extra boots ", "dry clothes"]),
        Category(title: "eq", items: ["ax", "shovel ", "rope"]),
        Category(title: "flood", items: ["rain boots ", "thicc blankets"]),
        Category(title: "wild fire", items: ["masks"]),
        Category(title: "tornado", items: [""]),
        Category(title: "drought", items: ["extra water"]),
        Category(title: "hurricane", items: ["rain coat ", "thicc blankets"]),
        Category(title: "temp", items: [""])
    ]
    
    public var array = [Bool]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}/*
extension ViewController: UITableViewDelegate {
    func tableView( tableview: UITableView, didSelectRowAt indexPath:
                        IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        let catagory = data(indexPath.row)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
*/
