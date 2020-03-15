/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author assar
 */
public class Conek {

    private static Connection koneksi;

    public static Connection GetConnection() throws SQLException {

        if (koneksi == null) {
            try {
                Driver mysql = new com.mysql.jdbc.Driver();
                koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval", "root", "");
                System.err.println("Bacot !!");
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return koneksi;
    }
}
