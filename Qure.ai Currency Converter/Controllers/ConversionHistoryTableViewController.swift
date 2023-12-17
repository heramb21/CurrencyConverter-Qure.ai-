//
//  ConversionHistoryTableViewController.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 17/12/23.
//

import UIKit

class ConversionHistoryTableViewController: UITableViewController {

    // MARK: - Properties
    var conversionData: [ConversionHistoryData] = []
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Conversion History"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
//        print(conversionData)
        tableView.register(UINib(nibName: "ConversionHistoryCell", bundle: nil), forCellReuseIdentifier: "cellHistory")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversionData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHistory", for: indexPath) as! ConversionHistoryCell
        cell.lblLeftCurrency.text = conversionData[indexPath.row].fromCurrency
        cell.txtLeftInput.text = conversionData[indexPath.row].fromAmount?.description
        cell.lblRightCurrency.text = conversionData[indexPath.row].toCurrency
        cell.txtRightInput.text = conversionData[indexPath.row].toAmount?.description
        let leftImg = conversionData[indexPath.row].fromCurrency?.lowercased()
        cell.imgLeftCurrency.image = UIImage(named: leftImg ?? "")
        let rightImg = conversionData[indexPath.row].toCurrency?.lowercased()
        cell.imgRightCurrency.image = UIImage(named: rightImg ?? "")
        cell.selectionStyle = .none
        return cell
    }
     

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
