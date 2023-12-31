<?php 
  include "header.php";
  if(isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 4 ){      
    include "../clases/Conexion.php";
    $con = new Conexion();
    $conexion = $con->conectar();
 ?>



<div class="container">
  <div class="row">
    <div class="col">
      <div class="card mt-3">
        <div class="card-body">
          <h2>Eventos</h2>
        
          <div class="row">
            <div class="col">
              <span class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_agregar_evento">
                <i class="fa-regular fa-calendar-plus"></i> Nuevo evento
              </span>
            </div>
            <div class="col"></div>
            <div class="col">
              <div class="input-group mb-3">
                <input type="date" class="form-control" id="fechaBuscar">
                <span class="btn btn-purple" onclick="buscarPorFecha()">
                  <i class="fa-solid fa-magnifying-glass"></i> Buscar
                </span>
              </div>
            </div>
          </div>

          <hr>
          <div id="tablaEventos"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php 
  include "eventos/modal_agregar.php";
  include "eventos/modal_editar.php";
  include "footer.php";
?>

<script src="../publico/js/eventos.js"></script>

<?php 
}else{
  header("location:../index.html");
}
 ?>