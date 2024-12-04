package service;

import dao.PhoneDAO;
import model.Phone;

import java.util.List;

public class PhoneService {
    private PhoneDAO phoneDAO;

    public PhoneService() {
        this.phoneDAO = new PhoneDAO();
    }

    public List<Phone> getAllPhones() {
        return phoneDAO.getAllPhones();
    }    

}
