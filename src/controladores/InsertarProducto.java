package controladores;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.Producto;
import modelo.dao.ModeloProducto;

/**
 * Servlet implementation class InsertarProducto
 */
@WebServlet("/InsertarProducto")
public class InsertarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre=request.getParameter("nombre");
		
		int stock=Integer.parseInt(request.getParameter("stock"));
		
		Date fecha=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			fecha=sdf.parse(request.getParameter("fechaCompra"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String color=request.getParameter("color");
		
		String madeIn=request.getParameter("madein");
		
		Double precio=Double.parseDouble(request.getParameter("precio"));
		
		int descuento=Integer.parseInt(request.getParameter("descuento"));
		
		String[] tallas=request.getParameterValues("talla");
		
		
		Producto producto=new Producto();
		producto.setNombre(nombre);
		producto.setStock(stock);
		producto.setFecha_compra(fecha);
		producto.setColor(color);
		producto.setMade_in(madeIn);
		producto.setPrecio(precio);
		producto.setDescuento(descuento);
		producto.setTallas(tallas);
		
		ModeloProducto modeloProducto=new ModeloProducto();
		modeloProducto.insert(producto);
		
		response.sendRedirect("VerProductos");
		
		
	}

}
