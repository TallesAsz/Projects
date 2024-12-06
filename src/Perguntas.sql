Drop database thinkwell;

Create database thinkwell;

Use thinkwell;

Create table perguntas(
    idpergunta int (3) auto_increment,
    pergunta varchar (300) not null,
    selecionado bit,
    primary key(idpergunta)
);

Create table respostas(
    idresposta int (3) auto_increment,
    idpergunta int (3) not null,
    descricao varchar (100) not null,
    correta bit,
    primary key(idresposta)
);






/*INSERT perguntas*/
insert into perguntas (pergunta, selecionado) values ('(UFPB 2010)No fragmento "DAI EM DIANTE começava a descer a escada da vida [...]” , a expressão em destaque indica ideia de tempo. Essa ideia está presente também em:', 0);
insert into perguntas (pergunta, selecionado) values ('Qual a capital do Brasil em 1762?', 0);
insert into perguntas (pergunta, selecionado) values ('"Nem sempre nós ................... (ir - pretérito imperfeito do indicativo) lá com vontade. "Indique a conjugação correta.', 0);
insert into perguntas (pergunta, selecionado) values ('Lutas e guerras reais estiveram presentes em todos os tempos da História. Lutas e guerras também sempre mexeram com a imaginação dos povos, que as traduziram em mitos e jogos, como por exemplo:', 0);
insert into perguntas (pergunta, selecionado) values ('Qual das palavras destacadas a seguir não é um adjetivo?', 0);
insert into perguntas (pergunta, selecionado) values ('Qual das alternativas abaixo indica a nomenclatura correta da base Sn(OH)4?', 0);
insert into perguntas (pergunta, selecionado) values ('Qual é a capital da Argélia?', 0);
insert into perguntas (pergunta, selecionado) values ('Quem é o patrono do exército brasileiro?', 0);
insert into perguntas (pergunta, selecionado) values ('Em um estacionamento há carros e motos. O número de motos é o triplo do número de carros. Somando-se o número de pneus, obtemos 60. Qual é o número de carros e de motos neste estacionamento? Os estepes não são considerados.', 0);
insert into perguntas (pergunta, selecionado) values ('Que colônia britânica foi devolvida à China em 1997?', 0);
/*10*/
insert into perguntas (pergunta, selecionado) values ('Qual presidente brasileiro instituiu o AI-5?', 0);
insert into perguntas (pergunta, selecionado) values ('Em que parte do nosso corpo está o úmero?', 0);
insert into perguntas (pergunta, selecionado) values ('A quem se atribui a frase “Eu sou o Estado”?', 0);
insert into perguntas (pergunta, selecionado) values ('O que significa deprecar?', 0);
insert into perguntas (pergunta, selecionado) values ('Quem foi aluno de Platão e tutor de Alexandre, o Grande?', 0);
insert into perguntas (pergunta, selecionado) values ('Em que ano foi inaugurada a estátua do Cristo Redentor no Rio de Janeiro?', 0);
insert into perguntas (pergunta, selecionado) values ('Qual metal possui o símbolo Hg?', 0);
insert into perguntas (pergunta, selecionado) values ('Indique a alternativa cuja sequência de vocábulos apresenta, na mesma ordem, o seguinte: ditongo, hiato, hiato, ditongo.', 0);
insert into perguntas (pergunta, selecionado) values ('vegetação rasteira encontrada próximo às regiões polares.', 0);
insert into perguntas (pergunta, selecionado) values ('Quantos ossos tem o corpo humano?', 0);
/*20*/
insert into perguntas (pergunta, selecionado) values ('Como é chamada a doença que causa perda desigual da melanina?', 0);
insert into perguntas (pergunta, selecionado) values ('O conjunto de ideias que propunham a intervenção estatal na vida econômica com o objetivo de conduzir a um regime de pleno emprego está de acordo com a:', 0);
insert into perguntas (pergunta, selecionado) values ('Qual o valor de (k) nessa expressão 4k-6=2k+8?', 0);
insert into perguntas (pergunta, selecionado) values ('A revolução industrial pode  de certa forma ser dividida em três fases. Quais eram os principais países da 1 fase?', 0);
insert into perguntas (pergunta, selecionado) values ('O que é uma mesóclise?', 0);
insert into perguntas (pergunta, selecionado) values ('Quem foi o assassino do presidente John F. Kennedy, em qual ano esse assassinato ocorreu?', 0);
insert into perguntas (pergunta, selecionado) values ('A Uretra de um individuo masculino, tem cerca de quantos centimetros?', 0);
insert into perguntas (pergunta, selecionado) values ('Em que dia de que ano a bolsa de Nova Iorque quebrou?', 0);
insert into perguntas (pergunta, selecionado) values ('Shakespeare é um famoso escritor de:', 0);
insert into perguntas (pergunta, selecionado) values ('Qual é a temperatura média de Saturno?', 0);
/*30*/
insert into perguntas (pergunta, selecionado) values ('Com qual objetivo aconteceu a Revolta da Vacina?', 0);
insert into perguntas (pergunta, selecionado) values ('País onde nasceu o governador Cristovão Colombo?', 0);
insert into perguntas (pergunta, selecionado) values ('Na Frase “A manga da camisa sujou ao chupar uma manga” temos uma:', 0);
insert into perguntas (pergunta, selecionado) values ('Qual a organela responsável pela digestão intracelular?', 0);
insert into perguntas (pergunta, selecionado) values ('Como é o nome da linha que divide o mundo em dois hemisférios?', 0);
insert into perguntas (pergunta, selecionado) values ('Qual a capital do império Romano?', 0);
insert into perguntas (pergunta, selecionado) values ('Quais os valores da seguinte equação: -x² + 10x - 16 = 0?', 0);
insert into perguntas (pergunta, selecionado) values ('Em “O final do passeio deve ser na praia” se colocarmos o verbo deve no passado imperfeito do indicativo temos:', 0);
insert into perguntas (pergunta, selecionado) values ('Sobre o relevo brasileiro a afirmativa incorreta é:', 0);
insert into perguntas (pergunta, selecionado) values ('A frase ”O Egito é o presente do Nilo” é atribuída a:', 0);
/*40*/





/*INSERT respostas certas*/
insert into respostas (idpergunta, descricao, correta) values ('1', '“[...] e, quando a vida se estendia, sentiam-se traídos. [...]”.', 1);
insert into respostas (idpergunta, descricao, correta) values ('2', 'Rio de Janeiro', 1);
insert into respostas (idpergunta, descricao, correta) values ('3', 'Íamos', 1);
insert into respostas (idpergunta, descricao, correta) values ('4', 'Os Jogos Olímpicos na Grécia Antiga e os torneios de cavaleiros na Idade Média.', 1);
insert into respostas (idpergunta, descricao, correta) values ('5', 'As pesquisas eliminaram PARTE da emoção. ', 1);
insert into respostas (idpergunta, descricao, correta) values ('6', 'Hidróxido estânico.', 1);
insert into respostas (idpergunta, descricao, correta) values ('7', 'Argel', 1);
insert into respostas (idpergunta, descricao, correta) values ('8', 'Duque de Caxias', 1);
insert into respostas (idpergunta, descricao, correta) values ('9', '6 carros e 18 motos', 1);
insert into respostas (idpergunta, descricao, correta) values ('10', 'Hong Kong', 1);
/*10*/
insert into respostas (idpergunta, descricao, correta) values ('11', 'Costa e Silva', 1);
insert into respostas (idpergunta, descricao, correta) values ('12', 'Braço', 1);
insert into respostas (idpergunta, descricao, correta) values ('13', 'Luiz XIV', 1);
insert into respostas (idpergunta, descricao, correta) values ('14', 'Pedir', 1);
insert into respostas (idpergunta, descricao, correta) values ('15', 'Aristóteles', 1);
insert into respostas (idpergunta, descricao, correta) values ('16', '1931', 1);
insert into respostas (idpergunta, descricao, correta) values ('17', 'Mercúrio', 1);
insert into respostas (idpergunta, descricao, correta) values ('18', 'Joias / fluir / jesuíta / fogaréu', 1);
insert into respostas (idpergunta, descricao, correta) values ('19', 'Tundra', 1);
insert into respostas (idpergunta, descricao, correta) values ('20', '206', 1);
/*20*/
insert into respostas (idpergunta, descricao, correta) values ('21', 'Vitiligo', 1);
insert into respostas (idpergunta, descricao, correta) values ('22', 'Teoria Keynesiana.', 1);
insert into respostas (idpergunta, descricao, correta) values ('23', '07', 1);
insert into respostas (idpergunta, descricao, correta) values ('24', 'Inglaterra, Bélgica e França.', 1);
insert into respostas (idpergunta, descricao, correta) values ('25', 'É o nome dado quando o pronome fica intercalado ao verbo.', 1);
insert into respostas (idpergunta, descricao, correta) values ('26', 'Lee Harvey Oswald, o assassinato foi em 22 de Novembro em 1963.', 1);
insert into respostas (idpergunta, descricao, correta) values ('27', '20 cm', 1);
insert into respostas (idpergunta, descricao, correta) values ('28', '24 de Outubro de 1929', 1);
insert into respostas (idpergunta, descricao, correta) values ('29', 'Tragédias', 1);
insert into respostas (idpergunta, descricao, correta) values ('30', '-139ºC', 1);
/*30*/
insert into respostas (idpergunta, descricao, correta) values ('31', 'Combater a Varíola.', 1);
insert into respostas (idpergunta, descricao, correta) values ('32', 'Itália', 1);
insert into respostas (idpergunta, descricao, correta) values ('33', 'Polissemia', 1);
insert into respostas (idpergunta, descricao, correta) values ('34', 'Lisossomos', 1);
insert into respostas (idpergunta, descricao, correta) values ('35', 'Linha do Equador.', 1);
insert into respostas (idpergunta, descricao, correta) values ('36', 'Constantinopla', 1);
insert into respostas (idpergunta, descricao, correta) values ('37', '-2 e -8', 1);
insert into respostas (idpergunta, descricao, correta) values ('38', 'Devia', 1);
insert into respostas (idpergunta, descricao, correta) values ('39', 'Toda região centro-oeste apresenta o relevo do tipo de chapada', 1);
insert into respostas (idpergunta, descricao, correta) values ('40', 'Heródoto', 1);
/*40*/





/*INSERT respostas errada*/
/*1*/
insert into respostas (idpergunta, descricao, correta) values ('1', '“[...] novos recursos para uma existência mais saudável.”.', 0);
insert into respostas (idpergunta, descricao, correta) values ('1', '“[...] a fim de ampliar a chance de ser colhido[...]”.', 0);
insert into respostas (idpergunta, descricao, correta) values ('1', '“[...] as pessoas se sentirem, se não cada vez mais jovens, [...]”.', 0);
insert into respostas (idpergunta, descricao, correta) values ('1', '“E até as tatuagens podem ser vistas em muitos senhores e senhoras, [...]”.', 0);
/*2*/
insert into respostas (idpergunta, descricao, correta) values ('2', 'Salvador', 0);
insert into respostas (idpergunta, descricao, correta) values ('2', 'Belo horizonte', 0);
insert into respostas (idpergunta, descricao, correta) values ('2', 'Brasília', 0);
insert into respostas (idpergunta, descricao, correta) values ('2', 'São Vicente', 0);
/*3*/
insert into respostas (idpergunta, descricao, correta) values ('3', 'Iríamos', 0);
insert into respostas (idpergunta, descricao, correta) values ('3', 'Fôramos', 0);
insert into respostas (idpergunta, descricao, correta) values ('3', 'Vamos', 0);
insert into respostas (idpergunta, descricao, correta) values ('3', 'Fomos', 0);
/*4*/
insert into respostas (idpergunta, descricao, correta) values ('4', 'Os relatos de Homero e a Guerra dos Cem Anos entre França e Inglaterra.', 0);
insert into respostas (idpergunta, descricao, correta) values ('4', 'A história da Guerra de Tróia e da Guerra do Peloponeso.', 0);
insert into respostas (idpergunta, descricao, correta) values ('4', 'Os carnavais na Idade Média e as festas nas Cortes européias medievais.', 0);
insert into respostas (idpergunta, descricao, correta) values ('4', 'A longa espera de Penélope por Ulisses e os rituais de suserania e vassalagem.', 0);
/*5*/
insert into respostas (idpergunta, descricao, correta) values ('5', 'Os BONS candidatos nem sempre são eleitos.', 0);
insert into respostas (idpergunta, descricao, correta) values ('5', 'Eu acho desagradável os dias FRIOS.', 0);
insert into respostas (idpergunta, descricao, correta) values ('5', 'As GRANDES empresas patrocinam candidatos.', 0);
insert into respostas (idpergunta, descricao, correta) values ('5', 'Meu copo de refrigerante está VAZIO.', 0);
/*6*/
insert into respostas (idpergunta, descricao, correta) values ('6', 'Hidróxido de estanho II.', 0);
insert into respostas (idpergunta, descricao, correta) values ('6', 'Hidróxido estanoso.', 0);
insert into respostas (idpergunta, descricao, correta) values ('6', 'Base de estanho IV.', 0);
insert into respostas (idpergunta, descricao, correta) values ('6', 'Hidróxido estanítico.', 0);
/*7*/
insert into respostas (idpergunta, descricao, correta) values ('7', 'Argen', 0);
insert into respostas (idpergunta, descricao, correta) values ('7', 'Argol', 0);
insert into respostas (idpergunta, descricao, correta) values ('7', 'Argeli', 0);
insert into respostas (idpergunta, descricao, correta) values ('7', 'Argelhi', 0);
/*8*/
insert into respostas (idpergunta, descricao, correta) values ('8', 'Marechal Deodoro', 0);
insert into respostas (idpergunta, descricao, correta) values ('8', 'Barão de Mauá', 0);
insert into respostas (idpergunta, descricao, correta) values ('8', 'Marquês de Pombal', 0);
insert into respostas (idpergunta, descricao, correta) values ('8', 'Marechal Rondon', 0);
/*9*/
insert into respostas (idpergunta, descricao, correta) values ('9', '18 carros e 6 motos,', 0);
insert into respostas (idpergunta, descricao, correta) values ('9', '5 carros e 15 motos', 0);
insert into respostas (idpergunta, descricao, correta) values ('9', '21 carros e 7 motos', 0);
insert into respostas (idpergunta, descricao, correta) values ('9', '7 carros e 21 motos', 0);
/*10*/
insert into respostas (idpergunta, descricao, correta) values ('10', 'Hanói', 0);
insert into respostas (idpergunta, descricao, correta) values ('10', 'Pequin', 0);
insert into respostas (idpergunta, descricao, correta) values ('10', 'Hiroshima', 0);
insert into respostas (idpergunta, descricao, correta) values ('10', 'Xinzhou', 0);
/*11*/
insert into respostas (idpergunta, descricao, correta) values ('11', 'Ernesto Geisel', 0);
insert into respostas (idpergunta, descricao, correta) values ('11', 'João Figueiredo', 0);
insert into respostas (idpergunta, descricao, correta) values ('11', 'Itamar Franco', 0);
insert into respostas (idpergunta, descricao, correta) values ('11', 'Fernando Collor', 0);
/*12*/
insert into respostas (idpergunta, descricao, correta) values ('12', 'Quadril', 0);
insert into respostas (idpergunta, descricao, correta) values ('12', 'Perna', 0);
insert into respostas (idpergunta, descricao, correta) values ('12', 'Coluna', 0);
insert into respostas (idpergunta, descricao, correta) values ('12', 'Cabeça', 0);
/*13*/
insert into respostas (idpergunta, descricao, correta) values ('13', 'Luiz XV', 0);
insert into respostas (idpergunta, descricao, correta) values ('13', 'Luiz XVI', 0);
insert into respostas (idpergunta, descricao, correta) values ('13', 'Napoleão Bonaparte', 0);
insert into respostas (idpergunta, descricao, correta) values ('13', 'Czar Nicolau II', 0);
/*14*/
insert into respostas (idpergunta, descricao, correta) values ('14', 'Renegar', 0);
insert into respostas (idpergunta, descricao, correta) values ('14', 'Sujeitar', 0);
insert into respostas (idpergunta, descricao, correta) values ('14', 'Desmaiar', 0);
insert into respostas (idpergunta, descricao, correta) values ('14', 'Denegrir', 0);
/*15*/
insert into respostas (idpergunta, descricao, correta) values ('15', 'Pitágoras', 0);
insert into respostas (idpergunta, descricao, correta) values ('15', 'Diderot', 0);
insert into respostas (idpergunta, descricao, correta) values ('15', 'Galileu Galilei', 0);
insert into respostas (idpergunta, descricao, correta) values ('15', 'Euclides', 0);
/*16*/
insert into respostas (idpergunta, descricao, correta) values ('16', '1921', 0);
insert into respostas (idpergunta, descricao, correta) values ('16', '1941', 0);
insert into respostas (idpergunta, descricao, correta) values ('16', '1951', 0);
insert into respostas (idpergunta, descricao, correta) values ('16', '1952', 0);
/*17*/
insert into respostas (idpergunta, descricao, correta) values ('17', 'Ferro', 0);
insert into respostas (idpergunta, descricao, correta) values ('17', 'Aço', 0);
insert into respostas (idpergunta, descricao, correta) values ('17', 'Cobre', 0);
insert into respostas (idpergunta, descricao, correta) values ('17', 'Zinco', 0);
/*18*/
insert into respostas (idpergunta, descricao, correta) values ('18', 'Jamais / Deus / luar / daí', 0);
insert into respostas (idpergunta, descricao, correta) values ('18', 'Ódio / saguão / leal / poeira', 0);
insert into respostas (idpergunta, descricao, correta) values ('18', 'Quais / fugiu / caiu / história', 0);
insert into respostas (idpergunta, descricao, correta) values ('18', 'Iguais / subiu / Israel / samba', 0);
/*19*/
insert into respostas (idpergunta, descricao, correta) values ('19', 'Coníferas', 0);
insert into respostas (idpergunta, descricao, correta) values ('19', 'Serrado', 0);
insert into respostas (idpergunta, descricao, correta) values ('19', 'Caatinga', 0);
insert into respostas (idpergunta, descricao, correta) values ('19', 'Tropical', 0);
/*20*/
insert into respostas (idpergunta, descricao, correta) values ('20', '200', 0);
insert into respostas (idpergunta, descricao, correta) values ('20', '204', 0);
insert into respostas (idpergunta, descricao, correta) values ('20', '208', 0);
insert into respostas (idpergunta, descricao, correta) values ('20', '209', 0);
/*21*/
insert into respostas (idpergunta, descricao, correta) values ('21', 'Astigmatismo', 0);
insert into respostas (idpergunta, descricao, correta) values ('21', 'Tendinite', 0);
insert into respostas (idpergunta, descricao, correta) values ('21', 'Vitinga', 0);
insert into respostas (idpergunta, descricao, correta) values ('21', 'Vitilgo', 0);
/*22*/
insert into respostas (idpergunta, descricao, correta) values ('22', 'Teoria Weberiana.', 0);
insert into respostas (idpergunta, descricao, correta) values ('22', 'Teoria Liberal.', 0);
insert into respostas (idpergunta, descricao, correta) values ('22', 'Teoria Mercantilista.', 0);
insert into respostas (idpergunta, descricao, correta) values ('22', 'Teoria Marxista.', 0);
/*23*/
insert into respostas (idpergunta, descricao, correta) values ('23', '06', 0);
insert into respostas (idpergunta, descricao, correta) values ('23', '09', 0);
insert into respostas (idpergunta, descricao, correta) values ('23', '30', 0);
insert into respostas (idpergunta, descricao, correta) values ('23', '04', 0);
/*24*/
insert into respostas (idpergunta, descricao, correta) values ('24', 'Alemanha, norte da Itália e Rússia.', 0);
insert into respostas (idpergunta, descricao, correta) values ('24', 'Estados Unidos, Japão e França.', 0);
insert into respostas (idpergunta, descricao, correta) values ('24', 'Bélgica, Irlanda e Croácia.', 0);
insert into respostas (idpergunta, descricao, correta) values ('24', 'França, Inglaterra e Russia.', 0);
/*25*/
insert into respostas (idpergunta, descricao, correta) values ('25', 'É o nome dado a colocação do pronome antes do verbo.', 0);
insert into respostas (idpergunta, descricao, correta) values ('25', 'É o nome dado a colocação do pronome após o verbo.', 0);
insert into respostas (idpergunta, descricao, correta) values ('25', 'É a especificação ou generalização do ser na espécie.', 0);
insert into respostas (idpergunta, descricao, correta) values ('25', 'Acompanha o substantivo.', 0);
/*26*/
insert into respostas (idpergunta, descricao, correta) values ('26', 'Leonard Stuart, o assassinato foi em 15 de Dezembro de 1865.', 0);
insert into respostas (idpergunta, descricao, correta) values ('26', 'Lincoln Burrows, o assassinato foi em 14 de abril de 1865.', 0);
insert into respostas (idpergunta, descricao, correta) values ('26', 'John Wilkes Booth, o assassinato foi em 14 de abril em 1865.', 0);
insert into respostas (idpergunta, descricao, correta) values ('26', 'Regrid Keylor, o assassinato foi em 22 de Novembro de 1963.', 0);
/*27*/
insert into respostas (idpergunta, descricao, correta) values ('27', '18 cm', 0);
insert into respostas (idpergunta, descricao, correta) values ('27', '22 cm', 0);
insert into respostas (idpergunta, descricao, correta) values ('27', '23 cm', 0);
insert into respostas (idpergunta, descricao, correta) values ('27', '25 cm', 0);
/*28*/
insert into respostas (idpergunta, descricao, correta) values ('28', '25 de Outubro de 1929', 0);
insert into respostas (idpergunta, descricao, correta) values ('28', '26 de novembro de 1929', 0);
insert into respostas (idpergunta, descricao, correta) values ('28', '24 de Outubro de 1939', 0);
insert into respostas (idpergunta, descricao, correta) values ('28', '25 de Novembro de 1939', 0);
/*29*/
insert into respostas (idpergunta, descricao, correta) values ('29', 'Romances', 0);
insert into respostas (idpergunta, descricao, correta) values ('29', 'Aventuras', 0);
insert into respostas (idpergunta, descricao, correta) values ('29', 'Ficção', 0);
insert into respostas (idpergunta, descricao, correta) values ('29', 'Terror', 0);
/*30*/
insert into respostas (idpergunta, descricao, correta) values ('30', '-59º C', 0);
insert into respostas (idpergunta, descricao, correta) values ('30', '-99ºC', 0);
insert into respostas (idpergunta, descricao, correta) values ('30', '-129ºC', 0);
insert into respostas (idpergunta, descricao, correta) values ('30', '-149ºC', 0);
/*31*/
insert into respostas (idpergunta, descricao, correta) values ('31', 'Combater a Dengue.', 0);
insert into respostas (idpergunta, descricao, correta) values ('31', 'Combater a febre amarela.', 0);
insert into respostas (idpergunta, descricao, correta) values ('31', 'Combater a Peste Negra.', 0);
insert into respostas (idpergunta, descricao, correta) values ('31', 'Combater a Chagas.', 0);
/*32*/
insert into respostas (idpergunta, descricao, correta) values ('32', 'Venezuela', 0);
insert into respostas (idpergunta, descricao, correta) values ('32', 'França', 0);
insert into respostas (idpergunta, descricao, correta) values ('32', 'Portugal', 0);
insert into respostas (idpergunta, descricao, correta) values ('32', 'Espanha', 0);
/*33*/
insert into respostas (idpergunta, descricao, correta) values ('33', 'Homônimos', 0);
insert into respostas (idpergunta, descricao, correta) values ('33', 'Adjetivo', 0);
insert into respostas (idpergunta, descricao, correta) values ('33', 'Parônimos', 0);
insert into respostas (idpergunta, descricao, correta) values ('33', 'Preposição', 0);
/*34*/
insert into respostas (idpergunta, descricao, correta) values ('34', 'Ribossomos', 0);
insert into respostas (idpergunta, descricao, correta) values ('34', 'Centríolos', 0);
insert into respostas (idpergunta, descricao, correta) values ('34', 'Mitocôndrias', 0);
insert into respostas (idpergunta, descricao, correta) values ('34', 'R.U.', 0);
/*35*/
insert into respostas (idpergunta, descricao, correta) values ('35', 'Meridiano de Wickbolty.', 0);
insert into respostas (idpergunta, descricao, correta) values ('35', 'Meridiano Ibérico.', 0);
insert into respostas (idpergunta, descricao, correta) values ('35', 'Linha do Equador.', 0);
insert into respostas (idpergunta, descricao, correta) values ('35', 'Trópico de Capricórnio.', 0);
/*36*/
insert into respostas (idpergunta, descricao, correta) values ('36', 'Veneza', 0);
insert into respostas (idpergunta, descricao, correta) values ('36', 'Pérsia', 0);
insert into respostas (idpergunta, descricao, correta) values ('36', 'Cartago', 0);
insert into respostas (idpergunta, descricao, correta) values ('36', 'Nova Roma', 0);
/*37*/
insert into respostas (idpergunta, descricao, correta) values ('37', '-2 e 8', 0);
insert into respostas (idpergunta, descricao, correta) values ('37', '-8 e 2', 0);
insert into respostas (idpergunta, descricao, correta) values ('37', '8 e 2', 0);
insert into respostas (idpergunta, descricao, correta) values ('37', '0', 0);
/*38*/
insert into respostas (idpergunta, descricao, correta) values ('38', 'Deverá', 0);
insert into respostas (idpergunta, descricao, correta) values ('38', 'Deveria', 0);
insert into respostas (idpergunta, descricao, correta) values ('38', 'Deveras', 0);
insert into respostas (idpergunta, descricao, correta) values ('38', 'Devesse', 0);
/*39*/
insert into respostas (idpergunta, descricao, correta) values ('39', 'As rochas mais antigas,de idade pré cambriana, constituem, o complexo cristalino.', 0);
insert into respostas (idpergunta, descricao, correta) values ('39', 'As chapadas Nordestinas, são remanescentes de antiga cobertura sedimentar.', 0);
insert into respostas (idpergunta, descricao, correta) values ('39', 'O maior conjunto de terra elevadas encontrasse na região sudeste.', 0);
insert into respostas (idpergunta, descricao, correta) values ('39', 'As altitudes do relevo brasileiro revelam grande estabilidade.', 0);
/*40*/
insert into respostas (idpergunta, descricao, correta) values ('40', 'Hipócrates', 0);
insert into respostas (idpergunta, descricao, correta) values ('40', 'Sócrates', 0);
insert into respostas (idpergunta, descricao, correta) values ('40', 'Platão', 0);
insert into respostas (idpergunta, descricao, correta) values ('40', 'Aristóteles', 0);




/*Relacionamento das tabelas (TA ERRADO)
Alter table respostas add constraint 'fk_resp_perg' foreign key (idpergunta) references perguntas (idpergunta);*/
