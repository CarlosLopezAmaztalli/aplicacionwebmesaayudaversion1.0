<?php declare(strict_types=1);
use PHPUnit\Framework\TestCase;

class AsignacionEquipoTest extends TestCase
{
    public function testObtenerAsignaciones(){
        $a=new Asignacion;
        $asignaciones=$a->agregarAsignacion($datos);
        $this->assertIsArray($asignaciones);
        $this->assertEquals(8,count($asignaciones));
        $first=$asignaciones[8];    //Previous assert tells us this is safe
        $this->assertInstanceOf('Asignacion',$first);
    }
    public function testEliminarAsignaciones(){
        $a=new Asignacion;
        $asignaciones=$a->eliminarAsignacion($idAsignacion);
        $this->assertIsArray($asignaciones);
        $this->assertEquals(1,count($asignaciones));
        $first=$asignaciones[0];    //Previous assert tells us this is safe
        $this->assertInstanceOf('Asignacion',$first);
    }
}
?>