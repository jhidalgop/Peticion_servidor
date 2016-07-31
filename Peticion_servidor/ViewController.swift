//
//  ViewController.swift
//  Peticion_servidor
//
//  Created by Juan Hidalgo Puertas on 26/7/16.
//  Copyright © 2016 Juan Hidalgo Puertas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoBusqueda: UITextField!
    
    @IBOutlet weak var salidaTexto: UITextView!
    
    @IBAction func buscarLibro(sender: AnyObject) {
        var urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        urls += textoBusqueda.text!
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding: NSUTF8StringEncoding)
        salidaTexto.text = String(texto)
        print (texto!)
        
    }
    
    @IBAction func limpiar(sender: AnyObject) {
        textoBusqueda.text=""
        
    }
   /* func peticion() {
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding: NSUTF8StringEncoding)
        print (texto!)
        
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //peticion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

