<h1> Projeto Individual do Módulo 4 </h1>

<p>Criação do banco de dados - Resilia/Senac</p>

![alt text](https://github.com/IgorCostaRodrigues/Projeto_Indivudual_Modulo4/blob/main/SQL%20IMAGENS/parafazer.png)

Perguntas : <br>

    1-Existem outras entidades além dessas três?

    2-Quais são os principais campos e tipos?

    3-Como essas entidades estão relacionadas?
Respostas:

    1-Sim, Foram criadas as entidades Professor e Matrícula.

    2-Os principais campos de cada entidade são as chaves primárias(PK).  
    Sendo os principais: cursos, turmas, matriculas, professores e alunos. 
    Os principais tipos de campo são : INT e VARCHAR.

    3-Estão relacionadas como: muitos para muitos(N:N), um para muitos(1:N) e um pra um(1:1)

•Cursos - Turmas: N:N

•Turmas - Matriculas: N:N

•Turmas - Professores: N:1

•Matriculas - Alunos: 1:1

![alt text](https://github.com/IgorCostaRodrigues/Projeto_Indivudual_Modulo4/blob/main/SQL%20IMAGENS/Modelagem.png)
