package pizzacompany;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Vector;
import java.sql.Statement;
import java.sql.ResultSetMetaData;
import javax.swing.table.DefaultTableModel;

public class DatabaseClient {	
//	String userName = "root";
//	String password = "root";
//	String dbms = "mysql";
//	String serverName = "localhost";
//	String portNumber = "3306";
//	String dbname = "mydb";
        
    String userName = "g.arslan";
    String password = "3V4558D9";
    String dbms = "mysql";
    String serverName = "46.101.171.158";
    String portNumber = "80";
    String dbname = "gait_arslan";
    Connection conn = null;	
    /*
     * In this constructor, connect to the mysql database and exit if it doesn't work
     */
    public DatabaseClient()	{
            try {conn = getConnection();} catch (SQLException e) {
                    e.printStackTrace();
                    System.exit(-1);
            }
    }

    /*
     * Make the connection, pass the exception to the caller
     */
    public Connection getConnection() throws SQLException {
        Connection conn = null;
        Properties connectionProps = new Properties();
        connectionProps.put("user", this.userName);
        connectionProps.put("password", this.password);

        if (this.dbms.equals("mysql")) 
            conn = DriverManager.getConnection("jdbc:" + this.dbms + "://" + this.serverName + ":" + this.portNumber + "/" + this.dbname, connectionProps);	    
        System.out.println("Connected to database");
        return conn;
    }


    /*
     * Some of this method's code came from a very nice generic solution by user 'Paul Vargas' on stackoverflow
     */

    public void doUpdate(String sql) throws SQLException {            
        Statement stmt = conn.createStatement();                    
        stmt.executeUpdate(sql);           
    }

    public void runQueryLoadTable( DefaultTableModel tableModel, String sql) {
        try {
            // Execute a query
            Statement stmt = conn.createStatement();

            ResultSet rs = stmt.executeQuery(sql);

            // Get the meta data so that you can set the table column names
            ResultSetMetaData metaData = rs.getMetaData();
            Vector<String> columnNames = new Vector<String>();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) 
                columnNames.add(metaData.getColumnLabel(i));            
            // Now get the data itself and load it into a 2-D vector
            Vector<Vector<Object>> data = new Vector<Vector<Object>>();
            while (rs.next()) {
                Vector<Object> vector = new Vector<Object>();
                for (int i = 1; i <= columnCount; i++) 
                    vector.add(rs.getObject(i));                
                data.add(vector);
            }
            // Give the data to the tableModel and it will be displayed in the table
            tableModel.setDataVector(data, columnNames);
        } 
        catch (Exception e) {e.printStackTrace();}
    }
}
