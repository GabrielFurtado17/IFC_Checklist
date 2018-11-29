CREATE TABLE usuario (
    id_usuario int NOT NULL AUTO_INCREMENT,
    nome varchar (150) NOT NULL,
    email varchar(150) NOT NULL,
    senha varchar(40) NOT NULL,
    dt_nasc date NOT NULL,
    primary key (id_usuario)
);
CREATE TABLE projeto (
    id_projeto int NOT NULL AUTO_INCREMENT,
    NomeDoProjeto varchar (150) NOT NULL,
    Descricao varchar (150) NOT NULL,
    FK_Adm int NOT NULL,
    primary key(id_projeto),
    FOREIGN KEY (FK_Adm) REFERENCES usuario(id_usuario)
);
CREATE TABLE foto (
    id_foto int NOT NULL AUTO_INCREMENT,
    Url varchar(255) NOT NULL,
    Descricao varchar(150) NOT NULL,
    primary key (id_foto)
);
CREATE TABLE tarefa (
    id_tarefa int NOT NULL AUTO_INCREMENT,
    NomeDaTarefa varchar (150) NOT NULL,
    Descricao varchar (150) NOT NULL,
    FK_Pjt int,
    FK_Responsavel int NOT NULL,
    FK_Foto int NOT NULL,
    primary key(id_tarefa),
    FOREIGN KEY (FK_Pjt) REFERENCES projeto(id_projeto),
    FOREIGN KEY (FK_Responsavel) REFERENCES usuario(id_usuario),
    FOREIGN KEY (FK_Foto) REFERENCES foto(id_foto)
);