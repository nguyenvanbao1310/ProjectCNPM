package service;

import dao.PromotionDAO;
import model.Promotion;

import java.util.List;

public class PromotionService {
    private PromotionDAO promotionDAO = new PromotionDAO();

    public List<Promotion> getAllPromotions() {
        return promotionDAO.getAllPromotions();
    }

    public void createPromotion(Promotion promotion) {
        promotionDAO.createPromotion(promotion);
    }

    public Promotion getPromotionById(int id) {
        return promotionDAO.getPromotionById(id);
    }

    public void updatePromotion(Promotion promotion) {
        promotionDAO.updatePromotion(promotion);
    }

    public void deletePromotion(int id) {
        promotionDAO.deletePromotion(id);
    }
}
