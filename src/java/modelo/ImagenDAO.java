/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import configuraciones.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author river
 */
public class ImagenDAO {
 /*Metodo listar*/
    public ArrayList<Imagen> Listar_Imagen() {
        ArrayList<Imagen> list = new ArrayList<Imagen>();
        Conexion conec = new Conexion();
        String sql = "SELECT * FROM imagen;";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Imagen vo = new Imagen();
                //vo.setCodigoimg(rs.getInt(1));
               // vo.setNombreimg(rs.getString(2));
                vo.setArchivoimg2(rs.getBytes(3));
                list.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
                //conec.desconectar();
            } catch (Exception ex) {
            }
        }
        return list;
    }


    /*Metodo agregar*/
//    public void Agregar_Imagen(Imagen vo) {
//        Conexion conec = new Conexion();
//        String sql = "INSERT INTO imagen (codigoimg, nombreimg, archivoimg) VALUES(?, ?, ?);";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setInt(1, vo.getCodigoimg());
//            ps.setString(2, vo.getNombreimg());
//            ps.setBlob(3, vo.getArchivoimg());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }


    /*Metodo Modificar*/
//    public void Modificar_ImagenVO(ImagenVO vo) {
//        Conectar conec = new Conectar();
//        String sql = "UPDATE imagen SET nombreimg = ?, archivoimg = ? WHERE codigoimg = ?;";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setString(1, vo.getNombreimg());
//            ps.setBlob(2, vo.getArchivoimg());
//            ps.setInt(3, vo.getCodigoimg());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }

    /*Metodo Modificar*/
//    public void Modificar_ImagenVO2(ImagenVO vo) {
//        Conectar conec = new Conectar();
//        String sql = "UPDATE imagen SET nombreimg = ? WHERE codigoimg = ?;";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setString(1, vo.getNombreimg());
//            ps.setInt(2, vo.getCodigoimg());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }

    /*Metodo Eliminar*/
//    public void Eliminar_ImagenVO(int id) {
//        Conectar conec = new Conectar();
//        String sql = "DELETE FROM imagen WHERE codigoimg = ?;";
//        PreparedStatement ps = null;
//        try {
//            ps = conec.getConnection().prepareStatement(sql);
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        } finally {
//            try {
//                ps.close();
//                conec.desconectar();
//            } catch (Exception ex) {
//            }
//        }
//    }


    /*Metodo Consulta id*/
    public Imagen getImagenById(int studentId) {
        Imagen vo = new Imagen();
        Conexion db = new Conexion();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM producto WHERE idProducto = ?;";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, studentId);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
               // vo.setCodigoimg(rs.getInt(1));
                //vo.setNombreimg(rs.getString(2));
                vo.setArchivoimg2(rs.getBytes(3));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
              //  db.desconectar();
            } catch (Exception ex) {
            }
        }
        return vo;
    }

}
