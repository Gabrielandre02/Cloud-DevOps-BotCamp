docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql -d -p 3306:3306 --volume=/data/mysql/:/var/lib/mysql mysql


CREATE TABLE alunos (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar (150),
    Cidade varchar(50));


INSERT INTO alunos (AlunoID, Nome, Sobrenome, Endereco, Cidade) VALUES
(1, 'Andre', 'Carmo', 'perdido por ai', 'nunca nem vi');