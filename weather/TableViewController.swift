////
////  TableViewController.swift
////  weather
////
////  Created by daiki nishimura on 2022/09/06.
////
//
//import UIKit
//
//class TableViewController: UIViewController {
//
//    var url = "https://api.openweathermap.org/data/2.5/forecast?units=metric&q=Tokyo&APPID=a864548fe8258d59805cf3110764c015"
//    var cellItems = NSMutableArray()
//    let cellNum = 10
//    var selectedInfo :String?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        makeTableData()
//    }
//
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.cellNum
//    }
//
//    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        if self.cellItems.count > 0 {
//            cell.textLabel?.text = self.cellItems[indexPath.row] as? String
//        }
//        return cell
//    }
//
//    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//            self.selectedInfo = self.cellItems[indexPath.row] as! String?
//            performSegue(withIdentifier: "toDetail", sender: nil)
//        }
//
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if (segue.identifier == "toDetail") {
//            let viewController : ViewController = segue.destination as! ViewController
//            viewController.info = self.selectedInfo
//        }
//    }
//
//    func makeTableData() {
//        let url = URL(string: self.url)!
//        let task = URLSession.shared.dataTask(with: url) {data, response, error in
//
//            if let data = data {
//                let decoder = JSONDecoder()
//            }
//            do {
//                let decoder = try decoder.decode()
//            }
////            let json = JSONDecoder()
////            let decoded = try decoder.decode(User.self, from: data)
////                    completion(decoded)
////                for var i = 0; i < self.cellNum; i++ {
////                    let dt_txt = json["list"][i]["dt_txt"]
////                    let weatherMain = json["list"][i]["weather"][0]["main"]
////                    let weatherDescription = json["list"][i]["weather"][0]["description"]
////                    let info = "\(dt_txt), \(weatherMain), \(weatherDescription)"
////                    print(info)
////                    self.cellItems[i] = info
////                }
////                self.tableView.reloadData()
////            })
//            task.resume()
//        }
//
//}
//