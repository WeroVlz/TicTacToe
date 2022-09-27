//
//  ViewController.swift
//  Practica1
//
//  Created by Alumno on 21/09/22.
//

import UIKit

class ViewController: UIViewController {

    var tablero = [[0,0,0], [0,0,0], [0,0,0]]
    var jugadorx = true;
    var turnos = 0
    
    
    @IBOutlet weak var uno: UIButton!
    @IBOutlet weak var dos: UIButton!
    @IBOutlet weak var tres: UIButton!
    @IBOutlet weak var cuatro: UIButton!
    @IBOutlet weak var cinco: UIButton!
    @IBOutlet weak var seis: UIButton!
    @IBOutlet weak var siete: UIButton!
    @IBOutlet weak var ocho: UIButton!
    @IBOutlet weak var nueve: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //holaMundo.text = "Hola Alex"
        
        
    }

    @IBAction func uno(_ sender: Any) {
        
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            uno.setTitle("X", for: .normal)
            tablero[0][0] = 1
            
        }
        else{
            jugadorx = true
            uno.setTitle("O", for: .normal)
            tablero[0][0] = 2
        }
        
        uno.isEnabled = false
        ganador()
    }
    
    func ganador(){
        if(tablero[0][0] == 1 && tablero[0][1] == 1 && tablero[0][2] == 1){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador x es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[0][0] == 2 && tablero[0][1] == 2 && tablero[0][2] == 2){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador y es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[1][0] == 1 && tablero[1][1] == 1 && tablero[1][2] == 1){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador x es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[1][0] == 2 && tablero[1][1] == 2 && tablero[1][2] == 2){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador y es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[2][0] == 1 && tablero[2][1] == 1 && tablero[2][2] == 1){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador x es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[2][0] == 2 && tablero[2][1] == 2 && tablero[2][2] == 2){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador y es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        if(tablero[0][0] == 1 && tablero[1][0] == 1 && tablero[2][0] == 1){
            let mensaje = UIAlertController(title: "ganador", message: "Jugador x es el ganador", preferredStyle: .alert)
            
            let continuar = UIAlertAction(title: "Continuar", style: .default, handler: {(action) -> Void in self.reiniciaJuego()})
            
            mensaje.addAction(continuar)
            
            self.present(mensaje, animated: true, completion: nil)
        }
        
    }
                                          
    func reiniciaJuego(){
        uno.isEnabled = true
        dos.isEnabled = true
        tres.isEnabled = true
        cuatro.isEnabled = true
        cinco.isEnabled = true
        seis.isEnabled = true
        siete.isEnabled = true
        ocho.isEnabled = true
        nueve.isEnabled = true

    }
    
    @IBAction func dos(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            dos.setTitle("X", for: .normal)
            tablero[0][1] = 1
            
        }
        else{
            jugadorx = true
            dos.setTitle("O", for: .normal)
            tablero[0][1] = 2
        }
        
        dos.isEnabled = false
        ganador()
    }

    
    @IBAction func tres(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            tres.setTitle("X", for: .normal)
            tablero[0][2] = 1
            
        }
        else{
            jugadorx = true
            tres.setTitle("O", for: .normal)
            tablero[0][2] = 2
        }
        
        tres.isEnabled = false
        ganador()
    }

    @IBAction func cuatro(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            cuatro.setTitle("X", for: .normal)
            tablero[1][0] = 1
            
        }
        else{
            jugadorx = true
            cuatro.setTitle("O", for: .normal)
            tablero[1][0] = 2
        }
        
        cuatro.isEnabled = false
        ganador()
    }
    
    
    @IBAction func cinco(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            cinco.setTitle("X", for: .normal)
            tablero[1][1] = 1
            
        }
        else{
            jugadorx = true
            cinco.setTitle("O", for: .normal)
            tablero[1][1] = 2
        }
        
        cinco.isEnabled = false
        ganador()
    }
    
    
    @IBAction func seis(_ sender: Any) {
        
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            seis.setTitle("X", for: .normal)
            tablero[1][2] = 1
            
        }
        else{
            jugadorx = true
            seis.setTitle("O", for: .normal)
            tablero[1][2] = 2
        }
        
        seis.isEnabled = false
        ganador()
    }
    
    
    @IBAction func siete(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            siete.setTitle("X", for: .normal)
            tablero[2][0] = 1
            
        }
        else{
            jugadorx = true
            siete.setTitle("O", for: .normal)
            tablero[2][0] = 2
        }
        
        siete.isEnabled = false
        ganador()
    }
    
    @IBAction func ocho(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            ocho.setTitle("X", for: .normal)
            tablero[2][1] = 1
            
        }
        else{
            jugadorx = true
            ocho.setTitle("O", for: .normal)
            tablero[2][1] = 2
        }
        
        ocho.isEnabled = false
        ganador()
    }
    
    
    @IBAction func nueve(_ sender: Any) {
        turnos += 1
        
        
        if(jugadorx)
        {
            jugadorx = false
            nueve.setTitle("X", for: .normal)
            tablero[2][2] = 1
            
        }
        else{
            jugadorx = true
            nueve.setTitle("O", for: .normal)
            tablero[2][2] = 2
        }
        
        nueve.isEnabled = false
        ganador()
    }
    
}
