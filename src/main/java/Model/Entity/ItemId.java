/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;
import java.io.Serializable;
import java.util.Objects;
import jakarta.persistence.Embeddable;
/**
 *
 * @author ASUS
 */
@Embeddable
public class ItemId {
    private String idGioHang;
    private String idSP;

    public ItemId() {
    }

    public ItemId(String idGioHang, String idSP) {
        this.idGioHang = idGioHang;
        this.idSP = idSP;
    }

    public String getIdGioHang() {
        return idGioHang;
    }

    public void setIdGioHang(String idGioHang) {
        this.idGioHang = idGioHang;
    }

    public String getIdSP() {
        return idSP;
    }

    public void setIdSP(String idSP) {
        this.idSP = idSP;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ItemId itemId = (ItemId) o;
        return Objects.equals(idGioHang, itemId.idGioHang) &&
               Objects.equals(idSP, itemId.idSP);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idGioHang, idSP);
    }
}
