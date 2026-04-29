INSERT IGNORE INTO ingredientes (nome) VALUES
  ('Arroz'), ('Feijão'), ('Farinha de mandioca'), ('Carne seca'), ('Frango'),
  ('Camarão'), ('Cuxá'), ('Vinagreira'), ('Leite de coco'), ('Dendê'),
  ('Tomate'), ('Cebola'), ('Alho'), ('Pimentão'), ('Coentro'),
  ('Mandioca'), ('Milho'), ('Ovo'), ('Queijo coalho'), ('Bacon'),
  ('Tapioca'), ('Coco ralado'), ('Açúcar'), ('Canela'), ('Feijão fradinho'),
  ('Camarão seco'), ('Manteiga de garrafa'), ('Pimenta do reino'), ('Limão'),
  ('Peixe fresco'), ('Batata'), ('Ovos cozidos'), ('Carne de sol'),
  ('Pimenta-de-cheiro'), ('Camarão fresco'), ('Azeite de dendê'), ('Lula'),
  ('Polvo'), ('Mexilhão'), ('Leite de coco de babaçu'),
  ('Sururu'), ('Tempero verde'), ('Caranguejo inteiro'), ('Banana frita'),
  ('Carne bovina'), ('Maxixe'), ('Quiabo'), ('Abóbora'),
  ('Miúdos de porco'), ('Sangue coalhado'), ('Vinho tinto'), ('Sangue picado'),
  ('Cominho'), ('Feijão-de-corda'), ('Toucinho'), ('Gordura de porco'),
  ('Pata de boi'), ('Feijão branco'), ('Rabo de boi'), ('Agrião'),
  ('Feijão verde fresco'), ('Nata'), ('Pão'), ('Amendoim'),
  ('Marisco sarnambi'), ('Óleo de babaçu'), ('Sal'), ('Carne moída'),
  ('Goma de mandioca'), ('Farinha de rosca'), ('Carne de caranguejo'),
  ('Carne de sol frita'), ('Tripa de porco'), ('Salsicha'), ('Repolho'),
  ('Farinha de trigo'), ('Polpa de bacuri'), ('Polpa de buriti'),
  ('Milho verde'), ('Tapioca granulada'), ('Leite'), ('Queijo parmesão'),
  ('Leite condensado'), ('Creme de leite'), ('Polpa de cupuaçu'),
  ('Caju'), ('Cravo'), ('Arroz demolhado'), ('Queijo coalho');

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Arroz de Cuxá',
  'Prato símbolo do Maranhão, feito com arroz, folhas de vinagreira e camarão seco.',
  '🍚', 'Prato Principal', 40, '40 min', 4, 'Média', 0, 0, 1,
  JSON_ARRAY(
    'Lave bem as folhas de vinagreira e o cuxá. Bata o cuxá com um pouco de água no liquidificador até formar uma pasta.',
    'Refogue o alho e a cebola em azeite até dourar.',
    'Adicione a pasta de cuxá e as folhas de vinagreira picadas. Cozinhe por 5 minutos.',
    'Adicione o arroz lavado e água (1:2). Tempere com sal e cozinhe em fogo baixo por 20 minutos.',
    'Adicione o camarão seco e misture. Deixe descansar por 3 minutos.',
    'Sirva com farinha de mandioca. Finalize com um fio de limão se desejar.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Carne de Sol com Mandioca',
  'Clássico maranhense: carne de sol frita na manteiga de garrafa, servida sobre mandioca cremosa.',
  '🥩', 'Prato Principal', 60, '60 min', 4, 'Fácil', 0, 0, 1,
  JSON_ARRAY(
    'Corte a carne seca em cubos e deixe de molho por 1 hora, trocando a água duas vezes.',
    'Cozinhe a mandioca em água com sal até ficar bem macia. Escorra e reserve.',
    'Seque a carne e doure na manteiga de garrafa até crocante.',
    'Refogue o alho e a cebola. Adicione o tomate e cozinhe por 2 minutos.',
    'Retorne a carne, misture e ajuste o sal.',
    'Sirva sobre a mandioca com coentro fresco.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo', 'Final de semana')
),
(
  'Torta de Camarão',
  'Torta cremosa recheada com camarão temperado, muito apreciada em festas.',
  '🦐', 'Entrada', 50, '50 min', 8, 'Média', 0, 1, 1,
  JSON_ARRAY(
    'Tempere o camarão com sal, alho e limão. Marine por 15 minutos.',
    'Refogue a cebola, adicione o tomate e o camarão. Cozinhe por 5 minutos.',
    'Bata os ovos, leite de coco e farinha no liquidificador até obter massa lisa.',
    'Despeje metade da massa na forma untada. Adicione o recheio.',
    'Cubra com o restante da massa e polvilhe coentro.',
    'Asse a 180°C por 30 a 35 minutos até dourar.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Maria Isabel',
  'Arroz cozido junto com carne de sol desfiada, cebola e temperos.',
  '🍛', 'Prato Principal', 45, '45 min', 6, 'Fácil', 0, 0, 1,
  JSON_ARRAY(
    'Cozinhe e dessalgue a carne seca. Desfie em lascas médias.',
    'Refogue a cebola, o alho, o pimentão e o tomate.',
    'Adicione a carne desfiada e refogue por 2 minutos.',
    'Adicione o arroz lavado e água fervente (1:2). Tempere com sal.',
    'Cozinhe em fogo médio por 20 minutos.',
    'Descanse por 5 minutos e finalize com coentro fresco.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Farofa de Camarão',
  'Farofa crocante de farinha de mandioca com camarão temperado.',
  '🥄', 'Acompanhamento', 25, '25 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Tempere o camarão com sal, alho e limão. Marine por 10 minutos.',
    'Frite o alho e a cebola no óleo até dourar.',
    'Adicione o camarão e refogue em fogo alto por 3 a 4 minutos.',
    'Quebre os ovos na frigideira e mexa rapidamente.',
    'Adicione a farinha de mandioca aos poucos, mexendo por 5 minutos.',
    'Finalize com coentro e sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Canjica de Milho',
  'Doce cremoso de milho cozido com leite de coco e canela.',
  '🌽', 'Sobremesa', 60, '60 min', 8, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Deixe o milho de molho por 2 horas. Cozinhe na pressão por 20 minutos.',
    'Escorra e adicione o leite de coco.',
    'Leve ao fogo médio com o açúcar, mexendo sempre.',
    'Cozinhe por 15 a 20 minutos até engrossar.',
    'Adicione o coco ralado e a canela.',
    'Sirva quente com coco ralado e canela por cima.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Tapioca Recheada',
  'Tapioca crocante recheada com queijo coalho e carne seca.',
  '🫓', 'Entrada', 15, '15 min', 2, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Peneire a goma de tapioca sobre frigideira fria formando um disco.',
    'Leve ao fogo médio sem óleo por 1 a 2 minutos.',
    'Vire com espátula quando as bordas descolarem.',
    'Adicione o queijo coalho fatiado e a carne seca desfiada.',
    'Regue com manteiga de garrafa.',
    'Dobre ao meio e sirva quente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Paçoca de Carne Seca',
  'Carne seca desfiada e pilada com farinha de mandioca.',
  '🍖', 'Acompanhamento', 20, '20 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Cozinhe a carne seca dessalgada até ficar bem macia. Desfie.',
    'Frite o alho e a cebola. Adicione a carne e frite até crocante.',
    'Soque a carne com a farinha de mandioca no pilão.',
    'Ajuste o sal e adicione pimenta do reino se desejar.',
    'Finalize com coentro fresco.',
    'Sirva como acompanhamento ou petisco.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixada Maranhense',
  'Peixe cozido com legumes e temperos no leite de coco, finalizado com ovos.',
  '🐟', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Tempere o peixe com sal, limão e alho. Marine por 15 minutos.',
    'Refogue cebola, tomate e pimentão em azeite.',
    'Adicione o peixe e cubra com leite de coco.',
    'Cozinhe em fogo médio por 20 minutos.',
    'Adicione as batatas e cozinhe mais 15 minutos.',
    'Finalize com os ovos cozidos e cheiro-verde.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
(
  'Arroz de Maria Isabel',
  'Arroz cozido com carne de sol em cubos, cebola e pimenta-de-cheiro.',
  '🍛', 'Prato Principal', 25, '25 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Frite a carne de sol em cubos até dourar.',
    'Refogue o arroz na mesma gordura.',
    'Adicione cebola picada e pimenta-de-cheiro.',
    'Cozinhe tudo junto com água quente (1:2).',
    'Tampe e cozinhe em fogo baixo por 18 minutos.',
    'Sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Caldeirada de Camarão',
  'Camarões cozidos rapidamente em caldo temperado com leite de coco e dendê.',
  '🦐', 'Prato Principal', 50, '50 min', 5, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Tempere os camarões com sal, alho e limão.',
    'Refogue pimentão e cebola no azeite de dendê.',
    'Adicione o leite de coco e tempere o caldo.',
    'Coloque os camarões e cozinhe por 8 minutos.',
    'Ajuste o sal e sirva com arroz branco.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Torta de Caranguejo',
  'Similar à torta de camarão, usando carne de caranguejo desfiada e temperada.',
  '🦀', 'Prato Principal', 45, '45 min', 4, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Refogue a carne de caranguejo com tomate, pimentão e cebola.',
    'Bata os ovos no liquidificador com farinha e tempere.',
    'Despeje metade da massa em forma untada.',
    'Adicione o recheio de caranguejo.',
    'Cubra com o restante da massa.',
    'Asse a 180°C por 35 minutos.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
(
  'Arroz do Mar',
  'Arroz cozido no caldo de frutos do mar refogados com lula, polvo e mexilhão.',
  '🌊', 'Prato Principal', 70, '70 min', 4, 'Difícil', 0, 0, 0,
  JSON_ARRAY(
    'Limpe e corte a lula e o polvo em pedaços.',
    'Refogue todos os frutos do mar com alho e azeite.',
    'Reserve os frutos do mar e use o caldo para cozinhar o arroz.',
    'Cozinhe o arroz no caldo por 20 minutos.',
    'Misture os frutos do mar e o camarão.',
    'Finalize com coentro e sirva.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Moqueca Maranhense',
  'Peixe cozido em camadas de temperos, finalizado com leite de coco de babaçu.',
  '🐠', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Tempere o peixe com sal e limão.',
    'Monte camadas de cebola, tomate e peixe na panela.',
    'Adicione o camarão por cima.',
    'Regue com azeite de dendê e leite de coco de babaçu.',
    'Cozinhe tampado em fogo médio por 25 minutos.',
    'Sirva com arroz branco.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
('Sururu ao Leite de Coco','Marisco sururu limpo e cozido no leite de coco bem temperado.','🐚','Prato Principal',25,'25 min',4,'Fácil',1,0,0,JSON_ARRAY('Limpe bem o sururu retirando as cascas.','Refogue alho e cebola no azeite de dendê.','Adicione o sururu e refogue por 3 minutos.','Despeje o leite de coco e o tempero verde.','Cozinhe por mais 5 minutos em fogo médio.','Sirva quente com farinha de mandioca.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Caranguejada','Caranguejos inteiros cozidos em caldeirão com caldo temperado e leite de coco.','🦀','Prato Principal',25,'25 min',5,'Fácil',1,1,0,JSON_ARRAY('Lave bem os caranguejos inteiros.','Prepare um caldo com leite de coco, tomate e cebola.','Tempere o caldo com alho, sal e coentro.','Coloque os caranguejos no caldo fervente.','Cozinhe por 20 minutos tampado.','Sirva em travessa com o caldo.'),JSON_ARRAY('Festa','Final de semana')),
('Carne de Sol Maranhense','Carne de sol grelhada na chapa e servida com banana frita e queijo coalho.','🥩','Prato Principal',25,'25 min',4,'Fácil',1,0,0,JSON_ARRAY('Dessalgue a carne de sol de molho por 30 minutos.','Seque bem e grelhe na chapa quente por 5 minutos de cada lado.','Frite as bananas em fatias até dourar.','Grelhe o queijo coalho na mesma chapa.','Monte o prato com a carne, banana e queijo.','Sirva com mandioca cozida se desejar.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Paçoca de Carne de Sol','Carne de sol frita pilada no pilão com farinha de mandioca e cebola.','🍖','Acompanhamento',45,'45 min',4,'Média',0,0,0,JSON_ARRAY('Dessalgue e frite a carne de sol até crocante.','Pique a cebola e refogue levemente.','No pilão, soque a carne frita em pedaços menores.','Misture com a farinha de mandioca no pilão.','Adicione a cebola e amasse tudo junto.','Sirva como acompanhamento de pratos principais.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Cozidão','Carne bovina com legumes cozidos na pressão até ficarem macios no caldo.','🥘','Prato Principal',25,'25 min',5,'Fácil',1,0,0,JSON_ARRAY('Corte a carne bovina em pedaços grandes.','Tempere com alho, sal e pimenta.','Coloque na pressão com maxixe, quiabo, abóbora e batata.','Cozinhe por 20 minutos na pressão.','Espere sair o vapor e ajuste o caldo.','Sirva com arroz e farinha de mandioca.'),JSON_ARRAY('Cotidiano','Almoço de domingo')),
('Sarrabulho','Miúdos de porco picados cozidos com sangue coalhado em molho denso com vinho.','🍲','Prato Principal',90,'90 min',4,'Difícil',0,1,0,JSON_ARRAY('Limpe bem os miúdos de porco e pique em cubos.','Tempere com alho, sal, pimenta e vinho tinto.','Refogue os miúdos até dourar.','Adicione o sangue coalhado picado e misture.','Cozinhe em fogo baixo por 1 hora mexendo sempre.','Sirva quente com arroz e farinha.'),JSON_ARRAY('Ano Novo','Festa')),
('Sarapatel','Similar ao sarrabulho, mais seco e com tempero forte de cominho.','🍲','Prato Principal',90,'90 min',4,'Difícil',0,1,0,JSON_ARRAY('Limpe e pique os miúdos de porco em cubos menores.','Tempere com cominho, pimenta, alho e sal.','Frite os miúdos até crocantes por fora.','Adicione o sangue picado e misture bem.','Cozinhe em fogo baixo por 1 hora, sem adicionar líquido.','O prato deve ficar seco e bem temperado.'),JSON_ARRAY('Ano Novo','Festa')),
('Baião de Dois Maranhense','Arroz e feijão-de-corda cozidos juntos com toucinho frito e queijo coalho.','🍛','Prato Principal',25,'25 min',4,'Fácil',1,1,0,JSON_ARRAY('Cozinhe o feijão-de-corda até ficar macio.','Frite o toucinho e reserve a gordura.','Refogue o arroz na gordura do toucinho.','Misture o feijão ao arroz e cozinhe junto.','Adicione o toucinho frito e misture.','Finalize com queijo coalho ralado por cima.'),JSON_ARRAY('Festa Junina','Festa')),
('Arroz de Toucinho','Arroz cozido na gordura do toucinho frito, com sabor defumado característico.','🍚','Acompanhamento',25,'25 min',4,'Fácil',1,0,0,JSON_ARRAY('Frite o toucinho em pedaços na frigideira.','Retire o excesso de gordura, deixando um fio.','Refogue o arroz na borra da gordura.','Adicione água quente (1:2) e tempere com sal.','Cozinhe tampado em fogo baixo por 18 minutos.','Sirva com o toucinho frito por cima.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Mocotó','Pata de boi cozida lentamente até soltar o colágeno, misturada com feijão branco.','🦴','Prato Principal',120,'2h',5,'Difícil',0,1,0,JSON_ARRAY('Lave bem a pata de boi e corte nas juntas.','Cozinhe na pressão por 40 minutos.','Adicione o feijão branco já demolhado.','Cozinhe mais 20 minutos na pressão.','Refogue alho, cebola e tomate e adicione ao caldo.','Cozinhe mais 20 minutos sem pressão até engrossar.'),JSON_ARRAY('Festa','Final de semana')),
('Rabada','Rabo de boi cozido na pressão até soltar do osso, finalizado com agrião fresco.','🥩','Prato Principal',45,'45 min',5,'Média',0,0,0,JSON_ARRAY('Tempere o rabo de boi com sal, alho e tempero seco.','Sele os pedaços na panela quente.','Cozinhe na pressão por 35 minutos.','Refogue batata em cubos no caldo.','Cozinhe mais 10 minutos sem pressão.','Finalize com agrião fresco picado.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Feijão Verde','Feijão verde fresco cozido rapidamente e finalizado com nata ou leite de coco.','🫘','Acompanhamento',25,'25 min',4,'Fácil',1,1,0,JSON_ARRAY('Debulhe o feijão verde fresco.','Cozinhe em água com sal por 15 minutos sem pressão.','Escorra parte da água, deixando pouco caldo.','Adicione nata ou leite de coco.','Misture delicadamente para não desmanchar.','Finalize com coentro picado e sirva.'),JSON_ARRAY('Festa Junina','Festa')),
('Vatapá Maranhense','Pasta densa de camarão seco, pão, leite de coco e amendoim cozida até desgrudar da panela.','🍲','Prato Principal',45,'45 min',4,'Média',0,1,0,JSON_ARRAY('Demolhe o pão no leite de coco.','Triture o camarão seco e o amendoim.','Bata tudo no liquidificador com o pão demolhado.','Despeje na panela e cozinhe em fogo médio.','Mexa sem parar por 20 minutos até engrossar.','Está no ponto quando desgruda do fundo da panela.'),JSON_ARRAY('Festa Junina','Festa')),
('Sarnambi no Leite de Coco','Marisco sarnambi refogado e finalizado com leite de coco e cheiro-verde.','🐚','Prato Principal',25,'25 min',4,'Fácil',1,0,0,JSON_ARRAY('Lave bem o sarnambi e escorra.','Refogue alho e cebola em azeite.','Adicione o sarnambi e refogue por 3 minutos.','Despeje o leite de coco e misture.','Cozinhe por mais 5 minutos em fogo médio.','Finalize com cheiro-verde e sirva quente.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Peixe Frito no Azeite de Babaçu','Peixe fresco temperado e frito diretamente no azeite de babaçu quente.','🐟','Prato Principal',25,'25 min',4,'Fácil',1,0,0,JSON_ARRAY('Limpe o peixe e faça cortes na lateral.','Tempere com sal e suco de limão.','Aqueça bem o óleo de babaçu na frigideira.','Frite o peixe por 5 minutos de cada lado.','Retire quando estiver dourado e crocante.','Sirva com farofa e arroz branco.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Caldo de Ovos','Caldo ralo de carne moída com ovos cozidos inteiros diretamente no líquido.','🥚','Prato Principal',25,'25 min',4,'Fácil',1,1,0,JSON_ARRAY('Refogue a carne moída com alho e cebola.','Adicione água e tempere com sal e coentro.','Deixe ferver e ajuste o caldo.','Quebre os ovos delicadamente dentro do caldo.','Cozinhe tampado por 5 minutos sem mexer.','Sirva com os ovos inteiros no caldo quente.'),JSON_ARRAY('Festa','Final de semana')),
('Beiju de Tapioca','Tapioca na chapa com coco ralado, dobrada quando firme.','🫓','Lanche',25,'25 min',6,'Fácil',1,0,0,JSON_ARRAY('Peneire a goma de mandioca para soltar os grumos.','Aqueça a chapa ou frigideira antiaderente sem óleo.','Espalhe a goma em camada fina formando um disco.','Deixe firmar por 2 minutos em fogo médio.','Adicione o coco ralado e um toque de sal.','Dobre ao meio e sirva imediatamente.'),JSON_ARRAY('Cotidiano','Lanche')),
('Patola de Caranguejo','Patas de caranguejo empanadas e fritas em óleo bem quente.','🦀','Entrada',35,'35 min',4,'Média',0,1,0,JSON_ARRAY('Limpe bem as patas de caranguejo.','Tempere com sal, alho e limão.','Passe na farinha de rosca pressionando bem.','Mergulhe nos ovos batidos e empane novamente.','Frite em óleo bem quente por 3 minutos de cada lado.','Escorra em papel toalha e sirva com molho.'),JSON_ARRAY('Festa','Final de semana')),
('Casquinha de Caranguejo','Carne de caranguejo refogada com farinha de rosca, servida na própria casca.','🦀','Entrada',35,'35 min',4,'Média',0,0,0,JSON_ARRAY('Retire a carne do caranguejo com cuidado.','Refogue com cebola, tomate e temperos verdes.','Adicione o leite de coco e misture.','Junte a farinha de rosca para dar consistência.','Recheie as cascas limpas com a mistura.','Leve ao forno por 10 minutos até gratinar.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Tripinha Frita','Tripa de porco limpa, escaldada e frita em óleo até ficar crocante.','🍖','Prato Principal',25,'25 min',4,'Fácil',1,1,0,JSON_ARRAY('Limpe bem a tripa de porco com sal e limão.','Escalde em água fervente por 5 minutos.','Escorra e seque bem.','Aqueça óleo abundante em frigideira funda.','Frite a tripa até ficar crocante e dourada.','Sirva com limão e farinha de mandioca.'),JSON_ARRAY('Festa','Final de semana')),
('Cachorro-Quente Maranhense','Hot-dog com molho de carne moída bem temperado por cima da salsicha.','🌭','Lanche',20,'20 min',6,'Fácil',1,1,0,JSON_ARRAY('Refogue a carne moída com cebola, tomate, sal e temperos.','Adicione o repolho ralado e misture.','Cozinhe as salsichas em água quente.','Aqueça os pães.','Monte o hot-dog com a salsicha.','Cubra com o molho de carne moída generosamente.'),JSON_ARRAY('Festa Junina','Lanche')),
('Doce de Espécie','Doce típico maranhense de coco seco envolto em massa fina de trigo assada.','🍮','Sobremesa',75,'75 min',6,'Difícil',0,1,0,JSON_ARRAY('Prepare o recheio cozinhando coco ralado com açúcar até formar pasta.','Faça a massa misturando farinha de trigo, manteiga, ovo e açúcar.','Abra a massa fina em superfície enfarinhada.','Coloque o recheio de coco e feche moldando.','Asse a 180°C por 20 a 25 minutos.','Deixe esfriar antes de servir.'),JSON_ARRAY('Festa Junina','Festa')),
('Arroz Doce com Coco','Arroz cozido em água e finalizado com muito leite de coco, açúcar e canela.','🍚','Sobremesa',25,'25 min',6,'Fácil',1,1,0,JSON_ARRAY('Cozinhe o arroz em água até ficar bem macio.','Adicione o leite de coco e o açúcar.','Mexa em fogo baixo por 10 minutos.','O ponto certo é cremoso, não seco.','Sirva em taças individuais.','Polvilhe canela por cima e sirva quente ou frio.'),JSON_ARRAY('Natal','Festa')),
('Bolo de Arroz (Orelha de Macaco)','Arroz demolhado triturado com coco, frito em colheradas no óleo de babaçu.','🍩','Sobremesa',45,'45 min',6,'Média',0,1,0,JSON_ARRAY('Deixe o arroz de molho por 4 horas e escorra.','Triture o arroz com o coco e o açúcar.','A massa deve ficar grossa mas fluida.','Aqueça o óleo de babaçu em frigideira.','Frite colheradas da massa até dourar dos dois lados.','Escorra e sirva polvilhado com açúcar.'),JSON_ARRAY('Festa Junina','Festa')),
('Bolo de Tapioca','Tapioca granulada hidratada no leite, assada com ovos e coco.','🎂','Sobremesa',25,'25 min',6,'Fácil',1,0,0,JSON_ARRAY('Misture a tapioca granulada com o leite e deixe hidratar por 30 minutos.','Adicione os ovos batidos, o coco e o açúcar.','Unte uma forma e despeje a mistura.','Asse a 180°C por 30 minutos.','Espete um palito: se sair limpo, está pronto.','Deixe esfriar antes de desenformar.'),JSON_ARRAY('Cotidiano','Lanche')),
('Doce de Bacuri','Polpa de bacuri cozida com açúcar até atingir ponto de pasta ou geleia.','🍯','Sobremesa',35,'35 min',6,'Fácil',0,0,0,JSON_ARRAY('Retire a polpa de bacuri e descarte as sementes.','Misture com o açúcar em proporção 1:1.','Leve ao fogo médio mexendo sempre.','Cozinhe por 20 a 25 minutos até engrossar.','Teste o ponto na colher fria: deve escorrer lentamente.','Sirva frio em potes ou como recheio.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Doce de Buriti','Polpa de buriti cozida lentamente com açúcar até apurar.','🍯','Sobremesa',45,'45 min',6,'Média',0,0,0,JSON_ARRAY('Cozinhe o buriti inteiro e retire a polpa.','Passe a polpa na peneira para remover fibras.','Misture com o açúcar em panela grossa.','Cozinhe em fogo baixo por 30 minutos mexendo sempre.','O ponto é de pasta firme que desgruda da panela.','Coloque em potes e sirva frio.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Mingau de Milho','Milho verde ralado, extraído o leite e cozido com leite de coco até engrossar.','🌽','Sobremesa',25,'25 min',6,'Média',1,1,0,JSON_ARRAY('Rale o milho verde e esprema para extrair o leite.','Misture o leite de milho com o leite de coco.','Leve ao fogo médio com o açúcar mexendo sempre.','Cozinhe até engrossar na consistência de mingau.','Sirva quente em tigelinhas.','Polvilhe canela e coco ralado por cima.'),JSON_ARRAY('Festa Junina','Festa')),
('Mingau de Tapioca','Tapioca granulada cozida no leite de coco até as bolinhas ficarem transparentes.','🥛','Sobremesa',25,'25 min',6,'Fácil',1,0,0,JSON_ARRAY('Dissolva a tapioca granulada no leite de coco frio.','Leve ao fogo médio mexendo sem parar.','Adicione o açúcar e continue mexendo.','Cozinhe até as bolinhas ficarem transparentes.','Ajuste a consistência com mais leite de coco se necessário.','Sirva quente ou frio com canela.'),JSON_ARRAY('Cotidiano','Lanche')),
('Queijadinha','Doce de coco ralado, queijo parmesão e leite condensado assado em forminhas.','🧀','Sobremesa',25,'25 min',6,'Fácil',1,0,0,JSON_ARRAY('Misture o coco ralado, queijo parmesão ralado e leite condensado.','Adicione os ovos e misture bem.','Unte forminhas individuais com manteiga.','Despeje a mistura nas forminhas.','Asse a 180°C por 20 minutos até dourar.','Sirva frio.'),JSON_ARRAY('Cotidiano','Lanche')),
('Sorvete de Cupuaçu','Polpa de cupuaçu batida com leite condensado e creme de leite, levada ao freezer.','🍦','Sobremesa',20,'20 min',6,'Fácil',1,0,0,JSON_ARRAY('Bata a polpa de cupuaçu no liquidificador.','Adicione o leite condensado e o creme de leite.','Bata por 3 minutos até ficar homogêneo.','Despeje em pote com tampa.','Leve ao freezer por no mínimo 4 horas.','Sirva em bolas com coco ralado se desejar.'),JSON_ARRAY('Cotidiano','Final de semana')),
('Compota de Caju','Cajus inteiros cozidos em calda de açúcar com cravo e canela até ficarem macios.','🍑','Sobremesa',35,'35 min',6,'Fácil',0,1,0,JSON_ARRAY('Lave os cajus e faça furos com garfo para não murcharem.','Prepare uma calda com açúcar, água, cravo e canela.','Coloque os cajus na calda fervente.','Cozinhe em fogo médio por 20 minutos.','Os cajus devem ficar macios mas inteiros.','Sirva frio com a calda por cima.'),JSON_ARRAY('Natal','Festa'));

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Cuxá','Vinagreira','Camarão seco','Alho','Cebola','Farinha de mandioca');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 0 FROM ingredientes WHERE nome IN ('Carne seca','Mandioca','Alho','Cebola','Coentro','Tomate','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Bacon');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 0 FROM ingredientes WHERE nome IN ('Camarão','Ovo','Leite de coco','Tomate','Cebola','Alho','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Limão','Pimentão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Carne seca','Cebola','Alho','Tomate','Pimentão','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Manteiga de garrafa');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Camarão','Ovo','Cebola','Alho','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino','Manteiga de garrafa');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 6, id, 0 FROM ingredientes WHERE nome IN ('Milho','Leite de coco','Açúcar','Canela','Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 0 FROM ingredientes WHERE nome IN ('Tapioca','Queijo coalho','Carne seca','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 1 FROM ingredientes WHERE nome IN ('Coentro','Tomate','Cebola');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 0 FROM ingredientes WHERE nome IN ('Carne seca','Farinha de mandioca','Cebola','Alho','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Manteiga de garrafa');

-- Receita 9: Peixada Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Batata','Ovos cozidos','Cebola','Tomate','Pimentão','Alho','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Sal');

-- Receita 10: Arroz de Maria Isabel
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Carne de sol','Cebola','Pimenta-de-cheiro','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 1 FROM ingredientes WHERE nome IN ('Coentro');

-- Receita 11: Caldeirada de Camarão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 0 FROM ingredientes WHERE nome IN ('Camarão fresco','Leite de coco','Azeite de dendê','Pimentão','Cebola','Alho','Sal','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 1 FROM ingredientes WHERE nome IN ('Coentro','Pimenta do reino');

-- Receita 12: Torta de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Ovo','Farinha de trigo','Tomate','Pimentão','Cebola','Alho','Coentro','Leite de coco');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Limão');

-- Receita 13: Arroz do Mar
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Lula','Polvo','Mexilhão','Camarão fresco','Alho','Coentro','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 14: Moqueca Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco de babaçu','Azeite de dendê','Camarão fresco','Cebola','Tomate','Sal','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 1 FROM ingredientes WHERE nome IN ('Coentro','Alho');

-- Receita 15: Sururu ao Leite de Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Leite de coco','Azeite de dendê','Alho','Cebola','Tempero verde','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 16: Caranguejada
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Leite de coco','Tomate','Cebola','Alho','Coentro','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 17: Carne de Sol Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Banana frita','Queijo coalho','Sal','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 1 FROM ingredientes WHERE nome IN ('Mandioca');

-- Receita 18: Paçoca de Carne de Sol
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol frita','Farinha de mandioca','Cebola','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 1 FROM ingredientes WHERE nome IN ('Alho','Pimenta do reino');

-- Receita 19: Cozidão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 0 FROM ingredientes WHERE nome IN ('Carne bovina','Maxixe','Quiabo','Abóbora','Batata','Alho','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 1 FROM ingredientes WHERE nome IN ('Arroz','Farinha de mandioca','Pimenta do reino');

-- Receita 20: Sarrabulho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Sangue coalhado','Vinho tinto','Alho','Sal','Pimenta do reino');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 1 FROM ingredientes WHERE nome IN ('Cebola','Coentro');

-- Receita 21: Sarapatel
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Sangue picado','Cominho','Alho','Sal','Pimenta do reino');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 1 FROM ingredientes WHERE nome IN ('Cebola');

-- Receita 22: Baião de Dois Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Feijão-de-corda','Toucinho','Queijo coalho','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 1 FROM ingredientes WHERE nome IN ('Cebola','Alho');

-- Receita 23: Arroz de Toucinho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Toucinho','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 1 FROM ingredientes WHERE nome IN ('Alho','Cebola');

-- Receita 24: Mocotó
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 0 FROM ingredientes WHERE nome IN ('Pata de boi','Feijão branco','Alho','Cebola','Tomate','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 25: Rabada
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 0 FROM ingredientes WHERE nome IN ('Rabo de boi','Batata','Agrião','Alho','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 1 FROM ingredientes WHERE nome IN ('Cebola','Pimenta do reino');

-- Receita 26: Feijão Verde
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 0 FROM ingredientes WHERE nome IN ('Feijão verde fresco','Nata','Sal','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 1 FROM ingredientes WHERE nome IN ('Leite de coco');

-- Receita 27: Vatapá Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 0 FROM ingredientes WHERE nome IN ('Camarão seco','Pão','Leite de coco','Amendoim','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 1 FROM ingredientes WHERE nome IN ('Azeite de dendê','Cebola','Alho');

-- Receita 28: Sarnambi no Leite de Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 0 FROM ingredientes WHERE nome IN ('Marisco sarnambi','Leite de coco','Alho','Cebola','Sal','Tempero verde');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 29: Peixe Frito no Azeite de Babaçu
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Óleo de babaçu','Sal','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 1 FROM ingredientes WHERE nome IN ('Alho','Farinha de mandioca');

-- Receita 30: Caldo de Ovos
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 0 FROM ingredientes WHERE nome IN ('Carne moída','Ovo','Alho','Cebola','Coentro','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 31: Beiju de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Coco ralado','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

-- Receita 32: Patola de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Farinha de rosca','Ovo','Sal','Limão','Alho');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 33: Casquinha de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Farinha de rosca','Leite de coco','Cebola','Tomate','Tempero verde','Sal');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 34: Tripinha Frita
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 0 FROM ingredientes WHERE nome IN ('Tripa de porco','Sal','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 1 FROM ingredientes WHERE nome IN ('Alho','Farinha de mandioca');

-- Receita 35: Cachorro-Quente Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 35, id, 0 FROM ingredientes WHERE nome IN ('Salsicha','Carne moída','Cebola','Tomate','Repolho','Sal','Pão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 35, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- Receita 36: Doce de Espécie
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 36, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','Açúcar','Farinha de trigo','Ovo','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 36, id, 1 FROM ingredientes WHERE nome IN ('Cravo','Canela');

-- Receita 37: Arroz Doce com Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite de coco','Açúcar','Canela','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 1 FROM ingredientes WHERE nome IN ('Leite');

-- Receita 38: Bolo de Arroz (Orelha de Macaco)
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 0 FROM ingredientes WHERE nome IN ('Arroz demolhado','Coco ralado','Açúcar','Óleo de babaçu');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 1 FROM ingredientes WHERE nome IN ('Sal');

-- Receita 39: Bolo de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 39, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite','Ovo','Coco ralado','Açúcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 39, id, 1 FROM ingredientes WHERE nome IN ('Leite de coco');

-- Receita 40: Doce de Bacuri
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 40, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','Açúcar');

-- Receita 41: Doce de Buriti
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','Açúcar');

-- Receita 42: Mingau de Milho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 42, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','Açúcar','Canela','Coco ralado');

-- Receita 43: Mingau de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Açúcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 1 FROM ingredientes WHERE nome IN ('Canela','Leite');

-- Receita 44: Queijadinha
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 44, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','Queijo parmesão','Leite condensado','Ovo','Manteiga de garrafa');

-- Receita 45: Sorvete de Cupuaçu
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaçu','Leite condensado','Creme de leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

-- Receita 46: Compota de Caju
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 46, id, 0 FROM ingredientes WHERE nome IN ('Caju','Açúcar','Cravo','Canela');