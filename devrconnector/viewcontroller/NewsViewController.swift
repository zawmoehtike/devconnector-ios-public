//
//  HomeViewController.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import UIKit
import RxSwift

class NewsViewController: UIViewController {
    
    let viewModel = NewsViewModel()
    let bag = DisposeBag()
    
    @IBOutlet weak var tableViewNews: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initUI()
        loadData()
        observeResponse()
    }
    
    private func initUI() {
        tableViewNews.register(UINib(nibName: NewsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: NewsTableViewCell.identifier)
    }
    
    private func loadData() {
        viewModel.requestData()
    }

    private func observeResponse() {
        viewModel.newsObs.observeOn(MainScheduler.instance)
            .bind(to: tableViewNews.rx.items) { tableView, index , item in
                let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.identifier, for: IndexPath(row:index,section: 0)) as! NewsTableViewCell
                cell.mData = item
                return cell
        }.disposed(by: bag)
    }
}
