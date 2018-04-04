import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<Ad> all() throws SQLException {

        List<Ad> ads = new ArrayList<>();

        Statement stmt = connection.createStatement();
        ResultSet rs = (ResultSet) stmt.executeQuery("SELECT * FROM ads");

        while (rs.next()) {
            Ad ad = new Ad();
            ad.setTitle(rs.getString("title"));
            ad.setDescription(rs.getString("description"));
            ads.add(ad);
        }

        return ads;
    }

    @Override
    public Long insert(Ad ad) throws SQLException {

        Statement stmt = connection.createStatement();
        stmt.executeUpdate(createInsertQuery(ad),
        Statement.RETURN_GENERATED_KEYS);
        ResultSet rs = stmt.getGeneratedKeys();
        rs.next();
        return rs.getLong(1);
    }

    private String createInsertQuery(Ad ad){
        return "INSERT INTO ads(user_id, title, description) VALUES "
                + "(" + ad.getUserId() + ", "
                + "'" + ad.getTitle() + "',"
                + "'" + ad.getDescription() + "')";
    }


}
