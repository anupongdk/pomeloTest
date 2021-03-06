//
//  PickUpRouter.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 26/8/2563 BE.
//  Copyright (c) 2563 anupong dorkkunm. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol PickUpRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol PickUpDataPassing
{
  var dataStore: PickUpDataStore? { get }
}

class PickUpRouter: NSObject, PickUpRoutingLogic, PickUpDataPassing
{
  weak var viewController: PickUpViewController?
  var dataStore: PickUpDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: PickUpViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: PickUpDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
