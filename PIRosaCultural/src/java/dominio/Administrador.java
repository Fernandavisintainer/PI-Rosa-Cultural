
package dominio;

public class Administrador {
   private String nomeCadastro;
   private int senhaCadastro;
   private String trocarSenha;
   private String cadastrarUsuario;

    public String getNomeCadastro() {
        return nomeCadastro;
    }

    public void setNomeCadastro(String nomeCadastro) {
        this.nomeCadastro = nomeCadastro;
    }

    public int getSenhaCadastro() {
        return senhaCadastro;
    }

    public void setSenhaCadastro(int senhaCadastro) {
        this.senhaCadastro = senhaCadastro;
    }

    public String getTrocarSenha() {
        return trocarSenha;
    }

    public void setTrocarSenha(String trocarSenha) {
        this.trocarSenha = trocarSenha;
    }

    public String getCadastrarUsuario() {
        return cadastrarUsuario;
    }

    public void setCadastrarUsuario(String cadastrarUsuario) {
        this.cadastrarUsuario = cadastrarUsuario;
    }
    
   
   
}
