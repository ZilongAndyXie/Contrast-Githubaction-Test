package de.cqrity.vulnerapp.controller;


import de.cqrity.vulnerapp.domain.ClassifiedAd;
import de.cqrity.vulnerapp.domain.ClassifiedAdResource;
import de.cqrity.vulnerapp.domain.User;
import de.cqrity.vulnerapp.exception.NotFound;
import de.cqrity.vulnerapp.repository.ClassifiedAdRepository;
import de.cqrity.vulnerapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Controller
public class JspController {

    @Autowired
    ClassifiedAdRepository classifiedAdRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showIndex() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        mav.addObject("latestAds", classifiedAdRepository.findAll());

        return mav;
    }

    @RequestMapping(value = "/ads", method = RequestMethod.GET)
    public ModelAndView showFilteredAds(@RequestParam(value = "s", required = false, defaultValue = "") String s) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");

        String sql = "SELECT * FROM classified_ad WHERE UCASE(title) LIKE UCASE('%" + s + "%')";
        List<ClassifiedAd> ads = jdbcTemplate.query(sql, new RowMapper<ClassifiedAd>() {
            @Override
            public ClassifiedAd mapRow(ResultSet rs, int rowNum) throws SQLException {
                User owner = userRepository.findOne(rs.getLong("OWNER_ID"));
                ClassifiedAd ad = new ClassifiedAd(
                        owner,
                        rs.getString("TITLE"),
                        rs.getString("DESCRIPTION"),
                        rs.getInt("PRICE"),
                        rs.getTimestamp("CREATEDTIMESTAMP"));
                ad.setId(rs.getLong("ID"));
                return ad;
            }
        });

        mav.addObject("latestAds", ads);
        mav.addObject("s", s);

        return mav;
    }

    @RequestMapping(value = "/ads/{username}", method = RequestMethod.GET)
    public ModelAndView showAdsByUser(@PathVariable String username) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");

        List<ClassifiedAd> ads = classifiedAdRepository.findAllByUsername(username);

        mav.addObject("latestAds", ads);
        mav.addObject("s", username);

        return mav;
    }

    @RequestMapping(value = "/ad/{id}", method = RequestMethod.GET)
    public ModelAndView showFilteredAds(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("ad_detail");

        ClassifiedAd ad = classifiedAdRepository.findOne(id);
        if (ad == null) {
            throw new NotFound("Anzeige existiert nicht.");
        }
        mav.addObject("ad", ad);

        return mav;
    }

    @RequestMapping(value = "/ad/{id}/delete", method = RequestMethod.GET)
    public ModelAndView deleteAd(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");

        classifiedAdRepository.delete(id);
        mav.addObject("deleted", true);

        mav.addObject("latestAds", classifiedAdRepository.findAll());

        return mav;
    }


    @RequestMapping(value = "/ad/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editAd(@PathVariable Long id) {
        ClassifiedAd ad = classifiedAdRepository.findOne(id);
        if (ad == null) {
            throw new NotFound("Anzeige existiert nicht.");
        }

        ModelAndView mav = new ModelAndView("ad_edit", "command", new ClassifiedAdResource(ad));
        mav.addObject("ad", ad);
        return mav;
    }

}
