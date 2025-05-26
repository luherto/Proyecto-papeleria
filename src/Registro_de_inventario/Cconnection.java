/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registro_de_inventario;

import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Valente
 */
public class Cconnection {

    private Connection conexion = null;
    private final String usuario = "valen";
    private final String contrasena = "tonto";
    private final String bd = "Registro_de_inventario";
    private final String ip = "192.168.100.28";
    private final String puerto = "3306";

    private final String cadena = "jdbc:mysql://" + ip + ":" + puerto + "/" + bd;

    public Connection estableceConexion() {
        try {
            if (conexion == null || conexion.isClosed()) {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection(cadena, usuario, contrasena);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "No se conectó a la base de datos, error: \n" + e.toString());
        }
        return conexion;
    }

    public PreparedStatement prepararConsulta(String consulta) {
        try {
            Connection conn = estableceConexion();
            return conn.prepareStatement(consulta);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error al preparar la consulta: \n" + e.toString());
            return null;
        }
    }

    //Método para cerrar la conexión cuando sea necesario
    public void cerrarConexion() {
        try {
            if (conexion != null && !conexion.isClosed()) {
                conexion.close();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error al cerrar la conexión: \n" + e.toString());
        }
    }

    public DefaultTableModel getTableData() {
        try {
            Connection conn = estableceConexion();
            String query = "SELECT * FROM Registro";
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            DefaultTableModel tableModel = new DefaultTableModel();

            for (int column = 1; column <= columnCount; column++) {
                tableModel.addColumn(metaData.getColumnName(column));
            }

            while (resultSet.next()) {
                Object[] rowData = new Object[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    rowData[i] = resultSet.getObject(i + 1);
                }
                tableModel.addRow(rowData);

            }

            return tableModel;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public DefaultTableModel getTableDataAsc() {
        try {
            Connection conn = estableceConexion();
            String query = "SELECT * FROM Registro ORDER BY Cantidad ASC";
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            DefaultTableModel tableModel = new DefaultTableModel();

            for (int column = 1; column <= columnCount; column++) {
                tableModel.addColumn(metaData.getColumnName(column));
            }

            while (resultSet.next()) {
                Object[] rowData = new Object[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    rowData[i] = resultSet.getObject(i + 1);
                }
                tableModel.addRow(rowData);

            }

            return tableModel;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public DefaultTableModel getTableDataDesc() {
        try {
            Connection conn = estableceConexion();
            String query = "SELECT * FROM Registro ORDER BY Cantidad DESC";
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            DefaultTableModel tableModel = new DefaultTableModel();

            for (int column = 1; column <= columnCount; column++) {
                tableModel.addColumn(metaData.getColumnName(column));
            }

            while (resultSet.next()) {
                Object[] rowData = new Object[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    rowData[i] = resultSet.getObject(i + 1);
                }
                tableModel.addRow(rowData);

            }

            return tableModel;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public DefaultTableModel getDataSearch(JTextField Description) {
        try {
            String likeString = "%" + Description.getText() + "%";

            Connection conn = estableceConexion();
            String query = "SELECT * FROM Registro WHERE Descripcion COLLATE utf8mb4_general_ci Like ? OR Tipo COLLATE utf8mb4_general_ci Like ? ORDER BY Cantidad ASC";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, likeString);
            statement.setString(2, likeString);
            ResultSet resultSet = statement.executeQuery();

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            DefaultTableModel tableModel = new DefaultTableModel();

            for (int column = 1; column <= columnCount; column++) {
                tableModel.addColumn(metaData.getColumnName(column));
            }

            while (resultSet.next()) {
                Object[] rowData = new Object[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    rowData[i] = resultSet.getObject(i + 1);
                }
                tableModel.addRow(rowData);

            }

            return tableModel;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public DefaultTableModel getDataSearchID(JTextField ID) {
        try {
            
            Connection conn = estableceConexion();
            String query = "SELECT * FROM Registro WHERE ID= ? ORDER BY Cantidad ASC";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, ID.getText());
            ResultSet resultSet = statement.executeQuery();

            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();

            DefaultTableModel tableModel = new DefaultTableModel();

            for (int column = 1; column <= columnCount; column++) {
                tableModel.addColumn(metaData.getColumnName(column));
            }

            while (resultSet.next()) {
                Object[] rowData = new Object[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    rowData[i] = resultSet.getObject(i + 1);
                }
                tableModel.addRow(rowData);

            }

            return tableModel;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void getDocumentCSV(String RutaGuardado) {
        Cconnection conectar = new Cconnection();
        conectar.estableceConexion();


        String sSQL = "SELECT ID, Tipo, Color, Descripcion, Cantidad INTO OUTFILE ? FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' FROM Registro";

        try {
            PreparedStatement pst = conectar.prepararConsulta(sSQL);
            pst.setString(1, RutaGuardado);
            pst.executeQuery();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "La consulta fallo" + e.toString());
        }
    }
    
    public void UpDate(JTextField id, JTextField tipo,JTextField color, JTextField descripcion, JTextField cantidad){
        Cconnection conectar = new Cconnection();
        conectar.estableceConexion();

        String sSQL = "INSERT INTO Registro (ID, Tipo, Color, Descripcion, Cantidad) VALUES (?,?,?,?,?)";

        try {
            PreparedStatement pst = conectar.prepararConsulta(sSQL);
            pst.setString(1, id.getText());
            pst.setString(2, tipo.getText());
            pst.setString(3, color.getText());
            pst.setString(4, descripcion.getText());
            pst.setString(5, cantidad.getText());

            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(null, "Correcto");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "La consulta fallo: \n" + e);

        }
    }

}
