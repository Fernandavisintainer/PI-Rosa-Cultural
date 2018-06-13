
package dominio;

/**
 *
 * @author fevis
 */
public class Usuario extends Pessoa {
 // tudo o que é de Pessoa vai pra Usuário 
    private String trocarSenha;
    private String colocarConteudo;

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
   
    
   
}
