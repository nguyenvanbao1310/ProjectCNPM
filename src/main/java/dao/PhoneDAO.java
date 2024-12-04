package dao;

import model.Phone;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PhoneDAO {
    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("promotionPU");

    public List<Phone> getAllPhones() {
        EntityManager em = emf.createEntityManager();
        List<Phone> phones = em.createQuery("SELECT p FROM Phone p", Phone.class).getResultList();
        em.close();
        return phones;
    }
}
