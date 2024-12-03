
package connectDB;
 
import Model.DAO.TaiKhoanDAO;
import Model.Entity.EQuyen;
import Model.Entity.TaiKhoan;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        ConnectDB.connect();
//        TaiKhoan taiKhoan = new TaiKhoan("123", "123", EQuyen.KHACH_HANG);
//                TaiKhoanDAO.insert(taiKhoan);

//    TaiKhoan khoan = TaiKhoanDAO.findByPhone("039240d6660");
//    if(khoan != null){
//        System.out.println(khoan.getMatKhau());
//    }
//    else System.out.println("ronggggggg");
    }
}
