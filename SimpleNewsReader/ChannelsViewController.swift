//
//  ViewController.swift
//  SimpleNewsReader
//
//  Created by Krol, Ilya on 24/12/2018.
//  Copyright © 2018 Ilya Krol. All rights reserved.
//

import UIKit
import CoreData

class ChannelsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var channels: [Channel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchSubscribedChannels()
        if (channels.isEmpty) {
            
        }
    }
    
    private func fetchSubscribedChannels() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<Channel>(entityName: "Channel")
        do {
            channels = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    // MARK: - UITableViewDelegate
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

