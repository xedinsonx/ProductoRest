package com.globalhits.claro.ClaroProductos.Repository;

import com.globalhits.claro.ClaroProductos.Entity.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface ProductoRepository  extends JpaRepository<Producto, Integer> {

 // Anotacion para llamar al procedimiento almacenado lista_procedure
    @Query(value = "{call lista_procedure()}", nativeQuery = true)
    List<Producto> ListaProducto();

    // Anotacion para llamar al procedimiento almacenado save_procedure
    @Query(value = "{call save_procedure(:nombreIn, :marcaIn, :modeloIn, :precioIn, :fechaIn)}", nativeQuery = true)
    void saveProcedure(
            @Param("nombreIn")String nombreIn,
            @Param("marcaIn")String marcaIn,
            @Param("modeloIn")String modeloIn,
            @Param("precioIn")int precioIn,
            @Param("fechaIn") LocalDate fechaIn
    );
}
