//
//  ViewController.swift
//  Pokemon Let's Go IV Calc
//
//  Created by Joshua Oki on 6/18/18.
//  Copyright © 2018 JTN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pokemonPicker: UIPickerView!
    var pokemonArray: [String] = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonArray.append("Bulbasaur")
        pokemonArray.append("Ivysaur")
        pokemonArray.append("Venusaur")

        // assign our class for delegates and datasource methods for the picker
        pokemonPicker.delegate = self
        pokemonPicker.dataSource = self

    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pokemonArray.count
    }
    
    //MARK:- UIPickerViewDelegates methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pokemonArray[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

