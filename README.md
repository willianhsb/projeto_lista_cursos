# projeto_lista_cursos

Nesse projeto utilizamos os seguintes Widgets:

1 - Scaffold()
         - O Widget que segue as regras do material Design para criar uma tela com appBar, 
                body, floatingActionButton, além de outros parâmetros que podemos verificar 
                no catálogo de Widgets da documentação.
        - dividido em topo, meio e fim.
        - Topo = appBar();
        - Meio = Body();
        - Fim  = varios widgets, como por exemplo um floatActionButtom(); 

2 - Statless Widget();
        - é uma estrutura pré-preparada para criarmos Widget customizado;      
        - podemos modelar a vontade para reutilizar em qualquer lugar do codigo;        
        - Widget estático, ou seja, que não muda com o tempo ou ações.

3 - Statfull Widget();
       - possui um estado e pode ser alterado conforme as alterações de algumas variaveis;
       - observa o estado das variaveis, pois quando alguma variavel tem seu valor alterado, ele automaticamente redesenha a tela da aplicação; 
       - utilizar somente quando necessário, quando precisar atualizar a tela do aplicativo, caso contrário devemos utilizar o Statless por questão de performace.
    

4 - ListView();
        - permite mostrar uma lista de elementos na tela, com a possibilidade de arrastar a tela; 
        - permite explorar telas maiores do que o limite de espaço do nosso dispositivo; 
        - utiliza como parâmetro children (vetor pois pode ser varios childrens);

5 - Criamos uma variavel chamada nivel, onde será armazenado um valor para cada tarefa realizada, 
chamando da seguinte forma, diretamente no widget Text() :
          .
          Text('Nível: ' $nivel); 

6 - Feito isso, agora precisamos alterar o valor do nivel toda vez que o usuário apertar o botão de nivel:
    
   - alteramos o estado da tela da seguinte forma;

     - informamos a variavel a ser observada pelo Statefull

                setState(() {
                    nivel++;
                });

   - como queremos que seja alterado a cada clique no botão, colocamos dentro da função onPressed(), da seguite forma:

                       ElevatedButton(
                         onPressed: () {
                           setState(() {
                             nivel++;
                           });
                         },
                         child: Icon(Icons.arrow_drop_up),
                       ),

7 - LinearProgressIndicator();
             - barra que indica o progresso das tarefas;
             - parametros que iremos alterar: cor para branco e valor recebendo o nivel / 10; 

8 - Widget Image()
        - Dividido em 3 tipos:
             - Assets: imagem dentro do proprio projeto;
             - Network: imagem via URL;
             - File: imagem de dentro do dispositivo;
             - Memory: imagem doi arquivo de memoria do dispositivo;

9 - BoxDecoration();
    - utiliza Border para criar Bordas externas ao widget e BorderRadius para definir a aparencia das Bordas.
    - usamos o atributo BorderRadius para deixa a borda com efeito circular, como mostra o trexo do código abaixo.
    - quanto maior o valor do BorderRadius, maior a curva da Borda no widget
            
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26,
                    ),

10 - AnimatedOpacity();
    - precisa de dois parametros obrigatórios: 
        - duration, que se refere ao tempo que a animação precisa para efetuar a mudança de estado.
        - opacidade, valor de opacidade do widget.

---------------------------------------------------------------------------------------------------------------

11 - Refatoração:

1 - Dividir os arquivos para cada responsabilidade: 

        - disponibilizar o Theme e usar o MaterialApp = main.dart ;
        
        - desenhar a tela do app = home.dart ;
        
        - gerencia de estados = Task() (remover as Task e Tela da main.dart)
        
        - logica = Dificuldade (remover a dificuldade da main.dart)
        
