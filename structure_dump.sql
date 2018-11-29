CREATE TABLE usuario (
    id_usuario INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR (150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_usuario)
);
CREATE TABLE projeto (
    id_projeto INTEGER NOT NULL AUTO_INCREMENT,
    nomedoprojeto VARCHAR (150) NOT NULL,
    descricao VARCHAR (150) NOT NULL,
    id_usuario INTEGER NOT NULL,
    PRIMARY KEY(id_projeto),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
CREATE TABLE foto (
    id_foto INTEGER NOT NULL AUTO_INCREMENT,
    url VARCHAR(255) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_foto)
);
CREATE TABLE tarefa (
    id_tarefa INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR (150) NOT NULL,
    descricao VARCHAR (150) NOT NULL,
    estado INTEGER NOT NULL,
    id_projeto INTEGER,
    id_usuario INTEGER NOT NULL,
    id_foto INTEGER NOT NULL,
    PRIMARY KEY(id_tarefa),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_foto) REFERENCES foto(id_foto)
);
