package connectSQL;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private final String serverName = "KHOA";
	private final String dbName = "QLSV";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "";
	private final String password = "";

	public Connection getConnectionW() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber
				+ ";integratedSecurity=true;databaseName=" + dbName;
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";integratedSecurity=true;databaseName="
					+ dbName;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}

	public static void main(String[] args) {
		try (Connection conn = new DBConnection().getConnectionW()) {
            System.out.println("✅ Kết nối thành công: " + conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}

