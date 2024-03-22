package com.globalhits.claro.ClaroProductos.Service;

import com.globalhits.claro.ClaroProductos.Entity.Producto;
import com.globalhits.claro.ClaroProductos.Repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductoService {

    //Inyeccion de dependencias de la clase ProductoRepository
    @Autowired
    ProductoRepository productoRepository;

    //Metodo para listarProductos usando un Procedimiento Almacenado

    public List<Producto> lista() {
        return productoRepository.ListaProducto();
    }
    // Metodo para GuardarProductos usando un Procedimiento Almacenado
    public void saveProcedure(Producto producto) {
        productoRepository.saveProcedure(producto.getNombre(), producto.getMarca(), producto.getModelo(), producto.getPrecio(), producto.getFecha());
    }
}