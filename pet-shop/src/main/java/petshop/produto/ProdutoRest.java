package petshop.produto;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

// Fazer serviços RETS apenas com um framework específico é bem mais fácil!
@Path("/produtos")
public class ProdutoRest {

	@GET
	@Path("/quantidade")
	@Produces("application/json")
	public ProdutoRestResultado calcular(@QueryParam("maior") int maior) {
		ProdutoRestResultado p = new ProdutoRestResultado();
		try {
			p.setResultado(ProdutoModel.qtdeProdutos(maior));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
}