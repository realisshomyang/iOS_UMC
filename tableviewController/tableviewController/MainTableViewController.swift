//
//  TableViewController.swift
//  tableviewController
//
//  Created by 조명근 on 2022/10/15.
//
import UIKit
import Lottie

let formatter : DateFormatter = {
       let format = DateFormatter()
       format.dateStyle = .short
       format.timeStyle = .short
       return format
       }()

class MainTableViewController: UITableViewController {
    let refreshControll : UIRefreshControl = UIRefreshControl()
    override func viewWillAppear(_ animated: Bool) {
            tableView.reloadData()
        }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MemoContents.imsiList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

            // Configure the cell...
            let target = MemoContents.imsiList[indexPath.row]   // indexPath.row에 접근하여 몇번째 셀인지 알 수 있고, 해당 번째의 배열을 호출한다.
            
            cell.textLabel?.text = target.contents              // subtitle : 내용
            cell.detailTextLabel?.text = formatter.string(from: target.date) // subtitle : 날짜
                
            return cell
        }
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            // 왼쪽에 만들기
            
            let like = UIContextualAction(style: .normal, title: "삭제") { (UIContextualAction, UIView, success: @escaping (Bool) -> Void) in
                success(true)
            }
            like.backgroundColor = .systemPink
            
            
            
            //actions배열 인덱스 0이 왼쪽에 붙어서 나옴
            return UISwipeActionsConfiguration(actions:[like])
            
        }
    func settingRefreshControl(){
            
            //당겨서 새로고침을 할 때, 해줄 함수적 기능을 넣어준다.
            refreshControll.addTarget(self, action: #selector(self.refreshFunction), for: .valueChanged)

        }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.refreshControl = refreshControll
        settingRefreshControl()
    }
    @objc func refreshFunction(){
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            self.refreshControll.endRefreshing()
        }
            tableView.reloadData()
        }

}
