/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package Model.Entity;

/**
 *
 * @author ASUS
 */
public enum EQuyen {
    KhachHang("KhachHang"),
    ChuShop("ChuShop");

    private String value;

    // Constructor
    EQuyen(String value) {
        this.value = value;
    }

    // Getter
    public String getValue() {
        return value;
    }

    // Optionally, you can add a static method to get enum by value
    public static EQuyen fromValue(String value) {
        for (EQuyen q : EQuyen.values()) {
            if (q.getValue().equals(value)) {
                return q;
            }
        }
        throw new IllegalArgumentException("Unknown enum value: " + value);
    }
}
