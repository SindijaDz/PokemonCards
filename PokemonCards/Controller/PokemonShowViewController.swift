//
//  PokemonShowViewController.swift
//  PokemonCards
//
//  Created by sindija.dzintare on 14/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class PokemonShowViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hpLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var seriesLabel: UILabel!
    @IBOutlet var setLabel: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "", completion: { (image) in
                self.imageView.image = image
            })
        }else{
                print("pokemon image is nil")
            }
        }
    }


