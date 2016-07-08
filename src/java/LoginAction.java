/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;

/**
 *
 * @author yaser
 */
public class LoginAction {

    private String email;
    private String password;
    private String errorMessage;

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public int userId;

    public int getUser_id() {
        return userId;
    }

    public void setUserId(int user_id) {
        this.userId = user_id;
    }

    public LoginAction() {
    }
    
    public String execute() {
        String status = "error";
        Connection conn = null;
        String url = "jdbc:mysql://localhost/domain_registry";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, "root", "root");
            String sql = "SELECT id FROM user_details WHERE ";
            sql += "email = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            boolean flag = false;
            while (rs.next()) {
                System.out.println("inside while: "+rs.getInt(1));
                setUserId(rs.getInt(1));
                this.userId = rs.getInt(1);
                status = "success";
                flag = true;
            }
            if(!flag){
                setErrorMessage("Invalid User Details !!");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    System.out.println("error");
                }
            }
        }
        System.out.println("outside while: "+userId);
        return status;
    }

}
