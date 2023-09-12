//
//  TableViewController.swift
//  MapViewHW
//
//  Created by Alua Nurakhanova on 10.09.2023.
//

import UIKit

class TableViewController: UITableViewController {
    var museumsArray = [
        Museum(name:"Louvre Museum", description: """
    The Louvre or the Louvre Museum , is a national art museum in Paris, France. It is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward) and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo. The museum is housed in the Louvre Palace, originally built in the late 12th to 13th century under Philip II. Remnants of the Medieval Louvre fortress are visible in the basement of the museum. Due to urban expansion, the fortress eventually lost its defensive function, and in 1546 Francis I converted it into the primary residence of the French Kings.
""", photo: "louvre", latitude: 2.338629, longtitude: 48.860294),
        Museum(name:"Metropolitan Museum of Art", description: """
    The Metropolitan Museum of Art in New York City, colloquially "the Met", is the largest art museum in the Americas. In 2022 it welcomed 3,208,832 visitors, ranking it the third most visited U.S museum, and eighth on the list of most-visited art museums in the world. Its permanent collection contains over two million works, divided among 17 curatorial departments. The main building at 1000 Fifth Avenue, along the Museum Mile on the eastern edge of Central Park on Manhattan's Upper East Side, is by area one of the world's largest art museums. The first portion of the approximately 2-million-square-foot (190,000 m2) building was built in 1880. A much smaller second location, The Cloisters at Fort Tryon Park in Upper Manhattan, contains an extensive collection of art, architecture, and artifacts from medieval Europe.
""", photo: "metropolitan", latitude: -73.963402, longtitude: 40.779434),
        Museum(name: "British Museum", description: """
    The British Museum is a public museum dedicated to human history, art and culture located in the Bloomsbury area of London. Its permanent collection of eight million works is the largest in the world. It documents the story of human culture from its beginnings to the present.The British Museum was the first public national museum to cover all fields of knowledge.

    In 2022 the museum received 4,097,253 visitors, an increase of 209 per cent from 2021. It ranked third in the list of most-visited art museums in the world.

    The museum was established in 1753, largely based on the collections of the Anglo-Irish physician and scientist Sir Hans Sloane. It first opened to the public in 1759, in Montagu House, on the site of the current building. The museum's expansion over the following 250 years was largely a result of British colonisation and resulted in the creation of several branch institutions, or independent spin-offs, the first being the Natural History Museum in 1881. The right to ownership of some of its most well-known acquisitions, notably the Greek Elgin Marbles and the Egyptian Rosetta Stone, is subject to long-term disputes and repatriation claims.
""", photo:"british museum", latitude: 51.518757, longtitude: -0.126168),
        Museum(name : "Uffizi Gallery", description: """
    The Uffizi Gallery is a prominent art museum located adjacent to the Piazza della Signoria in the Historic Centre of Florence in the region of Tuscany, Italy. One of the most important Italian museums and the most visited, it is also one of the largest and best-known in the world and holds a collection of priceless works, particularly from the period of the Italian Renaissance.

    After the ruling House of Medici died out, their art collections were given to the city of Florence under the famous Patto di famiglia negotiated by Anna Maria Luisa, the last Medici heiress. The Uffizi is one of the first modern museums. The gallery had been open to visitors by request since the sixteenth century, and in 1769 it was officially opened to the public, formally becoming a museum in 1865.
""" , photo: "uffizi", latitude: 43.767776, longtitude: 11.255255),
        Museum(name: "Hermitage", description: """
    The State Hermitage Museum is a museum of art and culture in Saint Petersburg, Russia. It was founded in 1764 when Empress Catherine the Great acquired a collection of paintings from the Berlin merchant Johann Ernst Gotzkowsky. The museum celebrates the anniversary of its founding each year on 7 December, Saint Catherine's Day. It has been open to the public since 1852. The Art Newspaper ranked the museum 10th in their list of the most visited art museums, with 2,812,913 visitors in 2022.
""", photo: "hermitage", latitude: 59.937500, longtitude: 30.308611)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return museumsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let labelName = cell.viewWithTag(1) as! UILabel
        labelName.text = museumsArray[indexPath.row].name
        
        let lableDescription = cell.viewWithTag(3) as! UILabel
        lableDescription.text = museumsArray[indexPath.row].description
        
        let imageView = cell.viewWithTag(2) as! UIImageView
        imageView.image = UIImage(named: museumsArray[indexPath.row].photo)
        

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        detailVC.museum = museumsArray[indexPath.row]
        navigationController?.show(detailVC, sender: self)
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
