package connectSQL;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private final String serverName = "KHOA";
	private final String dbName = "QLSV";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "sa";
	private final String password = "123";

	public Connection getConnectionW() throws Exception {
		// Build connection URL (without integratedSecurity)
		String url;
		if (instance == null || instance.trim().isEmpty()) {
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName
					+ ";encrypt=true;trustServerCertificate=true";
		} else {
			url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber + ";databaseName=" + dbName
					+ ";encrypt=true;trustServerCertificate=true";
		}

		// Load driver (optional for newer JDBC but safe to keep)
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

		// Use SQL Server authentication (username + password)
		return DriverManager.getConnection(url, userID, password);
	}

	public static void main(String[] args) {
		try (Connection conn = new DBConnection().getConnectionW()) {
			System.out.println("✅ Kết nối thành công: " + conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
