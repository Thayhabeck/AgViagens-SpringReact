create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );
create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );
create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );
create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );
alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);
alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;
alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;
alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');

INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');

INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);


    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);

    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);

    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);

    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);

    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);

    create table tb_destino (
       id_destino  bigserial not null,
        cidade varchar(255),
        estado varchar(255),
        imagem varchar(255),
        preco_diaria float8,
        regiao_id int8,
        primary key (id_destino)
    );

    create table tb_regiao (
       id_regiao  bigserial not null,
        nome_regiao varchar(255),
        primary key (id_regiao)
    );

    create table tb_usuario (
       id_usuario  bigserial not null,
        email varchar(255),
        login varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (id_usuario)
    );

    create table tb_viagem (
       id_viagem  bigserial not null,
        data_ida varchar(255),
        data_volta varchar(255),
        sdf bytea,
        destino_id int8,
        usuario_id int8,
        primary key (id_viagem)
    );

    alter table tb_usuario 
       add constraint UK_1vofibjsgo77e7km8wowva1qe unique (login);

    alter table tb_destino 
       add constraint FKewcrki9gg5eqgr387vwtg1179 
       foreign key (regiao_id) 
       references tb_regiao;

    alter table tb_viagem 
       add constraint FKqoih4djvk9pjswad5jgd9qtwq 
       foreign key (destino_id) 
       references tb_destino;

    alter table tb_viagem 
       add constraint FK2qpskgtiesk9dhp7f1d13t7sf 
       foreign key (usuario_id) 
       references tb_usuario;
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Administrador', 'admin@habeckturismo.com', 'Admin', '@dmin123');
INSERT INTO tb_usuario(nome, email, login, senha) VALUES ('Usuário', 'user@habeckturismo.com', 'User', 'User@123');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Norte');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Nordeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sul');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Sudeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Centro-Oeste');
INSERT INTO tb_regiao(nome_regiao) VALUES ('Internacional');
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Arraial do Cabo', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230081270812692/arraial-do-cabo.jpg?width=1191&height=670', 304.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Barreirinhas', 'Maranhão', 'https://media.discordapp.net/attachments/899633526411001876/939230081673494559/Barreirinhas-Lencois-Maranhenses.jpg', 257.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bonito', 'Mato Grosso do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230082982092830/bonitoms.png', 179.80, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Brasília', 'Distrito Federal', 'https://media.discordapp.net/attachments/899633526411001876/939230083418316830/brasilia.jpg', 218.00, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Búzios', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230153219915877/buziosrj.jpg', 299.90, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Chapada dos Veadeiros', 'Goiás', 'https://media.discordapp.net/attachments/899633526411001876/939230080868163645/altoparaiso-chapadaVead.jpg?width=1191&height=670', 197.05, 5);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Curitiba', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230079731511356/curitiba.jpg?width=1191&height=670', 304.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Fernando de Noronha', 'Pernambuco', 'https://media.discordapp.net/attachments/899633526411001876/939230080113205289/Fernando-de-Noronha.jpg', 402.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Florianópolis', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230080444563476/floripa.jpg?width=1191&height=670', 345.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Foz do Iguaçu', 'Paraná', 'https://media.discordapp.net/attachments/899633526411001876/939230153974882325/foziguacu.jpg', 498.80, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Gramado', 'Rio Grande do Sul', 'https://media.discordapp.net/attachments/899633526411001876/939230154440446052/gramado.jpg', 320.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Jericoacoara', 'Ceará', 'https://media.discordapp.net/attachments/899633526411001876/939230155119947807/Jericoacoara.jpg', 228.05, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Manaus', 'Amazonas', 'https://media.discordapp.net/attachments/899633526411001876/939230155396751381/manaus.jpg?width=1191&height=670', 199.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Maragogi', 'Alagoas', 'https://media.discordapp.net/attachments/899633526411001876/939230155723898920/maragogi.jpg', 219.99, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Palmas', 'Tocantins', 'https://media.discordapp.net/attachments/899633526411001876/939230213936664576/palmasTO.jpg', 185.00, 1);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Penha', 'Santa Catarina', 'https://media.discordapp.net/attachments/899633526411001876/939230214272212992/penha-berocarrero.jpg?width=1189&height=669', 302.00, 3);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Poços de Caldas', 'Minas Gerais', 'https://media.discordapp.net/attachments/899633526411001876/939230212841955379/Pocosdecaldasmg.jpg?width=1191&height=670', 177.00, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Porto Seguro', 'Bahia', 'https://media.discordapp.net/attachments/899633526411001876/939230213567561800/Porto-Seguro.jpg', 240.00, 2);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'https://media.discordapp.net/attachments/899633526411001876/939230152267812914/rio-de-janeiro.jpg?width=1191&height=670', 342.70, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('São Paulo', 'São Paulo', 'https://media.discordapp.net/attachments/899633526411001876/939230152649482320/sao-paulo.jpg?width=1191&height=670', 240.09, 4);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Bali', 'Indonésia', 'https://media.discordapp.net/attachments/899633526411001876/954030965141958706/Baliindonesia.jpg', 772.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Paris', 'França', 'https://media.discordapp.net/attachments/899633526411001876/954030964915462184/paris.jpg', 894.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Londres', 'Inglaterra', 'https://media.discordapp.net/attachments/899633526411001876/954030965443952690/londres.jpg', 839.00, 6);
INSERT INTO tb_destino(cidade, estado, imagem, preco_diaria, regiao_id) VALUES ('Nova York', 'Estados Unidos', 'https://media.discordapp.net/attachments/899633526411001876/954030964630229012/nova-iorque.jpg', 889.00, 6);
