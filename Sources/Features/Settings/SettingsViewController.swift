//
//  SettingsViewController.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit
class NavBar: UINavigationBar {
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var amendedSize = super.sizeThatFits(size)
        amendedSize.height += 45
        return amendedSize
    }
}
protocol SettingsDisplayLogic: class {
}

class SettingsViewController: UIViewController {
    lazy private var contentView = self.view as? SettingsView
    let interactor: SettingsBusinessLogic

    init(interactor: SettingsBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func loadView() {
        view = SettingsView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

//        navigationController?.navigationBar = NavBar()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
extension SettingsViewController: SettingsDisplayLogic {

}

extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
