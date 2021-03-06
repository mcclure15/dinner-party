//
//  AllEventsTableViewController.swift
//  Dinner Party
//
//  Created by Matthew McClure on 6/22/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

class AllEventsTableViewController: UITableViewController {
  
  var eventsList = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
      loadSampleEvents()
      for event in eventsList {
        println(event.name)
      }
      
    }
  
  func loadSampleEvents(){
    let event1 = Event(name: "Dinner with the Simpsons", eventDate: "July 24th, 7:00pm" , location: "1200 E. Pike St")
    let event2 = Event(name: "Thanksgiving", eventDate: "November 25, 6:00pm", location: "Aunt Jane's")
    let event3 = Event(name: "Payton's Birthday", eventDate: "October 3, 7:30pm", location: "84 Vine Grove Lane")
    eventsList.append(event1)
    eventsList.append(event2)
    eventsList.append(event3)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return eventsList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath) as! UITableViewCell
        let indexPath = indexPath.row
        // Configure the cell...
        cell.textLabel!.text = eventsList[indexPath].name
        cell.detailTextLabel!.text = eventsList[indexPath].eventDate
        return cell
    }
  
  
  // how to load from plist with multiple data types??
//  private func loadEventsFromPlist(){
//    if let eventPath = NSBundle.mainBundle().pathForResource("SampleEvents", ofType: "plist"),
//      eventObjects = NSArray(contentsOfFile: eventPath) as? [[String : String]]{
//        for event in eventObjects {
//          if let name = event["Name"],
//             date = NSDate((event["Date"])), location = event["Location"], invitedGuests = event["InvitedGuests"]{
//              let event = Event(name: name, eventDate: date, location: location)
//          }
//        }
//    }
//  }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
