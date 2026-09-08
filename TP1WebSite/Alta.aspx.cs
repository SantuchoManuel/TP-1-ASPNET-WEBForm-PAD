using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Alta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        string conexionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string query = "INSERT INTO Pedidos (FechaPedido, Cliente, IdProducto, Cantidad) VALUES (@FechaPedido, @Cliente, @IdProducto, @Cantidad)";
        string query2 = "UPDATE Productos SET Stock = Stock - @Cantidad WHERE IdProducto = @IdProducto";
        using (SqlConnection conexion = new SqlConnection(conexionString))
        {
            using (SqlCommand comando = new SqlCommand(query, conexion))
            {
                comando.Parameters.AddWithValue("@FechaPedido", DateTime.Now);
                comando.Parameters.AddWithValue("@Cliente", txtCliente.Text);
                comando.Parameters.AddWithValue("@IdProducto", txtProducto.Text);
                comando.Parameters.AddWithValue("@Cantidad", TextCantidad.Text);
                try
                {
                    conexion.Open();
                    comando.ExecuteNonQuery();

                    using (SqlCommand comando2 = new SqlCommand(query2, conexion))
                    {
                        comando2.Parameters.AddWithValue("@Cantidad", TextCantidad.Text);
                        comando2.Parameters.AddWithValue("@IdProducto", txtProducto.Text);
                        comando2.ExecuteNonQuery();
                    }

                    lblMensaje.Text = "¡Pedido registrado correctamente en la base de datos!";
                    lblMensaje.ForeColor = System.Drawing.Color.Green;

                    txtCliente.Text = "";
                    txtProducto.Text = "";
                    TextCantidad.Text = "";
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "Error al intentar registrar: " + ex.Message;
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}