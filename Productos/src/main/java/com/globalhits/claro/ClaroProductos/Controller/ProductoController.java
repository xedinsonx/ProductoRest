package com.globalhits.claro.ClaroProductos.Controller;

import com.globalhits.claro.ClaroProductos.Entity.Producto;
import com.globalhits.claro.ClaroProductos.Service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//creamos la clase ProductoController
@RestController
@RequestMapping("/producto")
public class ProductoController {

 //Inyeccion de dependencias de la clase ProductoService
    @Autowired
    ProductoService productoService;
// Listamos los Productos
    @GetMapping("/lista")
    public ResponseEntity<List<Producto>> lista() {
        List<Producto> lista = productoService.lista();
        return new ResponseEntity(lista, HttpStatus.OK);
    }
// Cargamos Los Productos

    @PostMapping("/nuevo")
    public ResponseEntity<?> save(@RequestBody Producto producto) {
        productoService.saveProcedure(producto);
        return new ResponseEntity("Producto guardado", HttpStatus.CREATED);
    }
}