package com.peterpet.controller.api;

import com.peterpet.repository.UserAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by peterpet on 2016. 9. 5..
 */

@Controller
@RequestMapping("/admin/api/join")
public class AdminControllerApi {
    @Autowired
    UserAccountRepository userAccountRepository;
//
//    @RequestMapping(value = "/add", method = RequestMethod.POST)
//    public String addUser(HttpServletRequest request, ModelMap modelMap) {
//        String type = request.getParameter("type");
//        String firstname = request.getParameter("firstname");
//        String lastname = request.getParameter("lastname");
//        String account = request.getParameter("account");
//        String password = request.getParameter("password");
//        String number = request.getParameter("number");
//        String model = request.getParameter("model");
//        String chatId = request.getParameter("chatId");
//        String businessNumber = request.getParameter("businessNumber");
//
//        if (account == null || firstname == null || lastname == null ||
//                password == null || number == null || model == null) {
//            modelMap.addAttribute("json", gson.toJson(new ApiResult("Failure", "Empty parameter.")));
//        } else if (userAccountRepository.findByAccount(account).size() == 0 &&
//                userAccountRepository.findByNumber(number).size() == 0) {
//            UserAccount shop = new UserAccount(type, firstname, lastname, account, password, number, model, businessNumber, chatId);
//            if (type.equals("User")) {
//                shop.setActive(true); // 일반 사용자 일경우에는 바로 Active! 개인사업자인경우는 Active를 안하게 만들어야한다.
//                userAddressRepository.save(new UserAddress(shop.getUuid()));
//                deliveryAddressRepository.save(new DeliveryAddress(shop.getUuid()));
//            } else {
//                favoriteRegionRepository.save(new FavoriteRegion(shop.getUuid()));
//                businessInfoRepository.save(new BusinessInfo(shop.getUuid()));
//            }
//            userAccountRepository.save(shop);
//            modelMap.addAttribute("json", gson.toJson(new ApiResult("Successful", "Create \'" + account + "\' account.")));
//        } else if (userAccountRepository.findByNumber(number).size() != 0) {
//            modelMap.addAttribute("json", gson.toJson(new ApiResult("Failure", "You have account.")));
//        } else {
//            modelMap.addAttribute("json", gson.toJson(new ApiResult("Failure", "Already in use.")));
//        }
//        return "api";
//    }
}
