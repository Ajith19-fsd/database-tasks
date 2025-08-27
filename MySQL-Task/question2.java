import java.sql.*;

public class InsertEmployee {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/your_database","root","password");

            Statement stmt = con.createStatement();

            stmt.executeUpdate("INSERT INTO Employee VALUES (101,'Jenny',25,10000)");
            stmt.executeUpdate("INSERT INTO Employee VALUES (102,'Jacky',30,20000)");
            stmt.executeUpdate("INSERT INTO Employee VALUES (103,'Joe',20,40000)");
            stmt.executeUpdate("INSERT INTO Employee VALUES (104,'John',40,80000)");
            stmt.executeUpdate("INSERT INTO Employee VALUES (105,'Shameer',25,90000)");

            System.out.println("Data inserted successfully!");
            con.close();
        } catch(Exception e) {
            System.out.println(e);
        }
    }
}