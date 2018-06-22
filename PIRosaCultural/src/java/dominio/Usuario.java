
package dominio;

/**
 *
 * @author fevis
 */
public class Usuario extends Pessoa {
 // tudo o que é de Pessoa vai pra Usuário 
    private String trocarSenha;
    private String colocarConteudo;
     private String endereco;
    private String classeSocial;
    private String telefone;

    public String getTrocarSenha() {
        return trocarSenha;
    }

    public void setTrocarSenha(String trocarSenha) {
        this.trocarSenha = trocarSenha;
    }

    public String getColocarConteudo() {
        return colocarConteudo;
    }

    public void setColocarConteudo(String colocarConteudo) {
        this.colocarConteudo = colocarConteudo;
    }

    public int getCodigo() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setCodigo(int i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getClasseSocial() {
        return classeSocial;
    }

    public void setClasseSocial(String classeSocial) {
        this.classeSocial = classeSocial;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
   
    
   
}
