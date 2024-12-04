package dao;

import model.Promotion;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PromotionDAO {
    private final EntityManagerFactory emf = Persistence.createEntityManagerFactory("promotionPU");

    public List<Promotion> getAllPromotions() {
        EntityManager em = emf.createEntityManager();
        List<Promotion> promotions = em.createQuery("SELECT p FROM Promotion p", Promotion.class).getResultList();
        em.close();
        System.out.println("Promotions retrieved: " + promotions.size());
        return promotions;
    }

    public void createPromotion(Promotion promotion) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(promotion);
        em.getTransaction().commit();
        em.close();
    }

    public Promotion getPromotionById(int id) {
        EntityManager em = emf.createEntityManager();
        Promotion promotion = em.find(Promotion.class, id);
        em.close();
        return promotion;
    }

    public void updatePromotion(Promotion promotion) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(promotion);
        em.getTransaction().commit();
        em.close();
    }

    public void deletePromotion(int id) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Promotion promotion = em.find(Promotion.class, id);
        if (promotion != null) {
            em.remove(promotion);
        }
        em.getTransaction().commit();
        em.close();
    }
}
