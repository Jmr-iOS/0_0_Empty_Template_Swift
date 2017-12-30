//
//  ViewController.swift
//  EncodeExperiments
//
//  Created by dasdom on 16.08.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//
//  @todo   file and fcn headers
//
import UIKit


class ViewController: UIViewController {

    
    override func viewDidLoad() {

        var me : Person;
        var retrievedPerson : Person?;
        var status : Bool;
        
        super.viewDidLoad()

        //Retrieve
        retrievedPerson = Person.decode();
        status = (retrievedPerson != nil);
        
        //Check if nil
        if(retrievedPerson != nil) {
            print("found");
            me = retrievedPerson!;
            
        } else {
            print("not found, creating new");
            me = Person(firstName: "Justin", lastName: "Reina");
        }
        
        print("ViewController.viewDidLoad():   1 - \(me.firstName) \(me.lastName) - \(status)");

        //Update
        me.firstName = me.firstName + "!";
        me.lastName  = me.lastName + "?";

        print("ViewController.viewDidLoad():   2 - \(me.firstName) \(me.lastName)");

        //Store
        Person.encode(person: me);
        
        //Retrieve
        retrievedPerson = Person.decode()!;
        
        print("ViewController.viewDidLoad():   3 - \(retrievedPerson!.firstName) \(retrievedPerson!.lastName)");

        return;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        return;
    }
}

