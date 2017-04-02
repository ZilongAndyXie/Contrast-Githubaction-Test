package de.cqrity.vulnerapp.service;

import de.cqrity.vulnerapp.domain.ClassifiedAd;
import de.cqrity.vulnerapp.domain.ClassifiedAdResource;
import de.cqrity.vulnerapp.domain.User;
import de.cqrity.vulnerapp.repository.ClassifiedAdRepository;
import de.cqrity.vulnerapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@Service
public class ClassifiedAdService {

    private static final String UPPER_FN = "UPPER";

    @Autowired
    private ClassifiedAdRepository classifiedAdRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ImageService imageService;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public ClassifiedAd update(ClassifiedAdResource request) {
        ClassifiedAd ad = classifiedAdRepository.findOne(request.getId());

        ad.setTitle(request.getTitle());
        ad.setDescription(request.getDescription());
        ad.setPrice(request.getPrice());
        if (!request.getAdphoto().isEmpty()) {
            String photofilename = imageService.storeImage(request.getAdphoto(), request.getId());
            ad.setPhotofilename(photofilename);
        }

        return classifiedAdRepository.save(ad);
    }

    public ClassifiedAd create(ClassifiedAdResource request) {
        User principal = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        ClassifiedAd ad = new ClassifiedAd(principal,
                                           request.getTitle(),
                                           request.getDescription(),
                                           request.getPrice(),
                                           new Date());

        ad = classifiedAdRepository.save(ad); // to get the id

        ad.setPhotofilename(imageService.storeImage(request.getAdphoto(), ad.getId()));

        return classifiedAdRepository.save(ad);
    }

    public List<ClassifiedAd> fetchLatestAds(String searchString) {
        String searchStringWithWildcards = "%" + searchString + "%";

        String sql = "SELECT * FROM classified_ad WHERE " + UPPER_FN + "(title) LIKE " + UPPER_FN + "('" + searchStringWithWildcards + "') " +
                "ORDER BY createdtimestamp DESC";

        RowMapper<ClassifiedAd> classifiedAdRowMapper = (rs, rowNum) -> {
            User owner = userRepository.findOne(rs.getLong("OWNER_ID"));
            ClassifiedAd ad = new ClassifiedAd(
                    owner,
                    rs.getString("TITLE"),
                    rs.getString("DESCRIPTION"),
                    rs.getInt("PRICE"),
                    rs.getTimestamp("CREATEDTIMESTAMP"));
            ad.setId(rs.getLong("ID"));
            ad.setPhotofilename(rs.getString("PHOTOFILENAME"));
            return ad;
        };

        return jdbcTemplate.query(sql, classifiedAdRowMapper);
    }

}
