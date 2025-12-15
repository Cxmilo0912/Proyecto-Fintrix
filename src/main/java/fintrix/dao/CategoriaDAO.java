package fintrix.dao;

import fintrix.model.Categoria;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO {

    public List<Categoria> listarCategorias() {
        List<Categoria> lista = new ArrayList<>();
        String sql = "SELECT * FROM categorias";

        try (Connection conn = Conexion.getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Categoria categoria = new Categoria();
                categoria = new Categoria();
                categoria.setId(rs.getInt("id"));
                categoria.setUsuario_id(rs.getInt("usuario_id"));
                categoria.setNombre(rs.getString("nombre"));
                categoria.setTipo(rs.getString("tipo"));
                lista.add(categoria);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista;
    }

    public Categoria obtenerCategoriaPorId(int id) {
        String sql = "SELECT * FROM categorias WHERE id = ?";
        Categoria categoria = null;

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                categoria = new Categoria();
                categoria.setId(rs.getInt("id"));
                categoria.setUsuario_id(rs.getInt("usuario_id"));
                categoria.setNombre(rs.getString("nombre"));
                categoria.setTipo(rs.getString("tipo"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return categoria;
    }

    public boolean crearCategoria(Categoria categoria) {
        String sql = "INSERT INTO categorias (usuario_id, nombre, tipo) VALUES (?, ?, ?)";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, categoria.getUsuario_id());
            pstmt.setString(2, categoria.getNombre());
            pstmt.setString(3, categoria.getTipo());
            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean actualizarCategoria(Categoria categoria) {
        String sql = "UPDATE categorias SET usuario_id = ?, nombre = ?, tipo = ? WHERE id = ?";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, categoria.getUsuario_id());
            pstmt.setString(2, categoria.getNombre());
            pstmt.setString(3, categoria.getTipo());
            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminarCategoria(int id) {
        String sql = "DELETE FROM categorias WHERE id = ?";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Categoria> buscar(String criterio) {
        List<Categoria> lista = new ArrayList<>();
        String sql = "SELECT * FROM categorias "
                + "WHERE nombre LIKE ? OR tipo LIKE ?"
                + "ORDER BY nombre";

        try (Connection conn = Conexion.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

            String parametro = "%" + criterio + "%";
            pstmt.setString(1, parametro);
            pstmt.setString(2, parametro);

            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Categoria categoria = new Categoria();
                categoria.setId(rs.getInt("id"));
                categoria.setUsuario_id(rs.getInt("usuario_id"));
                categoria.setNombre(rs.getString("nombre"));
                categoria.setTipo(rs.getString("tipo"));
                lista.add(categoria);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
