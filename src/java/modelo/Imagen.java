/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.InputStream;

/**
 *
 * @author river
 */
public class Imagen {
    
    /*Todo los atributos*/
    int codigoimg;
    String nombreimg;
    InputStream archivoimg;
    private byte[] archivoimg2;

    public Imagen(int id, String name, byte[] archivo) {
        this.codigoimg = id;
        this.nombreimg = name;
        this.archivoimg2 = archivo;
    }

    public Imagen() {
    }

    /*Todo los codigos get*/
    public int getCodigoimg() {
        return codigoimg;
    }

    public String getNombreimg() {
        return nombreimg;
    }

    public InputStream getArchivoimg() {
        return archivoimg;
    }


    /*Todo los codigos set*/
    public void setCodigoimg(int codigoimg) {
        this.codigoimg = codigoimg;
    }

    public void setNombreimg(String nombreimg) {
        this.nombreimg = nombreimg;
    }

    public void setArchivoimg(InputStream archivoimg) {
        this.archivoimg = archivoimg;
    }

    /**
     * @return the archivopdf2
     */
    public byte[] getArchivoimg2() {
        return archivoimg2;
    }

    /**
     * @param archivopdf2 the archivopdf2 to set
     */
    public void setArchivoimg2(byte[] archivoimg2) {
        this.archivoimg2 = archivoimg2;
    }

}
