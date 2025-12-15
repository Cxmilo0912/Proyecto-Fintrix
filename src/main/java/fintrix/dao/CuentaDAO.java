package fintrix.dao;

import fintrix.model.Cuenta;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CuentaDAO {

    public List<Cuenta> listarCuentas() {
        List<Cuenta> lista = new ArrayList<>();
        String sql = "SELECT * FROM cuentas";

        try (Connection conn = Conexion.getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Cuenta cuenta = new Cuenta();
                cuenta.setId(rs.getInt("id"));
                cuenta.setUsuario_id(rs.getInt("usuario_id"));
                cuenta.setNombre(rs.getNString("nombre_cuenta"));
                cuenta.setTipo(rs.getString("tipo"));
                cuenta.setSaldo_inicial(rs.getDouble("saldo_inicial"));
                lista.add(cuenta);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista;
    }

    public Cuenta obtenerCuentaPorId(int id) {
        String sql = "SELECT * FROM cuentas WHERE id = ?";
        Cuenta cuenta = null;

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                cuenta = new Cuenta();
                cuenta.setId(rs.getInt("id"));
                cuenta.setUsuario_id(rs.getInt("usuario_id"));
                cuenta.setNombre(rs.getNString("nombre_cuenta"));
                cuenta.setTipo(rs.getString("tipo"));
                cuenta.setSaldo_inicial(rs.getDouble("saldo_inicial"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cuenta;
    }

    public boolean crearCuenta(Cuenta cuenta) {
        String sql = "INSERT INTO cuentas (usuario_id, nombre_cuenta, tipo, saldo_inicial) VALUES (?, ?, ?, ?)";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, cuenta.getUsuario_id());
            pstmt.setString(2, cuenta.getNombre());
            pstmt.setString(3, cuenta.getTipo());
            pstmt.setDouble(4, cuenta.getSaldo_inicial());
            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean actualizarCuenta(Cuenta cuenta) {
        String sql = "UPDATE cuentas SET usuario_id = ?, nombre_cuenta = ?, tipo = ?, saldo_inicial = ?"
                + "WHERE id = ?";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, cuenta.getUsuario_id());
            pstmt.setString(2, cuenta.getNombre());
            pstmt.setString(3, cuenta.getTipo());
            pstmt.setDouble(4, cuenta.getSaldo_inicial());

            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminar(int id) {
        String sql = "DELETE FROM cuentas WHERE id = ?";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Cuenta> buscar(String criterio) {
        List<Cuenta> lista = new ArrayList<>();
        String sql = "SELECT * FROM cuentas "
                + "WHERE usuario_id LIKE ? OR nombre_cuenta LIKE ? OR tipo LIKE ? "
                + "ORDER BY nombre_cuenta";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            String parametro = "%" + criterio + "%";
            pstmt.setString(1, parametro);
            pstmt.setString(2, parametro);
            pstmt.setString(3, parametro);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Cuenta cuenta = new Cuenta();
                cuenta.setId(rs.getInt("id"));
                cuenta.setUsuario_id(rs.getInt("usuario_id"));
                cuenta.setNombre(rs.getNString("nombre_cuenta"));
                cuenta.setTipo(rs.getString("tipo"));
                cuenta.setSaldo_inicial(rs.getDouble("saldo_inicial"));
                lista.add(cuenta);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

}
