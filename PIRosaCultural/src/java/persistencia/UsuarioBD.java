package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Usuario;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class UsuarioBD {

    private static final String caminho = "C:\\Users\\fevis\\OneDrive\\Documentos\\GitHub\\PI-Rosa-Cultural\\PIRosaCultural\\";
    // static = o metodo pertense a classe, algo compartilhado
    // colocar o caminho do projeto e terminar com "\\" 

    private static ArrayList<Usuario> lista = new ArrayList<Usuario>();

    //private = privado , só dentro da classe
    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    // ArrayList = vetor de elementos,é uma classe generica por poder armazenar qualquer coisa , coloca entre "<>" o que quer ser armazenado 
    //lista é o vetor(falso BD)
    public static void inserir(Usuario usuario) {
        lerXml();//  lê o xml  e  preencher o vetor(lista)
        lista.add(usuario);// add um novo Usuario no final da lista
        salvarXml();// atualiza o xml com o que tem na lista
    }

    /*
    
    public static void alterar(Usuario usuario){
        lerXml();
        excluir(usuario.getCpf());
        inserir(usuario);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(String cpf){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Usuario cadaUsuario = lista.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaUsuario.getCpf().equals(cpf)){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Usuario> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Usuario getByCpf(String cpf){
        lerXml();
        Usuario usuarioEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Usuario cadaUsuario = lista.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaUsuario.getCpf().equals(cpf)){
                usuarioEncontrado = cadaUsuario;
                break;
            }
        }
        return usuarioEncontrado;
    }
     */
    private static void lerXml() {
        File arquivo = new File(caminho + "usuarioes.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("usuario", Usuario.class);
            lista = (ArrayList<Usuario>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Usuario>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("usuario", Usuario.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "usuarioes.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
