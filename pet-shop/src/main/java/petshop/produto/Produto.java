package petshop.produto;

public class Produto {
  private Integer codigo;
  private String nome;
  private Double preco;

  public Integer getCodigo() {
    return codigo;
  }

  public void setCodigo(Integer codigo) {
    this.codigo = codigo;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public Double getPreco() {
    return preco;
  }

  public void setPreco(Double preco) {
    this.preco = preco;
  }

  public Produto(Integer codigo, String nome, Double preco) {
    this.codigo = codigo;
    this.nome = nome;
    this.preco = preco;
  }
}
