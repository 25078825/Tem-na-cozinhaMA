SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE receita_ingredientes;
TRUNCATE TABLE ingredientes;
TRUNCATE TABLE receitas;
SET FOREIGN_KEY_CHECKS = 1;

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
  ('Tripa de porco'), ('Salsicha'), ('Repolho'),
  ('Farinha de trigo'), ('Polpa de bacuri'), ('Polpa de buriti'),
  ('Milho verde'), ('Tapioca granulada'), ('Leite'), ('Queijo parmesão'),
  ('Leite condensado'), ('Creme de leite'), ('Polpa de cupuaçu'),
  ('Caju'), ('Cravo'), ('Arroz demolhado'), ('Banana'),
  ('Gergelim branco'), ('Pimenta dedo-de-moça'), ('Colorau'),
  ('Extrato de tomate'), ('Amido de milho'), ('Cebolinha'),
  ('Pimenta calabresa'), ('Linguiça calabresa'), ('Castanha de caju'),
  ('Salsinha'), ('Folha de louro'), ('Vinagre'), ('Inhame'),
  ('Cenoura'), ('Chuchu'), ('Couve'), ('Batata-doce'),
  ('Fígado de porco'), ('Coração de porco'), ('Pulmão de porco'),
  ('Erva-doce'), ('Farinha de milho'), ('Manteiga');

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Arroz de Cuxá',
  'Prato símbolo do Maranhão feito com arroz, folhas de vinagreira, camarão seco e gergelim tostado.',
  '�?�', 'Prato Principal', 50, '50 min', 4, 'Média', 0, 0, 1,
  JSON_ARRAY(
    'Cozinhe o arroz normalmente e reserve. Lave o camarão seco, retire o excesso de sal em água corrente e pique grosseiramente.',
    'Lave as folhas de vinagreira, retire os talos grossos e cozinhe em água fervente por 5 a 10 minutos até murcharem. Escorra, esprema o excesso de água e pique grosseiramente.',
    'Em frigideira seca, toste o gergelim branco em fogo médio por 2 minutos até dourar e soltar aroma. Reserve.',
    'Em panela grande, aqueça o azeite e refogue a cebola, o tomate, o pimentão e as pimentas-de-cheiro até ficarem macios. Acrescente o camarão seco e misture por 3 minutos.',
    'Adicione a vinagreira picada ao refogado e cozinhe por 2 minutos. Junte o gergelim tostado e acerte o sal.',
    'Acrescente o arroz cozido ao refogado verde, misturando delicadamente até ficar uniformemente verde e bem temperado. Sirva com peixe frito ou frango assado.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Carne de Sol com Mandioca',
  'Clássico maranhense: carne de sol grelhada na manteiga de garrafa com cebola caramelizada, servida sobre mandioca cozida macia.',
  '🥩', 'Prato Principal', 60, '60 min', 4, 'Fácil', 0, 0, 1,
  JSON_ARRAY(
    'Deixe a carne de sol de molho em água fria por 4 a 6 horas, trocando a água a cada 2 horas para dessalgar. Escorra e corte em pedaços ou bifes.',
    'Cozinhe a mandioca em panela de pressão com água e sal por 15 a 20 minutos até ficar macia. Retire o fio central e reserve.',
    'Em frigideira larga, aqueça um fio de óleo e frite a carne de sol em fogo alto, dourando bem de ambos os lados por cerca de 4 minutos de cada lado. Retire e reserve.',
    'Na mesma frigideira, derreta a manteiga de garrafa e doure as rodelas de cebola até ficarem caramelizadas. Adicione o alho e refogue rapidamente.',
    'Volte a carne à frigideira, misture com a cebola e o alho. Ajuste o tempero com pimenta-do-reino e sal se necessário.',
    'Sirva a carne sobre a mandioca cozida. Regue tudo com mais manteiga de garrafa e finalize com coentro picado.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo', 'Final de semana')
),
(
  'Torta de Camarão',
  'Torta maranhense com camarão seco dessalgado, batata cozida e extrato de tomate, coberta com camadas de ovos batidos em neve.',
  '�?', 'Entrada', 60, '60 min', 8, 'Média', 0, 1, 1,
  JSON_ARRAY(
    'Dessalgue o camarão seco deixando de molho na véspera, trocando a água. Refogue com cebola, alho e extrato de tomate até o camarão soltar do fundo. Acrescente a batata cozida em cubinhos e acerte o sal.',
    'Separe as claras das gemas. Bata as claras em neve bem firme. Adicione as gemas uma a uma, batendo levemente para incorporar.',
    'Unte uma assadeira média com manteiga. Espalhe cerca de um terço dos ovos batidos no fundo da forma.',
    'Distribua o recheio de camarão com batata uniformemente por cima da camada de ovos.',
    'Cubra com o restante dos ovos batidos, formando a tampa da torta.',
    'Leve ao forno pré-aquecido a 180°C por 30 a 35 minutos até a superfície dourar. Sirva com arroz branco e farofa.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Maria Isabel',
  'Arroz refogado no colorau e cozido junto com carne de sol em cubos dourados. Prato simples e saboroso do cotidiano maranhense.',
  '�?�', 'Prato Principal', 45, '45 min', 6, 'Fácil', 0, 0, 1,
  JSON_ARRAY(
    'Dessalgue a carne de sol de molho em água por 4 horas, trocando a água 2 vezes. Escorra e corte em cubinhos pequenos.',
    'Em panela larga, aqueça o óleo em fogo alto e doure os cubos de carne de sol até ficarem bem corados de todos os lados. Retire e reserve.',
    'Na mesma panela, refogue a cebola e o alho até murcharem. Adicione o colorau e a pimenta dedo-de-moça picada, mexendo por 1 minuto.',
    'Acrescente o arroz cru e refogue por 2 minutos no refogado para absorver o sabor.',
    'Devolva a carne de sol, misture com o arroz e junte metade do coentro. Despeje a água quente, ajuste o sal e tampe. Cozinhe em fogo médio até a água baixar ao nível do arroz.',
    'Abaixe o fogo ao mínimo e cozinhe tampado até secar completamente (cerca de 15 minutos). Deixe repousar 5 minutos e finalize com o restante do coentro.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Farofa de Camarão',
  'Farofa de farinha de mandioca torrada com camarão salteado, tomate, pimenta-de-cheiro e coentro.',
  '🥄', 'Acompanhamento', 25, '25 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Tempere os camarões com suco de limão, sal e pimenta-do-reino. Deixe marinar por 10 minutos.',
    'Em frigideira larga, derreta metade da manteiga em fogo alto e salteie os camarões por 2 a 3 minutos até ficarem rosados. Retire e reserve.',
    'Na mesma frigideira, acrescente o restante da manteiga e refogue a cebola e o alho. Adicione o tomate e a pimenta-de-cheiro, cozinhando até o tomate desmanchar (5 minutos).',
    'Volte os camarões à frigideira, misture bem e acerte o sal.',
    'Acrescente a farinha de mandioca torrada aos poucos, mexendo continuamente em fogo baixo até a farofa ficar solta e levemente dourada.',
    'Finalize com cebolinha e coentro picados. Sirva como acompanhamento de peixes ou carnes.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Canjica de Milho',
  'Milho verde batido com leite de coco, cozido com açúcar e canela até firmar. Cortado em quadrados e servido frio — doce típico maranhense.',
  '🌽', 'Sobremesa', 60, '60 min', 8, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Debulhe o milho das espigas. Bata o milho com o leite de coco no liquidificador até obter um creme homogêneo.',
    'Coe a mistura em peneira fina ou pano limpo, espremendo bem para extrair todo o líquido. Descarte o bagaço.',
    'Coloque o líquido coado numa panela com o açúcar, uma pitada de sal e o pau de canela. Leve ao fogo médio, mexendo constantemente.',
    'Cozinhe sempre mexendo até a mistura engrossar e começar a soltar do fundo da panela (cerca de 20 a 25 minutos). Adicione a manteiga e incorpore.',
    'Retire o pau de canela. Ainda quente, despeje em assadeira levemente untada, alisando a superfície com espátula.',
    'Deixe esfriar completamente e leve à geladeira por pelo menos 2 horas. Polvilhe canela em pó, corte em quadrados e sirva fria.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Tapioca Recheada',
  'Tapioca feita na frigideira seca recheada com queijo coalho e carne de sol desfiada, regada com manteiga de garrafa.',
  '🫓', 'Entrada', 15, '15 min', 2, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Peneire a goma de tapioca para deixá-la solta e sem grumos.',
    'Aqueça uma frigideira antiaderente em fogo médio-alto, sem óleo. Espalhe a goma formando um disco uniforme com as costas de uma colher.',
    'Aguarde 1 a 2 minutos até a tapioca firmar e as bordas começarem a soltar.',
    'Vire a tapioca delicadamente como uma panqueca. Aguarde mais 1 minuto no outro lado.',
    'Coloque o queijo coalho fatiado em metade do disco e deixe derreter levemente. Adicione a carne de sol desfiada e regue com manteiga de garrafa.',
    'Dobre ao meio, pressione levemente para fechar e sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Paçoca de Carne Seca',
  'Carne seca dessalgada, cozida na pressão, desfiada e frita com farinha de mandioca até virar uma farofa grossa e saborosa.',
  '�?�', 'Acompanhamento', 50, '50 min', 4, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Dessalgue a carne seca de molho em água por 24 horas, trocando a água de 4 em 4 horas. Escorra.',
    'Cozinhe a carne seca na panela de pressão com água limpa por 30 minutos até ficar bem macia. Escorra e desfie grosseiramente.',
    'Em frigideira larga, derreta a manteiga e frite a cebola e o alho até dourarem. Acrescente a carne desfiada e frite em fogo alto, mexendo, até ficar bem dourada (5 a 7 minutos).',
    'Abaixe o fogo. Acrescente a farinha de mandioca aos poucos, misturando constantemente até a mistura ficar solta e seca, semelhante a uma farofa grossa.',
    'Acerte o sal e a pimenta-do-reino. A paçoca deve ficar levemente úmida por dentro, com exterior seco.',
    'Finalize com cebolinha picada e sirva com arroz, feijão e ovo frito.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixada Maranhense',
  'Peixe cozido em camadas de cebola e tomate com leite de coco e pimenta-de-cheiro, finalizado com batata, ovos cozidos e coentro.',
  '�?�', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Tempere as postas de peixe com sal e suco de limão. Deixe marinar por 15 minutos.',
    'Em panela de barro ou panela comum, aqueça metade do azeite. Forre o fundo com camadas alternadas de rodelas de cebola e tomate.',
    'Coloque as postas de peixe por cima das camadas de legumes. Adicione as pimentas-de-cheiro picadas.',
    'Despeje o leite de coco e o restante do azeite sobre o peixe. Complete com água suficiente para quase cobrir as postas. Leve ao fogo médio.',
    'Assim que ferver, abaixe o fogo, tampe parcialmente e cozinhe por 20 minutos. Adicione as batatas cozidas em rodelas e os ovos cozidos. Acerte o sal.',
    'Finalize com cebolinha e coentro picados, tampe por 5 minutos e sirva com arroz branco e pirão feito com o caldo.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
(
  'Caldeirada de Camarão',
  'Camarões cozidos em caldo rico com extrato de tomate, leite de coco e creme de leite, servidos com arroz branco e pirão.',
  '�?', 'Prato Principal', 50, '50 min', 5, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Lave os camarões com suco de limão. Escorra e tempere com sal e pimenta.',
    'Em panela larga, aqueça o azeite e refogue cebola, alho e tomate por 8 minutos até formarem um molho. Adicione o extrato de tomate e parte do coentro.',
    'Coloque os camarões no refogado e acrescente cerca de 500 ml de água. Cozinhe por 10 minutos em fogo médio.',
    'Retire parte do caldo para fazer o pirão: misture com farinha de mandioca e leve ao fogo mexendo até engrossar.',
    'Na panela com os camarões, adicione a manteiga de garrafa. Pouco antes de servir, despeje o creme de leite e o leite de coco. Misture e deixe ferver por 3 minutos.',
    'Finalize com o restante do coentro e sirva bem quente com arroz branco e pirão.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Torta de Caranguejo',
  'Carne de caranguejo refogada com pimenta-de-cheiro e coentro, envolta em três camadas de ovos batidos em neve e assada no forno.',
  '🦀', 'Prato Principal', 55, '55 min', 4, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Aqueça a manteiga em frigideira e refogue a cebola, tomate e pimentas-de-cheiro até a cebola ficar transparente. Adicione a carne de caranguejo, sal e suco de limão. Refogue por 5 minutos. Reserve.',
    'Separe as claras das gemas. Bata as claras em neve firme. Adicione as gemas uma a uma, batendo levemente. Acrescente o amido de milho e misture.',
    'Divida a mistura de ovos em três partes iguais. Unte uma assadeira média com manteiga.',
    'Espalhe a primeira parte dos ovos no fundo da assadeira formando uma camada base.',
    'Misture a segunda parte dos ovos ao refogado de caranguejo e ao coentro. Espalhe essa mistura sobre a camada base.',
    'Cubra com a terceira parte dos ovos. Leve ao forno pré-aquecido a 180°C por 30 minutos até dourar. Sirva com arroz e farofa.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
(
  'Arroz do Mar',
  'Arroz cozido no caldo de frutos do mar — lula, camarão e sururu — com leite de coco, pimenta-de-cheiro e coentro.',
  '🌊', 'Prato Principal', 60, '60 min', 4, 'Difícil', 0, 0, 0,
  JSON_ARRAY(
    'Tempere os frutos do mar separadamente com sal, limão e pimenta. Reserve.',
    'Em panela grande, aqueça o azeite e refogue a cebola, o alho, o tomate e o pimentão por 5 minutos até amolecerem.',
    'Acrescente os frutos do mar ao refogado — primeiro a lula, depois o camarão e por último o sururu — e salteie por 3 minutos apenas para selar.',
    'Adicione o arroz cru e misture bem, refogando por 2 minutos no tempero.',
    'Despeje o caldo de peixe quente e o leite de coco. Adicione a pimenta-de-cheiro, acerte o sal e mexa uma vez. Tampe e cozinhe em fogo médio até a água baixar ao nível do arroz.',
    'Abaixe o fogo ao mínimo, tampe e cozinhe até secar completamente (15 minutos). Repouse 5 minutos e sirva decorado com coentro e cebolinha picados.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Moqueca Maranhense',
  'Peixe firme cozido em camadas de legumes com azeite, colorau e leite de coco — versão maranhense sem dendê, feita na panela de barro.',
  '�?�', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Tempere as postas de peixe com sal e suco de limão. Deixe marinar por 20 minutos.',
    'Em panela de barro ou panela larga, aqueça o azeite com o colorau para soltar a cor e o sabor.',
    'Em fogo médio, refogue a cebola, os tomates e os pimentões em camadas, sem mexer muito.',
    'Disponha as postas de peixe sobre as camadas de legumes. Adicione as pimentas-de-cheiro e despeje o caldo da marinada.',
    'Regue com o leite de coco por cima de todo o peixe. Tampe e cozinhe em fogo médio-baixo por 20 a 25 minutos sem mexer — apenas chacoalhe a panela eventualmente.',
    'Verifique o sal. Finalize com coentro e cebolinha picados e sirva com arroz branco, pirão e farinha de mandioca.'
  ),
  JSON_ARRAY('Páscoa', 'Semana Santa', 'Festa')
),
(
  'Sururu ao Leite de Coco',
  'Marisco sururu refogado no alho e cebola com extrato de tomate, finalizado no leite de coco cremoso e cheiro-verde farto.',
  '�?�', 'Prato Principal', 30, '30 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Lave o sururu em várias águas até sair limpa. Se necessário, escalde brevemente em água fervente por 2 minutos e escorra.',
    'Em panela larga, aqueça o azeite e refogue o alho até dourar levemente. Adicione a cebola e cozinhe até ficar transparente.',
    'Acrescente os tomates picados e o extrato de tomate. Cozinhe em fogo médio por 5 minutos até formar um molho. Tempere com sal e pimenta.',
    'Adicione o sururu ao molho, misture delicadamente e cozinhe por 5 minutos em fogo médio.',
    'Despeje o leite de coco sobre o sururu. Misture, tampe e cozinhe por mais 5 minutos até o sururu ficar macio e o molho cremoso.',
    'Finalize com cheiro-verde farto. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caranguejada',
  'Caranguejos inteiros cozidos em molho rústico de tomate, pimentão e leite de coco. Prato generoso servido com arroz e farofa.',
  '🦀', 'Prato Principal', 60, '60 min', 5, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Lave os caranguejos com escova em água corrente. Afervente por 5 minutos em panela com água e sal para facilitar o manuseio. Escorra.',
    'Em panela grande, aqueça o azeite e refogue cebola, alho, pimentões e tomates por 8 minutos até formarem um molho rústico. Tempere com sal e pimenta.',
    'Adicione suco de limão e metade do coentro e cebolinha. Misture.',
    'Coloque os caranguejos sobre o refogado. Cubra com água (cerca de metade da altura dos caranguejos). Tampe e cozinhe em fogo médio por 30 a 40 minutos.',
    'Nos últimos 5 minutos, adicione o leite de coco, misture chacoalhando a panela e deixe ferver até o molho engrossar levemente.',
    'Finalize com o restante do coentro e cebolinha. Sirva com arroz branco, farofa e molho de vinagrete.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Carne de Sol Maranhense',
  'Bifes de carne de sol grelhados servidos com banana-da-terra frita, queijo coalho e refogado de cebola na manteiga de garrafa.',
  '🥩', 'Prato Principal', 40, '40 min', 4, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Dessalgue a carne de sol de molho em água por 6 horas, trocando a água de 2 em 2 horas. Corte em bifes de 1,5 cm.',
    'Grelhe os bifes em frigideira bem quente com um fio de óleo, dourando bem dos dois lados (4 minutos de cada lado). Reserve em lugar aquecido.',
    'Frite as rodelas de banana-da-terra em óleo quente até dourarem dos dois lados (2 minutos por lado). Escorra em papel absorvente.',
    'Na mesma frigideira da carne, derreta a manteiga de garrafa e refogue as cebolas em rodelas até ficarem douradas e levemente caramelizadas.',
    'Adicione os cubinhos de queijo coalho ao refogado de cebola e deixe apenas 1 minuto até o queijo começar a amolecer. Desligue o fogo.',
    'Monte o prato: bifes de carne de sol, banana frita ao lado, cubra com o refogado de cebola e queijo. Regue com manteiga de garrafa e finalize com coentro picado.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Cozidão',
  'Carne bovina com legumes variados — mandioca, inhame, abóbora, quiabo, maxixe e couve — cozidos juntos em caldo temperado com colorau.',
  '🥘', 'Prato Principal', 90, '1h30', 5, 'Média', 0, 0, 0,
  JSON_ARRAY(
    'Em panela de pressão, aqueça o óleo e doure os pedaços de carne com cebola, alho, colorau, sal e pimenta. Acrescente 1,5 litro de água e a folha de louro. Cozinhe por 40 minutos na pressão.',
    'Abra a panela, verifique se a carne está macia. Transfira para uma panela maior com mais água se necessário.',
    'Adicione os legumes mais duros: batata-doce, mandioca, inhame e cenoura. Cozinhe por 10 minutos.',
    'Em seguida, adicione a abóbora, o chuchu, o maxixe e o quiabo. Cozinhe por mais 8 minutos.',
    'Por último, acrescente o repolho e a couve. Cozinhe por 5 minutos. Acerte o sal e finalize com cheiro-verde.',
    'Sirva direto na panela acompanhado de arroz branco e farofa.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Sarrabulho',
  'Miúdos de porco com toucinho, fígado, coração e sangue coalhado cozidos em caldo temperado com colorau e cheiro-verde.',
  '�?�', 'Prato Principal', 90, '90 min', 4, 'Difícil', 0, 1, 0,
  JSON_ARRAY(
    'Lave todos os miúdos com vinagre e água corrente. Escalde em água fervente por 5 minutos. Escorra e corte em pedaços pequenos.',
    'Em panela larga, aqueça o óleo e doure o alho, a cebola e o tomate por 5 minutos. Acrescente primeiro o toucinho (5 minutos), depois o fígado, o coração e o pulmão.',
    'Tempere com colorau, sal e pimenta. Refogue tudo em fogo alto por 8 a 10 minutos, mexendo bem.',
    'Cubra com água fervente (cerca de 600 ml) e cozinhe em fogo médio por 40 minutos, até os miúdos ficarem macios.',
    'Acrescente os cubos de sangue coalhado com delicadeza, mexendo pouco para não desmanchá-los. Cozinhe por mais 20 a 30 minutos.',
    'Acerte o sal, finalize com cheiro-verde e sirva com arroz branco, farinha de mandioca e pimenta.'
  ),
  JSON_ARRAY('Ano Novo', 'Festa')
),
(
  'Sarapatel',
  'Miúdos suínos picados finamente e cozidos em molho escuro e encorpado com colorau, cominho e coentro — versão maranhense.',
  '�?�', 'Prato Principal', 90, '90 min', 4, 'Difícil', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem todos os miúdos com vinagre e suco de limão. Escalde em água fervente por 10 minutos. Escorra e pique em pedaços bem pequenos.',
    'Em panela de barro ou panela comum, aqueça o azeite e refogue a cebola, alho e pimentão até dourarem levemente.',
    'Acrescente os miúdos picados ao refogado e frite em fogo alto por 10 minutos, mexendo sempre, até ficarem bem dourados.',
    'Adicione colorau, cominho, sal e pimenta-do-reino. Misture bem e acrescente a água. Cubra e cozinhe em fogo médio por 40 minutos, até os miúdos ficarem completamente macios.',
    'O sarapatel deve ficar com o molho escuro e encorpado. Se necessário, cozinhe destampado nos últimos 10 minutos para reduzir.',
    'Finalize com coentro picado. Sirva com arroz branco, farinha de mandioca, rodelas de laranja e pimenta.'
  ),
  JSON_ARRAY('Ano Novo', 'Festa')
),
(
  'Baião de Dois Maranhense',
  'Arroz e feijão-de-corda cozidos juntos com bacon, linguiça calabresa, leite de coco e queijo coalho derretido.',
  '�?�', 'Prato Principal', 50, '50 min', 4, 'Fácil', 0, 1, 1,
  JSON_ARRAY(
    'Cozinhe o feijão-de-corda em água com sal na panela de pressão por 20 a 25 minutos até ficar macio mas inteiro. Reserve com um pouco do caldo.',
    'Em panela larga, frite o bacon em sua própria gordura até dourar. Adicione a linguiça calabresa em rodelas e doure também. Junte o alho e a cebola, refogando até murchar.',
    'Acrescente o arroz cru ao refogado e mexa por 2 minutos para refogar bem.',
    'Adicione o feijão cozido com parte do caldo ao arroz. Acerte a quantidade de água quente para cozinhar o arroz normalmente (proporção 1:2).',
    'Quando a água reduzir ao nível do arroz, adicione o leite de coco e os cubos de queijo coalho. Acerte o sal, abaixe o fogo ao mínimo, tampe e cozinhe até secar (15 minutos).',
    'Desligue, repouse 5 minutos tampado e sirva com coentro e cebolinha picados por cima.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Arroz de Toucinho',
  'Arroz refogado na gordura do toucinho frito até ficar crocante, com alho e cebola. Prato simples com sabor defumado marcante.',
  '�?�', 'Acompanhamento', 30, '30 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Pique o toucinho bem miúdo, quase em pedaços do tamanho de torresmo pequeno.',
    'Coloque o toucinho em panela aquecida com uma pitada de sal. Frite em fogo médio-alto, mexendo, até o toucinho ficar dourado e crocante, soltando muita gordura.',
    'Retire o excesso de gordura da panela, deixando apenas o suficiente para fritar. Acrescente o alho amassado e a cebola picada e doure.',
    'Adicione o arroz cru e frite bem por 2 a 3 minutos, mexendo sempre até os grãos ficarem levemente transparentes.',
    'Despeje a água fervente, acerte o sal, mexa uma vez e tampe. Cozinhe em fogo médio até a água baixar ao nível do arroz, depois abaixe ao mínimo e cozinhe até secar completamente.',
    'Desligue, repouse 5 minutos e finalize com salsinha picada. Sirva com o toucinho crocante por cima.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Mocotó',
  'Pata de boi cozida na pressão por 1 hora até soltar colágeno e formar caldo gelatinoso denso, temperado com tomate, alho e colorau.',
  '🦴', 'Prato Principal', 90, '1h30', 5, 'Difícil', 0, 1, 0,
  JSON_ARRAY(
    'Lave muito bem o mocotó. Coloque na panela de pressão com água e vinagre, leve ao fogo, deixe ferver por 5 minutos e descarte essa água para eliminar impurezas.',
    'Na mesma panela, esprema o suco de limão sobre o mocotó. Adicione sal, alho e cebola. Refogue levemente por 3 minutos.',
    'Acrescente os tomates, colorau e o cravo-da-índia. Cubra com água suficiente para tampar o mocotó.',
    'Tampe a panela de pressão. Ao pegar pressão, abaixe o fogo e cozinhe por 1 hora. Verifique se os ossos estão soltando e o mocotó está gelatinoso.',
    'Abra a panela, retire os ossos maiores. O caldo deve estar bem encorpado e gelatinoso. Acerte o sal.',
    'Sirva em tigelas fundas, finalizado com salsinha bem picada. Acompanha pão francês ou arroz branco.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Rabada',
  'Rabo bovino selado e cozido na pressão por 40 minutos até soltar do osso, finalizado com agrião fresco e vinho tinto.',
  '🥩', 'Prato Principal', 70, '70 min', 5, 'Média', 0, 0, 0,
  JSON_ARRAY(
    'Lave o rabo bovino em água corrente. Tempere com sal, pimenta-do-reino e alho. Deixe marinar por 30 minutos.',
    'Em panela de pressão, aqueça o óleo em fogo alto e doure a rabada até ficar bem selada de todos os lados. Adicione a cebola e o pimentão e refogue por 3 minutos.',
    'Acrescente os tomates, a folha de louro e o vinho tinto. Despeje água suficiente para cobrir a carne. Tampe e cozinhe por 40 minutos após pegar pressão.',
    'Abra a panela e verifique se a carne está soltando do osso. Acerte o sal. Retire o excesso de gordura da superfície com uma colher.',
    'Acrescente o cheiro-verde e coloque o agrião por cima da carne sem mexer. Tampe novamente. Quando pegar pressão, desligue imediatamente o fogo.',
    'Aguarde a pressão sair naturalmente, abra a panela — o agrião estará murchado mas ainda verde. Sirva com arroz branco e batatas cozidas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Feijão Verde',
  'Feijão-de-corda verde cozido e finalizado com nata cremosa, manteiga, cebola dourada e coentro com cebolinha farta.',
  '🫘', 'Acompanhamento', 35, '35 min', 4, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Debulhe o feijão verde fresco (se estiver em vagem). Cozinhe em água com sal por 20 a 30 minutos até ficar macio mas inteiro. Reserve um pouco do caldo.',
    'Em panela separada, derreta a manteiga e refogue a cebola e o alho até ficarem dourados.',
    'Adicione o feijão cozido escorrido ao refogado. Misture delicadamente.',
    'Despeje a nata (ou creme de leite) sobre o feijão, misturando em fogo baixo. Se ficar muito espesso, acrescente um pouco do caldo reservado.',
    'Tempere com sal e pimenta-do-reino. Cozinhe em fogo baixo por 5 minutos, mexendo com delicadeza para não esmagar os grãos. O feijão deve ficar cremoso.',
    'Finalize com coentro e cebolinha picados fartamente. Sirva com arroz branco e mandioca cozida.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Vatapá Maranhense',
  'Pasta densa de pão demolhado, amendoim, castanha de caju, camarão seco e leite de coco, cozida até desgrudar da panela.',
  '�?�', 'Prato Principal', 50, '50 min', 4, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Rasgue os pães e deixe de molho no leite por 4 horas. Esprema o excesso de leite e amasse até obter uma pasta.',
    'No liquidificador, bata o amendoim e a castanha de caju torrada com um pouco de leite de coco até obter uma pasta grossa. Reserve.',
    'Em panela grande, aqueça o azeite e refogue a cebola, tomates e pimentas-de-cheiro por 8 minutos. Adicione o camarão seco dessalgado e refogue por 3 minutos.',
    'Acrescente a pasta de pão e a pasta de amendoim com castanha. Misture bem em fogo médio com colher de pau.',
    'Adicione gradualmente o leite de coco, mexendo continuamente. Quando a massa começar a soltar do fundo e ficar cremosa (cerca de 20 minutos), acrescente o camarão fresco e cozinhe por mais 5 minutos.',
    'Acerte o sal. O vatapá maranhense deve ter consistência firme e cremosa. Sirva com arroz branco.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Sarnambi no Leite de Coco',
  'Marisco sarnambi dos mangues maranhenses refogado com pimentão, colorau e tomate, finalizado em leite de coco cremoso.',
  '�?�', 'Prato Principal', 30, '30 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Lave o sarnambi em várias trocas de água até sair limpo. Se estiver na concha, cozinhe em água fervente até as conchas abrirem; descarte as que não abrirem.',
    'Em panela larga, aqueça o azeite com o colorau para soltar a cor. Refogue o alho, a cebola e o pimentão por 5 minutos.',
    'Adicione os tomates picados e cozinhe por mais 5 minutos até formarem um molho. Tempere com sal e pimenta-de-cheiro.',
    'Acrescente o sarnambi ao molho, misture delicadamente e cozinhe por 8 minutos em fogo médio.',
    'Despeje o leite de coco misturado com meia xícara de água morna. Misture, tampe e cozinhe por mais 5 minutos até o sarnambi ficar macio e o molho encorpado.',
    'Finalize com coentro e cebolinha fartamente picados. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixe Frito no Azeite de Babaçu',
  'Peixe inteiro temperado com alho, limão e colorau, frito no óleo de babaçu que confere sabor adocicado e amendoado único.',
  '�?�', 'Prato Principal', 40, '40 min', 4, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Faça cortes diagonais nas laterais do peixe para o tempero penetrar. Esfregue com sal grosso, alho amassado, suco de limão, pimenta-do-reino e colorau. Deixe marinar por 30 minutos.',
    'Aqueça fartamente o óleo de babaçu em frigideira funda. O óleo deve estar bem quente antes de colocar o peixe.',
    'Seque o peixe com papel absorvente para retirar o excesso de marinada e evitar que o óleo espirre.',
    'Coloque o peixe com cuidado no óleo quente e frite sem mexer por 5 a 7 minutos de cada lado, até a pele ficar crocante e dourada.',
    'Retire e escorra em papel absorvente. O óleo de babaçu confere ao peixe sabor adocicado e amendoado característico da culinária maranhense.',
    'Sirva com mandioca cozida, farinha de mandioca, pimenta-de-cheiro e limão.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de Ovos',
  'Caldo maranhense de carne moída com ovos pochê cozidos diretamente no caldo temperado. Tradicional em São Luís.',
  '🥚', 'Prato Principal', 30, '30 min', 4, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Em panela média, aqueça o óleo e refogue a cebola e o alho até ficarem dourados. Acrescente o pimentão e o tomate.',
    'Adicione a carne moída e refogue em fogo alto, desmanchando os grumos, até ficar completamente cozida e levemente dourada. Tempere com colorau, sal e pimenta.',
    'Despeje a água quente sobre o refogado. Mexa bem e deixe ferver em fogo médio por 10 minutos para incorporar os sabores.',
    'Se desejar caldo mais encorpado, dissolva a farinha de mandioca em meia xícara de água fria e adicione ao caldo mexendo bem para não empelotar.',
    'Quebre os ovos diretamente no caldo fervente, um de cada vez, com delicadeza para que cozinhem inteiros (pochê). Tampe e cozinhe por 4 a 5 minutos até as claras ficarem firmes e as gemas ainda macias.',
    'Finalize com cheiro-verde picado. Sirva o caldo bem quente com pão francês.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Beiju de Tapioca',
  'Disco de tapioca granulada hidratada no leite de coco quente com coco fresco ralado, grelhado na frigideira seca até dourar.',
  '🫓', 'Lanche', 25, '25 min', 6, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Em tigela grande, coloque a tapioca granulada. Despeje o leite de coco bem quente sobre a tapioca, misturando imediatamente. Deixe repousar por 10 minutos, mexendo a cada 2 minutos.',
    'Adicione o coco fresco ralado e misture bem até obter uma massa mais densa e homogênea. Se ficar seco, acrescente mais leite de coco morno.',
    'Aqueça uma frigideira antiaderente em fogo médio-alto, sem óleo.',
    'Coloque colheradas da massa e espalhe formando discos de 10 cm de diâmetro e 1 cm de espessura.',
    'Cozinhe por 3 a 4 minutos de cada lado, pressionando levemente com espátula, até ficarem dourados e levemente crocantes por fora.',
    'Sirva quente puro, com mel de engenho, ou com queijo coalho grelhado. Típico café da manhã maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Patola de Caranguejo',
  'Patas grandes de caranguejo empanadas em farinha de trigo, ovo e farinha de rosca, fritas em óleo bem quente até ficarem crocantes.',
  '🦀', 'Entrada', 35, '35 min', 4, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem as patolas esfregando com escova. Tempere com suco de limão, alho, sal e pimenta-do-reino. Deixe marinar por 20 minutos.',
    'Seque as patolas com papel absorvente para o empanamento aderir melhor.',
    'Passe cada patola sequencialmente: primeiro na farinha de trigo (sacuda o excesso), depois no ovo batido, e por último na farinha de rosca, pressionando para aderir bem.',
    'Aqueça fartamente óleo em panela funda até atingir 180°C.',
    'Frite as patolas empanadas por 3 a 4 minutos, virando uma vez, até ficarem douradas e crocantes por todos os lados.',
    'Escorra em papel absorvente. Sirva imediatamente com molho de pimenta e limão.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Casquinha de Caranguejo',
  'Carne de caranguejo refogada com pimentão, tomate e leite de coco, finalizada com coentro e cebolinha, servida na própria casca.',
  '🦀', 'Entrada', 35, '35 min', 4, 'Média', 0, 0, 0,
  JSON_ARRAY(
    'Tempere a carne de caranguejo com suco de limão, sal e pimenta-do-reino. Reserve.',
    'Em frigideira, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o pimentão e o tomate, cozinhando por 5 minutos até amolecerem.',
    'Acrescente a carne de caranguejo temperada ao refogado. Misture delicadamente e cozinhe em fogo baixo por 5 minutos.',
    'Despeje o leite de coco, misture e cozinhe por mais 5 minutos até o molho ficar cremoso e encorpado. Acerte o sal.',
    'Retire do fogo e misture coentro e cebolinha picados fartamente.',
    'Recheie as casquinhas de caranguejo limpas com o preparo. Sirva com arroz branco, farofa e fatias de limão.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Tripinha Frita',
  'Tripa de porco limpa, dessalgada em vinagre por 12 horas, cozida e frita empanada em farinha de milho até ficar dourada e crocante.',
  '�?�', 'Prato Principal', 40, '40 min', 4, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Lave a tripa de porco esfregando com sal grosso e limão. Deixe de molho em solução de água com vinagre e sal por pelo menos 12 horas para retirar o odor forte. Lave novamente.',
    'Cozinhe a tripa em panela com água e sal por 20 minutos até ficar macia. Escorra e deixe secar.',
    'Corte a tripa cozida em pedaços de 4 a 5 cm. Tempere com alho, sal e pimenta-do-reino.',
    'Passe cada pedaço de tripa na farinha de milho, cobrindo bem por todos os lados. Sacuda o excesso.',
    'Aqueça fartamente óleo em frigideira funda. Frite os pedaços em óleo quente por 4 a 5 minutos, virando, até ficarem dourados e crocantes.',
    'Escorra em papel absorvente. Sirva como aperitivo ou prato principal com vinagrete, farinha e pimenta.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Cachorro-Quente Maranhense',
  'Hot-dog maranhense com carne moída bem temperada, repolho fresco e milho verde no lugar da simples salsicha com mostarda.',
  '🌭', 'Lanche', 25, '25 min', 6, 'Fácil', 1, 1, 0,
  JSON_ARRAY(
    'Tempere o repolho fatiado finamente com sal, limão e uma pitada de açúcar. Deixe marinar por 10 minutos para amaciar levemente. Reserve.',
    'Em frigideira, aqueça o óleo e refogue a cebola e o alho até dourarem. Acrescente a carne moída em fogo alto, mexendo para soltar os grumos, até ficar bem dourada.',
    'Adicione os tomates picados, o extrato de tomate, pimenta-do-reino e pimenta calabresa. Cozinhe por 10 minutos até formar um molho espesso e saboroso. Acerte o sal.',
    'Aqueça os pães levemente na chapa ou forno por 2 minutos.',
    'Monte o cachorro-quente: abra o pão, coloque carne moída com molho, adicione o repolho temperado por cima e o milho verde.',
    'Finalize com mostarda e ketchup. A versão maranhense se caracteriza pela carne moída bem temperada e o repolho fresco como elemento principal.'
  ),
  JSON_ARRAY('Festa Junina', 'Lanche')
),
(
  'Doce de Espécie',
  'Doce típico de Alcântara (MA): cocada densa envolta em massa fina de trigo assada até dourar. Tradicional na Festa do Divino.',
  '�?�', 'Sobremesa', 75, '75 min', 6, 'Difícil', 0, 1, 0,
  JSON_ARRAY(
    'Prepare a cocada: coloque coco ralado, açúcar e água em panela. Leve ao fogo médio, mexendo sem parar até a calda reduzir e ficar bem cremosa e espessa (cerca de 20 minutos). Despeje em assadeira levemente untada e deixe esfriar completamente.',
    'Prepare a massa: em tigela, misture a farinha de trigo com sal e óleo até obter uma farofa. Acrescente água fria aos poucos, amassando até a massa ficar lisa e maleável. Descanse 15 minutos.',
    'Abra a massa em superfície enfarinhada com rolo, bem fina (2 mm). Corte em círculos de 8 a 10 cm de diâmetro.',
    'Coloque uma colher bem cheia de cocada fria no centro de cada disco. Feche dobrando a massa ao meio ou puxando as bordas e pressionando para selar.',
    'Arrume os doces em assadeira untada. Leve ao forno pré-aquecido a 180°C por 20 a 25 minutos até dourarem levemente.',
    'Deixe esfriar antes de servir. Tradicional na Festa do Divino de Alcântara.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Arroz Doce com Coco',
  'Arroz cozido no leite com canela e cravo, finalizado com leite de coco e coco ralado. Servido frio em tigelinhas com canela em pó.',
  '�?�', 'Sobremesa', 45, '45 min', 6, 'Fácil', 0, 1, 0,
  JSON_ARRAY(
    'Em panela média, cozinhe o arroz em água com a canela em pau, os cravos e uma pitada de sal por 15 minutos até o arroz ficar bem macio e a água secar.',
    'Acrescente o leite integral quente ao arroz cozido, misturando bem. Cozinhe em fogo baixo, mexendo constantemente para não grudar.',
    'Quando o leite reduzir pela metade, adicione o açúcar e continue mexendo em fogo baixo.',
    'Quando a mistura ficar cremosa e o arroz bem absorver o leite, adicione o leite de coco e o coco ralado. Misture e cozinhe por mais 5 minutos.',
    'Retire o pau de canela e os cravos. A consistência deve ser cremosa — o arroz doce endurece ao esfriar.',
    'Distribua em tigelinhas ou taças. Polvilhe com canela em pó. Sirva frio.'
  ),
  JSON_ARRAY('Natal', 'Festa')
),
(
  'Bolo de Arroz (Orelha de Macaco)',
  'Disco frito de arroz demolhado batido com ovo, açúcar e cravo, frito no óleo de babaçu. Chamado "orelha de macaco" pelo formato irregular.',
  '�?�', 'Sobremesa', 45, '45 min', 6, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Deixe o arroz de molho em água por no mínimo 10 horas. Escorra bem.',
    'Bata o arroz escorrido no liquidificador com o ovo, o açúcar, os cravos amassados e o sal. Adicione água morna aos poucos apenas o suficiente para bater. A massa deve ficar espessa.',
    'Adicione a farinha de trigo com fermento à massa e misture com colher até homogeneizar.',
    'Deixe a massa descansar por 15 minutos.',
    'Aqueça o óleo de babaçu (ou óleo vegetal) em frigideira funda. Coloque colheradas da massa e frite por 3 minutos de cada lado, até ficarem dourados e crocantes.',
    'Escorra em papel absorvente. Sirva quente. São chamados "orelha de macaco" por ficarem achatados e irregulares, como pequenos discos dourados.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Bolo de Tapioca',
  'Bolo maranhense de tapioca granulada hidratada no leite de coco batido com coco fresco e erva-doce, assado no forno. Textura úmida e elástica.',
  '🎂', 'Sobremesa', 90, '1h30', 8, 'Média', 0, 0, 0,
  JSON_ARRAY(
    'Corte o coco seco em pedaços e bata no liquidificador com o leite até obter leite de coco artesanal. Coe levemente.',
    'Em tigela grande, misture a tapioca granulada com o leite de coco batido. Deixe repousar por 1 hora, mexendo de vez em quando para a tapioca hidratar uniformemente.',
    'Após 1 hora, adicione o leite de coco industrializado, manteiga, farinha de trigo e a erva-doce. Misture bem.',
    'Por último, adicione o fermento em pó e misture delicadamente.',
    'Unte uma forma com manteiga e farinha. Despeje a massa e leve ao forno pré-aquecido a 180°C por 50 a 60 minutos, até dourar e o palito sair limpo.',
    'Deixe esfriar antes de desenformar. O bolo tem textura úmida e levemente elástica, característica da tapioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Doce de Bacuri',
  'Polpa de bacuri — fruta nativa maranhense de sabor exótico — batida com leite condensado e creme de leite ou cozida com açúcar até firmar.',
  '�?�', 'Sobremesa', 30, '30 min', 6, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Extraia a polpa do bacuri (fruta com casca grossa e polpa esbranquiçada). Descarte a casca e as sementes.',
    'No liquidificador, bata a polpa com o leite condensado e o creme de leite por 2 minutos até ficar completamente homogêneo e cremoso.',
    'Prove o creme — se necessário, adicione açúcar a gosto e bata novamente.',
    'Para versão firme (doce de tabuleiro): leve a polpa com o açúcar ao fogo médio numa panela, mexendo sempre até encorpar e soltar do fundo (25 a 30 minutos). Despeje em forma untada e corte quando frio.',
    'Para o creme gelado: distribua o creme batido em taças ou potes. Cubra e leve à geladeira por mínimo 2 horas.',
    'Sirva gelado. O bacuri tem aroma exótico e sabor intensamente aromático, muito apreciado no Maranhão e Pará.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Buriti',
  'Polpa de buriti do cerrado maranhense cozida com açúcar até firmar em pasta de cor laranja intensa e sabor adocicado característico.',
  '�?�', 'Sobremesa', 60, '60 min', 6, 'Média', 0, 0, 0,
  JSON_ARRAY(
    'Para extrair a polpa: cozinhe os frutos inteiros em água por 15 minutos até amolecerem. Esprema em peneira com as mãos, separando a polpa laranja-avermelhada dos caroços e da casca.',
    'Coloque a polpa de buriti em panela de fundo grosso. Adicione o açúcar e misture bem (não adicione água — a polpa já tem umidade suficiente).',
    'Leve ao fogo médio, mexendo constantemente com colher de pau para não grudar no fundo. O doce começa a desprender vapor e mudar de cor para um tom mais escuro.',
    'Continue mexendo sem parar por 30 a 40 minutos, até o doce engrossar e começar a soltar do fundo da panela. Teste: puxe a colher e o sulco deve permanecer visível por alguns segundos.',
    'Despeje em tabuleiro ou forma levemente untados. Espalhe uniformemente e deixe esfriar completamente em temperatura ambiente.',
    'Corte em pedaços quando estiver frio e firme. O doce de buriti tem cor laranja intensa e sabor levemente oleoso, típico do cerrado maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Mingau de Milho',
  'Milho verde debulhado batido com leite no liquidificador, coado e cozido com açúcar e canela até engrossar. Servido quente com canela em pó.',
  '🌽', 'Sobremesa', 35, '35 min', 6, 'Média', 1, 1, 0,
  JSON_ARRAY(
    'Debulhe o milho das espigas. No liquidificador, bata o milho verde com o leite integral até ficar completamente triturado.',
    'Coe a mistura em peneira fina ou pano limpo, espremendo bem para extrair todo o líquido leitoso. Descarte o bagaço sólido.',
    'Coloque o líquido coado em panela com o açúcar, uma pitada de sal e o pau de canela. Misture bem.',
    'Leve ao fogo médio, mexendo constantemente com colher de pau para não empelotar nem grudar. O mingau vai engrossando gradualmente.',
    'Continue mexendo por 20 a 25 minutos, até o mingau ficar espesso e encorpado. Retire o pau de canela.',
    'Sirva quente em tigelas, polvilhado com canela em pó.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Mingau de Tapioca',
  'Tapioca granulada cozida no leite com leite condensado e manteiga até ficar totalmente transparente e cremosa. Tradicional nas festas juninas.',
  '🥛', 'Sobremesa', 30, '30 min', 6, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Em panela média, coloque a tapioca granulada e despeje o leite integral frio. Misture bem e deixe descansar por 5 minutos para a tapioca começar a hidratar.',
    'Leve a panela ao fogo médio, mexendo constantemente com colher de pau para evitar que a tapioca grude no fundo.',
    'Continue mexendo por 15 a 20 minutos até a tapioca ficar completamente transparente e o mingau engrossar consideravelmente.',
    'Acrescente o leite condensado e a manteiga. Misture bem e continue cozinhando por mais 5 minutos até ficar cremoso.',
    'Se desejar, adicione o coco ralado e misture. Acerte a doçura.',
    'Sirva em tigelas, quente ou morno, polvilhado com canela em pó.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Queijadinha',
  'Bolinho assado de queijo coalho, coco ralado, farinha de trigo e ovos. Textura levemente úmida por dentro e dourada por fora.',
  '🧀', 'Sobremesa', 40, '40 min', 12, 'Fácil', 0, 0, 0,
  JSON_ARRAY(
    'Pré-aqueça o forno a 180°C. Unte e enfarinhe forminhas pequenas para empada ou cupcake.',
    'No liquidificador, bata os ovos com o açúcar e a manteiga por 2 minutos até formar um creme claro.',
    'Adicione o leite e continue batendo. Acrescente a farinha de trigo aos poucos e bata até homogeneizar. Por último, adicione o fermento e bata por mais 30 segundos.',
    'Retire do liquidificador e misture manualmente o queijo coalho ralado e o coco ralado, para preservar a textura.',
    'Distribua a massa nas forminhas, enchendo até três quartos da capacidade. Leve ao forno pré-aquecido por 25 a 30 minutos até dourarem.',
    'Deixe esfriar 10 minutos antes de desenformar. As queijadinhas devem ter textura levemente úmida por dentro e dourada por fora.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Sorvete de Cupuaçu',
  'Polpa de cupuaçu batida com leite condensado e creme de leite, batida duas vezes para quebrar os cristais e ficar cremosa.',
  '�?�', 'Sobremesa', 30, '30 min', 6, 'Fácil', 1, 0, 0,
  JSON_ARRAY(
    'Deixe a polpa de cupuaçu descongelar parcialmente — não completamente, assim o sorvete fica mais cremoso.',
    'No liquidificador, bata a polpa com o leite condensado, creme de leite e leite integral por 3 minutos até ficar completamente homogêneo. Prove e adicione açúcar se necessário.',
    'Despeje a mistura em recipiente com tampa e leve ao freezer por 3 horas até ficar semissólido.',
    'Retire do freezer, bata novamente na batedeira ou liquidificador por 5 minutos para quebrar os cristais de gelo e deixar cremoso.',
    'Volte ao recipiente com tampa e leve ao freezer por mais 3 a 4 horas até endurecer completamente.',
    'Retire do freezer 10 minutos antes de servir para amolecer levemente. Sirva em casquinhas ou tigelas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Compota de Caju',
  'Cajus inteiros cozidos na pressão com açúcar, cravo e canela, reposados por 12 horas para absorver a calda e atingir a textura correta.',
  '�?�', 'Sobremesa', 90, '1h30', 6, 'Média', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os cajus. Retire as castanhas e reserve. Retire o pedúnculo com uma faca pequena. Fure a casca dos cajus com palito em vários pontos para o açúcar penetrar.',
    'Esprema os cajus levemente com as mãos para retirar parte do suco amargo característico. Reserve o suco.',
    'Em panela de pressão, coloque os cajus espremidos, o suco reservado, a maior parte do açúcar, os cravos e a canela em rama. Cozinhe na pressão por 30 minutos.',
    'Desligue e aguarde a pressão sair naturalmente. Abra a panela, adicione o restante do açúcar e leve ao fogo novamente por mais 25 minutos na pressão.',
    'Desligue o fogo e — muito importante — só abra a panela após 12 horas. Esse repouso é fundamental para o caju absorver a calda e atingir a textura correta de compota.',
    'Retire os cajus com delicadeza e sirva com a calda. Guarde em vidros esterilizados com tampa na geladeira.'
  ),
  JSON_ARRAY('Natal', 'Festa')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Camarão seco','Gergelim branco','Cebola','Tomate','Pimentão','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 1 FROM ingredientes WHERE nome IN ('Cuxá','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Mandioca','Cebola','Alho','Coentro','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 0 FROM ingredientes WHERE nome IN ('Camarão seco','Batata','Extrato de tomate','Cebola','Alho','Ovo','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Carne de sol','Cebola','Alho','Colorau','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 1 FROM ingredientes WHERE nome IN ('Pimenta dedo-de-moça','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Camarão fresco','Cebola','Alho','Tomate','Pimenta-de-cheiro','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 6, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','Açúcar','Canela','Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Queijo coalho','Carne de sol','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 1 FROM ingredientes WHERE nome IN ('Coentro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 0 FROM ingredientes WHERE nome IN ('Carne seca','Farinha de mandioca','Cebola','Alho','Manteiga','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Batata','Ovos cozidos','Cebola','Tomate','Pimenta-de-cheiro','Alho','Cebolinha','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 0 FROM ingredientes WHERE nome IN ('Camarão fresco','Leite de coco','Creme de leite','Extrato de tomate','Cebola','Alho','Tomate','Coentro','Manteiga de garrafa','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Ovo','Amido de milho','Tomate','Pimenta-de-cheiro','Cebola','Alho','Coentro','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Lula','Camarão fresco','Sururu','Cebola','Alho','Tomate','Pimentão','Leite de coco','Pimenta-de-cheiro','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Colorau','Cebola','Tomate','Pimentão','Pimenta-de-cheiro','Cebolinha','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Leite de coco','Extrato de tomate','Alho','Cebola','Tomate','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Leite de coco','Tomate','Cebola','Alho','Pimentão','Coentro','Cebolinha','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Banana','Queijo coalho','Cebola','Manteiga de garrafa','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 0 FROM ingredientes WHERE nome IN ('Carne bovina','Mandioca','Inhame','Abóbora','Maxixe','Quiabo','Batata-doce','Cenoura','Chuchu','Repolho','Couve','Cebola','Alho','Colorau','Folha de louro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 1 FROM ingredientes WHERE nome IN ('Arroz','Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Sangue coalhado','Toucinho','Fígado de porco','Coração de porco','Pulmão de porco','Cebola','Alho','Tomate','Colorau','Coentro','Vinagre');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Cominho','Colorau','Alho','Cebola','Pimentão','Coentro','Vinagre','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Feijão-de-corda','Bacon','Linguiça calabresa','Alho','Cebola','Leite de coco','Queijo coalho','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Toucinho','Alho','Cebola','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 1 FROM ingredientes WHERE nome IN ('Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 0 FROM ingredientes WHERE nome IN ('Pata de boi','Alho','Cebola','Tomate','Colorau','Cravo','Vinagre','Limão','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 0 FROM ingredientes WHERE nome IN ('Rabo de boi','Agrião','Cebola','Alho','Tomate','Pimentão','Folha de louro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 1 FROM ingredientes WHERE nome IN ('Vinho tinto','Pimenta do reino','Batata');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 0 FROM ingredientes WHERE nome IN ('Feijão verde fresco','Nata','Cebola','Alho','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 1 FROM ingredientes WHERE nome IN ('Leite de coco','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 0 FROM ingredientes WHERE nome IN ('Camarão seco','Camarão fresco','Pão','Leite de coco','Amendoim','Castanha de caju','Cebola','Tomate','Pimenta-de-cheiro','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 0 FROM ingredientes WHERE nome IN ('Marisco sarnambi','Leite de coco','Colorau','Alho','Cebola','Pimentão','Tomate','Pimenta-de-cheiro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Óleo de babaçu','Alho','Limão','Colorau','Pimenta do reino');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 0 FROM ingredientes WHERE nome IN ('Carne moída','Ovo','Cebola','Alho','Tomate','Pimentão','Colorau','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Farinha de trigo','Ovo','Farinha de rosca','Alho','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Leite de coco','Cebola','Alho','Pimentão','Tomate','Coentro','Cebolinha','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 0 FROM ingredientes WHERE nome IN ('Tripa de porco','Vinagre','Farinha de milho','Alho','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 0 FROM ingredientes WHERE nome IN ('Salsicha','Carne moída','Cebola','Alho','Tomate','Extrato de tomate','Repolho','Pão','Milho verde');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 1 FROM ingredientes WHERE nome IN ('Pimenta calabresa','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','Açúcar','Farinha de trigo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 1 FROM ingredientes WHERE nome IN ('Cravo','Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 35, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite','Leite de coco','Açúcar','Canela','Coco ralado','Cravo');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 36, id, 0 FROM ingredientes WHERE nome IN ('Arroz demolhado','Ovo','Açúcar','Cravo','Farinha de trigo','Óleo de babaçu');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Leite','Coco ralado','Manteiga','Farinha de trigo','Erva-doce');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','Leite condensado','Creme de leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 39, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','Açúcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 40, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite','Açúcar','Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite','Leite condensado','Manteiga de garrafa','Canela');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 42, id, 0 FROM ingredientes WHERE nome IN ('Queijo coalho','Coco ralado','Açúcar','Ovo','Leite','Farinha de trigo','Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaçu','Leite condensado','Creme de leite','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 44, id, 0 FROM ingredientes WHERE nome IN ('Caju','Açúcar','Cravo','Canela');

UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&h=400&fit=crop&q=80' WHERE id = 1;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1544025162-d76538b7b90c?w=600&h=400&fit=crop&q=80' WHERE id = 2;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1559181567-c3190958d3c8?w=600&h=400&fit=crop&q=80' WHERE id = 3;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=600&h=400&fit=crop&q=80' WHERE id = 4;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&h=400&fit=crop&q=80' WHERE id = 5;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1515003197210-e00f7095ef78?w=600&h=400&fit=crop&q=80' WHERE id = 6;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 7;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1529042410759-befb1204b468?w=600&h=400&fit=crop&q=80' WHERE id = 8;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519984388953-d2406bc725e1?w=600&h=400&fit=crop&q=80' WHERE id = 9;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&h=400&fit=crop&q=80' WHERE id = 10;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519505907962-0a6cb0167c73?w=600&h=400&fit=crop&q=80' WHERE id = 11;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&h=400&fit=crop&q=80' WHERE id = 12;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 13;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=600&h=400&fit=crop&q=80' WHERE id = 14;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1580476262798-28787b08a9ff?w=600&h=400&fit=crop&q=80' WHERE id = 15;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=600&h=400&fit=crop&q=80' WHERE id = 16;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1551218372-a8789b81b253?w=600&h=400&fit=crop&q=80' WHERE id = 17;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1574484284002-5b647b80c0d2?w=600&h=400&fit=crop&q=80' WHERE id = 18;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1574484284002-5b647b80c0d2?w=600&h=400&fit=crop&q=80' WHERE id = 19;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 20;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?w=600&h=400&fit=crop&q=80' WHERE id = 21;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 22;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1544025162-d76538b7b90c?w=600&h=400&fit=crop&q=80' WHERE id = 23;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=600&h=400&fit=crop&q=80' WHERE id = 24;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1525059696034-4967a8e1dca2?w=600&h=400&fit=crop&q=80' WHERE id = 25;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=600&h=400&fit=crop&q=80' WHERE id = 26;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519984388953-d2406bc725e1?w=600&h=400&fit=crop&q=80' WHERE id = 27;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1612927601601-6638404737ce?w=600&h=400&fit=crop&q=80' WHERE id = 28;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 29;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1580476262798-28787b08a9ff?w=600&h=400&fit=crop&q=80' WHERE id = 30;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519505907962-0a6cb0167c73?w=600&h=400&fit=crop&q=80' WHERE id = 31;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1529042410759-befb1204b468?w=600&h=400&fit=crop&q=80' WHERE id = 32;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1568901346729-58977e182f16?w=600&h=400&fit=crop&q=80' WHERE id = 33;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1466637574441-749b8f19452f?w=600&h=400&fit=crop&q=80' WHERE id = 34;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&h=400&fit=crop&q=80' WHERE id = 35;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 36;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=600&h=400&fit=crop&q=80' WHERE id = 37;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1473093226795-af9932fe5856?w=600&h=400&fit=crop&q=80' WHERE id = 38;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1469893836999-f38a8d84246f?w=600&h=400&fit=crop&q=80' WHERE id = 39;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1515003197210-e00f7095ef78?w=600&h=400&fit=crop&q=80' WHERE id = 40;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 41;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1466637574441-749b8f19452f?w=600&h=400&fit=crop&q=80' WHERE id = 42;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1488900128323-21503983a07e?w=600&h=400&fit=crop&q=80' WHERE id = 43;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1473093226795-af9932fe5856?w=600&h=400&fit=crop&q=80' WHERE id = 44;

INSERT IGNORE INTO ingredientes (nome) VALUES
  ('Cogumelo seco'), ('Jenipapo'), ('Murici'), ('Gengibre'),
  ('Palmito'), ('Alecrim'), ('Tomilho'), ('Fermento em pó'),
  ('Açúcar demerara');

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, vegano, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Arroz de Cuxá Vegano',
  'Versão 100% vegana do prato símbolo do Maranhão: arroz cozido com folhas de vinagreira, gergelim torrado e temperos regionais, sem camarão.',
  '🌿', 'Prato Principal', 40, '40 min', 4, 'Média', 0, 0, 1, 1,
  JSON_ARRAY(
    'Lave bem as folhas de vinagreira e retire os talos mais grossos. Reserve. Toste o gergelim branco em frigideira seca em fogo baixo por 2 minutos, mexendo sempre, até dourar levemente. Reserve.',
    'Em uma panela média, aqueça 2 colheres de sopa de óleo de babaçu em fogo médio. Refogue 1 cebola picada e 3 dentes de alho amassados até ficarem dourados e macios.',
    'Adicione 1 tomate picado e 1/2 pimentão verde picado. Cozinhe por 3 minutos, mexendo, até formar um refogado aromático.',
    'Acrescente as folhas de vinagreira picadas grosseiramente e metade do gergelim. Refogue por 5 minutos em fogo médio-baixo até as folhas murcharem e escurecerem, soltando sabor ácido característico.',
    'Adicione 2 xícaras de arroz já lavado e refogue por 1 minuto. Despeje 4 xícaras de água fervente, tempere com sal e cozinhe tampado em fogo baixo por 18 a 20 minutos.',
    'Desligue o fogo e deixe descansar tampado por 5 minutos. Sirva polvilhado com o restante do gergelim torrado e, se desejar, farinha de mandioca por cima.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Baião de Dois Vegano',
  'Clássico nordestino reinventado: feijão-de-corda e arroz cozidos juntos com abóbora, pimentão e temperos do Maranhão, sem carne nem laticínios.',
  '🫘', 'Prato Principal', 50, '50 min', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xícaras de feijão-de-corda de molho por 4 horas. Escorra e cozinhe na panela de pressão com água e sal por 15 minutos. O feijão deve ficar macio mas inteiro. Reserve com o caldo.',
    'Em uma panela grande, aqueça 3 colheres de sopa de óleo de babaçu em fogo médio. Refogue 1 cebola grande picada e 4 dentes de alho amassados até dourarem.',
    'Adicione 1/2 pimentão vermelho e 1/2 pimentão verde picados e 2 tomates picados. Refogue por 3 minutos. Adicione 300 g de abóbora cortada em cubos de 2 cm e cozinhe por 5 minutos.',
    'Acrescente 2 xícaras de arroz lavado e misture bem com o refogado por 1 minuto. Adicione o feijão cozido junto com seu caldo, completando com água se necessário para dar 4 xícaras de líquido total.',
    'Tempere com sal e pimenta-de-cheiro picada. Tampe a panela e cozinhe em fogo médio-baixo por 20 minutos, até o arroz absorver o líquido.',
    'Desligue o fogo e deixe repousar tampado por 5 minutos. Abra e finalize com coentro fresco picado. Sirva quente.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Arroz de Batipuru Vegano',
  'Versão vegana do tradicional arroz maranhense com vinagreira, quiabo e maxixe refogados, substituindo o camarão seco por legumes da região.',
  '🌱', 'Prato Principal', 45, '45 min', 4, 'Média', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave 1 maço de vinagreira e corte em tiras. Corte 200 g de quiabo em rodelas de 1 cm e 150 g de maxixe ao meio. Lave quiabo e maxixe com água e vinagre para reduzir a baba.',
    'Em uma panela, aqueça 3 colheres de sopa de óleo de babaçu. Refogue 1 cebola picada e 3 dentes de alho até dourar. Adicione 1/2 pimentão verde e 2 tomates picados, refogando por 3 minutos.',
    'Acrescente o quiabo e o maxixe. Refogue em fogo médio por 5 minutos, mexendo levemente para não desmanchar os legumes.',
    'Junte a vinagreira picada e refogue por mais 3 minutos. Os legumes vão absorver o sabor ácido da vinagreira, criando um caldo aromático característico.',
    'Adicione 2 xícaras de arroz lavado, misture delicadamente e cubra com 4 xícaras de água fervente. Tempere com sal. Cozinhe tampado em fogo baixo por 20 minutos.',
    'Desligue e deixe descansar por 5 minutos antes de abrir. Finalize com coentro fresco e sirva com farinha de mandioca à parte.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Arroz Maria Isabel Vegano',
  'Releitura vegana do clássico maranhense: arroz temperado com cogumelo seco defumado no lugar da carne de sol, com cebola e coentro.',
  '�?�', 'Prato Principal', 50, '50 min', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Hidrate 150 g de cogumelo seco em 2 xícaras de água morna por 20 minutos. Escorra, esprema levemente e pique em cubinhos. Reserve a água de hidratação coada.',
    'Misture os cogumelos com 2 colheres de sopa de shoyu e 1/2 colher de chá de cominho. Marine por 10 minutos.',
    'Em uma panela grande, aqueça 3 colheres de sopa de óleo de babaçu em fogo alto. Adicione os cogumelos marinados e refogue por 5 minutos até ficarem dourados.',
    'Adicione 1 cebola grande e 4 dentes de alho picados. Refogue por 2 minutos. Acrescente 1 pimentão vermelho e 2 tomates picados e cozinhe por 3 minutos.',
    'Junte 3 xícaras de arroz lavado e misture bem. Adicione a água reservada dos cogumelos mais água quente até completar 6 xícaras de líquido. Tempere com sal.',
    'Cozinhe em fogo médio com tampa entreaberta por 20 minutos. Desligue, tampe e deixe descansar por 5 minutos. Abra e finalize com coentro fresco picado.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Moqueca da Horta',
  'Moqueca vegana com legumes coloridos cozidos no leite de coco e azeite de dendê. Toda a riqueza da moqueca maranhense sem peixe nem frutos do mar.',
  '🥦', 'Prato Principal', 45, '45 min', 5, 'Média', 0, 0, 1, 1,
  JSON_ARRAY(
    'Corte 300 g de abóbora e 300 g de batata-doce em cubos de 3 cm. Corte 2 pimentões em tiras largas. Fatie 2 cebolas em meia-lua. Corte 3 tomates ao meio. Reserve.',
    'Em uma panela de barro ou panela funda, aqueça 3 colheres de sopa de azeite de dendê em fogo médio. Refogue a cebola em meia-lua e 4 dentes de alho fatiados por 3 minutos.',
    'Adicione os tomates e os pimentões. Cozinhe por 5 minutos até começarem a amolecer e soltar sucos aromáticos.',
    'Acrescente a abóbora e a batata-doce. Misture delicadamente para não desmanchar. Tempere com sal e pimenta-de-cheiro.',
    'Despeje 400 ml de leite de coco e misture. Tampe a panela e cozinhe em fogo baixo por 20 a 25 minutos, até os legumes ficarem macios mas íntegros.',
    'Abra e ajuste o sal. Finalize com coentro fresco picado e cebolinha. Sirva com arroz branco e farofa de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Almoço de domingo')
),
(
  'Vatapá Vegano de Abóbora',
  'Vatapá cremoso feito com purê de abóbora, leite de coco, amendoim e castanha de caju. Sabor profundo e cor dourada incrível, sem camarão.',
  '🎃', 'Prato Principal', 55, '55 min', 6, 'Média', 0, 1, 1, 0,
  JSON_ARRAY(
    'Corte 800 g de abóbora em cubos, tempere com sal e asse no forno a 200°C por 25 minutos ou cozinhe no vapor até ficar macia. Faça um purê e reserve.',
    'Hidrate 2 fatias de pão amanhecido sem casca em 1/2 xícara de leite de coco. Triture 1/2 xícara de amendoim torrado sem casca e 1/2 xícara de castanha de caju crua no processador até virar pasta.',
    'Em uma panela grande, aqueça 2 colheres de sopa de azeite de dendê. Refogue 1 cebola picada, 4 dentes de alho e 1 colher de chá de gengibre ralado por 3 minutos.',
    'Adicione 1/2 pimentão vermelho picado e refogue por 2 minutos. Acrescente o purê de abóbora, a pasta de castanhas e o pão hidratado. Misture tudo muito bem.',
    'Despeje 400 ml de leite de coco e cozinhe em fogo médio-baixo por 15 minutos, mexendo sempre até engrossar e ficar com textura cremosa. Ajuste o sal.',
    'Finalize com coentro picado e sirva sobre arroz branco. O vatapá deve ter consistência pastosa e cor dourada intensa.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'Almoço de domingo')
),
(
  'Caruru Vegano de Quiabo',
  'Caruru preparado com quiabo, leite de coco e amendoim torrado. Releitura vegana do clássico afro-brasileiro com toques maranhenses.',
  '🌿', 'Prato Principal', 40, '40 min', 5, 'Média', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave 500 g de quiabo, seque bem e corte em rodelas de 1 cm. Deixe descansar por 10 minutos em uma peneira (reduz a baba). Triture 1/2 xícara de amendoim e 1/2 xícara de castanha de caju com 150 ml de leite de coco até virar pasta.',
    'Em uma panela, aqueça 3 colheres de sopa de azeite de dendê em fogo médio. Refogue 3 dentes de alho picados, 1 cebola pequena e 1 colher de chá de gengibre ralado por 3 minutos.',
    'Adicione o quiabo ao refogado e mexa em fogo médio-baixo por 10 minutos, até ficar macio e a baba incorporar ao molho.',
    'Despeje a pasta de amendoim com leite de coco sobre o quiabo. Misture bem. Adicione mais 200 ml de leite de coco.',
    'Cozinhe em fogo baixo por mais 10 minutos, mexendo delicadamente até o molho engrossar e envolver o quiabo. Adicione pimenta dedo-de-moça picada e ajuste o sal.',
    'Finalize com suco de 1/2 limão e coentro picado. Sirva quente acompanhado de arroz branco e farofa de babaçu.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Feijão Maranhense com Maxixe, Abóbora e Quiabo',
  'Feijão de caldo grosso com os legumes típicos do Maranhão: maxixe, abóbora e quiabo, temperado com coentro e alho frito.',
  '🫘', 'Prato Principal', 60, '60 min', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xícaras de feijão mulatinho de molho por 2 horas. Escorra e cozinhe na panela de pressão com 1,5 litro de água e sal por 20 minutos. Reserve com o caldo.',
    'Corte 200 g de abóbora em cubos de 2 cm, 150 g de maxixe ao meio e 150 g de quiabo em rodelas. Lave o quiabo com vinagre para reduzir a baba.',
    'Em uma panela grande, aqueça 3 colheres de sopa de óleo de babaçu. Refogue 1 cebola picada e 4 dentes de alho amassados até dourarem bem.',
    'Adicione 2 tomates picados e pimenta-de-cheiro. Refogue por 3 minutos. Acrescente a abóbora e o maxixe, cozinhando por 5 minutos.',
    'Transfira o feijão com seu caldo para a panela. Adicione o quiabo. Cozinhe em fogo médio por 20 minutos até os legumes ficarem macios e o caldo engrossar naturalmente.',
    'Ajuste o sal e finalize com coentro e cebolinha picados. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Feijão-de-Corda Refogado com Cheiro-Verde',
  'Feijão-de-corda cozido no ponto e refogado com alho, cebola e muito cheiro-verde. Simples, nutritivo e cheio de sabor maranhense.',
  '🌿', 'Acompanhamento', 35, '35 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xícaras de feijão-de-corda de molho por 4 horas. Cozinhe na panela de pressão com água e sal por 10 a 12 minutos. O grão deve ficar macio mas inteiro. Escorra e reserve.',
    'Em uma frigideira grande, aqueça 3 colheres de sopa de óleo de babaçu em fogo médio. Refogue 1 cebola média picada e 4 dentes de alho amassados até ficarem dourados.',
    'Adicione 1/2 pimentão vermelho picado e 2 tomates picados. Refogue por 3 minutos até formar um molho de base aromático.',
    'Acrescente o feijão-de-corda cozido e misture delicadamente com os temperos. Adicione pimenta-de-cheiro picada a gosto.',
    'Cozinhe em fogo médio por 5 minutos, mexendo levemente para o feijão absorver os sabores sem desmanchar. Ajuste o sal.',
    'Desligue o fogo e finalize com coentro e cebolinha verde picados generosamente. Sirva como acompanhamento de arroz ou tapioca.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Cuxá Refogado com Gergelim',
  'O molho cuxá na sua versão mais pura: folhas de vinagreira refogadas com gergelim torrado, alho e óleo de babaçu. Acompanhamento essencial maranhense.',
  '🌿', 'Acompanhamento', 20, '20 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem 1 maço grande de vinagreira (cerca de 300 g). Retire os talos mais grossos e pique as folhas grosseiramente. A vinagreira vai murchar bastante no cozimento, então use sempre um maço generoso.',
    'Toste 4 colheres de sopa de gergelim branco em frigideira seca em fogo baixo por 2 a 3 minutos, mexendo sempre até dourar. Desligue e reserve.',
    'Na mesma frigideira, aqueça 3 colheres de sopa de óleo de babaçu. Refogue 3 dentes de alho picados e 1 cebola pequena por 2 minutos até ficarem transparentes.',
    'Adicione 1 tomate picado e 1/2 pimentão verde picado. Refogue por 2 minutos. Acrescente a vinagreira picada e mexa bem.',
    'Cozinhe em fogo médio por 8 a 10 minutos, mexendo sempre, até as folhas murcharem completamente e o molho escurecer e ficar cremoso.',
    'Adicione o gergelim torrado, ajuste o sal e finalize com pimenta do reino. Sirva quente sobre arroz branco ou acompanhando tapioca.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Farofa de Mandioca no Azeite de Babaçu',
  'Farofa dourada e crocante de farinha de mandioca preparada no óleo de babaçu com alho, cebola e ervas. Acompanhamento clássico maranhense vegano.',
  '🥄', 'Acompanhamento', 20, '20 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Separe 2 xícaras de farinha de mandioca torrada (a torrada resulta em farofa mais crocante). Pique 1 cebola média, 3 dentes de alho e 1 tomate em cubos pequenos. Reserve.',
    'Em uma frigideira grande, aqueça 4 colheres de sopa de óleo de babaçu em fogo médio. Refogue o alho por 1 minuto até dourar levemente.',
    'Adicione a cebola e refogue por 2 minutos. Acrescente o tomate e cozinhe por mais 2 minutos, até amolecer e incorporar ao refogado.',
    'Abaixe o fogo e adicione a farinha de mandioca aos poucos, mexendo constantemente com uma espátula para distribuir o tempero de forma homogênea.',
    'Toste a farofa em fogo médio-baixo por 4 a 5 minutos, mexendo sempre, até ficar dourada e crocante. Ajuste o sal e adicione pimenta do reino.',
    'Desligue o fogo e finalize com coentro e cebolinha picados. Acrescente castanha de caju torrada picada se desejar mais crocância. Sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Purê de Macaxeira com Azeite de Babaçu',
  'Purê cremoso de macaxeira preparado com óleo de babaçu, alho e leite de coco. Acompanhamento suave e saboroso da culinária maranhense.',
  '�?�', 'Acompanhamento', 35, '35 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Descasque e corte 800 g de mandioca em pedaços médios. Retire o fio central. Lave bem e cozinhe em panela com água fria e sal por 25 a 30 minutos, até ficar bem macia.',
    'Escorra a mandioca e descarte a água. Enquanto ainda estiver quente, amasse com um garfo ou passe pelo espremedor de batatas até obter massa homogênea sem grumos.',
    'Em uma panela pequena, aqueça 3 colheres de sopa de óleo de babaçu em fogo baixo. Refogue 3 dentes de alho picados até ficarem dourados e aromáticos. Reserve.',
    'Adicione o óleo de babaçu com alho à mandioca amassada. Misture bem e vá incorporando 200 ml de leite de coco aos poucos, mexendo até atingir consistência cremosa e aveludada.',
    'Tempere com sal e pimenta do reino. Mexa em fogo baixo por 2 minutos até aquecer e incorporar todos os sabores.',
    'Sirva imediatamente polvilhado com coentro fresco picado e algumas gotas de limão. Acompanha feijão, moqueca de legumes ou grelhados.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Beiju de Coco',
  'Beiju tradicional maranhense feito na frigideira com tapioca granulada e coco ralado hidratado no leite de coco. Lanche rústico e naturalmente vegano.',
  '🥥', 'Entrada', 25, '25 min', 4, 'Fácil', 1, 0, 1, 1,
  JSON_ARRAY(
    'Em uma tigela, misture 2 xícaras de tapioca granulada com 1 pitada de sal e 2 colheres de sopa de açúcar. Misture bem.',
    'Aqueça 300 ml de leite de coco de babaçu sem ferver (bem quente, mas sem borbulhar). Despeje sobre a tapioca granulada e misture com colher. Deixe descansar por 5 minutos para hidratar.',
    'Acrescente 1 xícara de coco ralado sem açúcar à mistura e incorpore bem.',
    'Aqueça uma frigideira antiaderente em fogo médio. Não adicione óleo. Espalhe uma camada de 1 cm da mistura de tapioca na frigideira, formando um disco.',
    'Deixe cozinhar por 3 a 4 minutos até as bordas soltarem e a base ficar firme e levemente dourada. Com cuidado, vire o beiju e cozinhe o outro lado por mais 2 a 3 minutos.',
    'Retire e sirva quente. Pode ser saboreado puro ou acompanhado de doce de buriti, geleia regional ou polvilhado com canela em pó.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Cuscuz Maranhense de Milho',
  'Cuscuz de farinha de milho preparado na cuscuzeira, úmido e soltinho. Um dos lanches mais tradicionais do Maranhão, naturalmente vegano.',
  '🌽', 'Entrada', 25, '25 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Em uma tigela, coloque 2 xícaras de farinha de milho fina. Adicione 1 pitada de sal e misture.',
    'Regue a farinha com leite de coco (ou água) aos poucos, amassando com os dedos até obter textura úmida parecida com areia molhada. A farinha deve se aglomerar quando pressionada, mas não virar massa.',
    'Unte a cuscuzeira com um fio de óleo de coco. Coloque a mistura de farinha de milho dentro, nivelando levemente. Tampe e cozinhe no vapor por 10 a 12 minutos.',
    'Se não tiver cuscuzeira, use panela com cestinha de vapor: coloque a farinha hidratada em um pano limpo sobre a cestinha e cozinhe no vapor por 12 minutos.',
    'Retire da cuscuzeira e desenforme em um prato. O cuscuz deve estar firme por fora e úmido por dentro.',
    'Sirva quente polvilhado com coco ralado e açúcar, ou com uma colher de doce regional (buriti, bacuri). Também pode ser servido com leite de coco por cima.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Pastel de Forno Vegano',
  'Pastel assado com massa leve de óleo de babaçu e recheio vegano de palmito, tomate e temperos maranhenses. Lanche saboroso e prático.',
  '🥟', 'Entrada', 50, '50 min', 20, 'Média', 0, 1, 1, 0,
  JSON_ARRAY(
    'Prepare a massa: misture 3 xícaras de farinha de trigo, 1 colher de chá de sal e 1 colher de chá de açúcar. Adicione 1/2 xícara de óleo de babaçu e 1/2 xícara de água morna aos poucos, sovando até obter massa lisa e não pegajosa. Descanse por 15 minutos coberta.',
    'Prepare o recheio: aqueça 2 colheres de sopa de óleo em uma frigideira. Refogue 1 cebola e 3 dentes de alho picados. Adicione 2 tomates, 1/2 pimentão e 1 vidro de palmito (200 g) picado. Cozinhe por 5 minutos.',
    'Tempere o recheio com sal e coentro picado. Deixe esfriar completamente antes de usar.',
    'Abra a massa com rolo sobre superfície enfarinhada até 2 mm de espessura. Corte círculos com copo ou cortador de 10 cm de diâmetro.',
    'Coloque 1 colher de chá do recheio no centro de cada círculo. Dobre ao meio e feche as bordas pressionando com um garfo. Disponha em forma untada.',
    'Polvilhe gergelim branco por cima. Asse em forno preaquecido a 200°C por 20 a 25 minutos até dourar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'Bolo de Macaxeira Vegano',
  'Bolo úmido e cremoso de macaxeira com leite de coco e coco ralado. Sobremesa vegana autêntica do Maranhão, sem ovos nem laticínios.',
  '🎂', 'Sobremesa', 60, '60 min', 10, 'Fácil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Descasque e rale 500 g de mandioca crua no ralo fino. Esprema levemente em um pano para retirar o excesso de umidade. Reserve.',
    'No liquidificador, bata 400 ml de leite de coco, 1 xícara de açúcar, 1/4 de xícara de óleo de babaçu e 1 colher de chá de baunilha até ficar homogêneo.',
    'Em uma tigela grande, misture a mandioca ralada, a mistura batida do liquidificador e 1 xícara de coco ralado sem açúcar. Misture bem com uma colher.',
    'Adicione 1/2 xícara de farinha de trigo e 1 colher de sopa de fermento em pó. Misture delicadamente, apenas até incorporar.',
    'Despeje a massa em forma untada com óleo e enfarinhada. Polvilhe coco ralado por cima.',
    'Asse em forno preaquecido a 180°C por 40 a 45 minutos, até dourar e o palito sair limpo. Deixe esfriar por 20 minutos antes de desenformar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'Bolo de Tapioca Vegano',
  'Bolo gelado de tapioca com leite de coco, sem forno e sem ovos. Sobremesa refrescante e cremosa muito apreciada no Maranhão.',
  '�?�', 'Sobremesa', 30, '30 min + geladeira', 8, 'Fácil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Em uma tigela grande, coloque 2 xícaras de tapioca granulada. Despeje 2 xícaras de leite de coco quente sobre a tapioca. Misture e deixe descansar por 30 minutos, mexendo ocasionalmente para hidratar uniformemente.',
    'Após a tapioca hidratar, adicione mais 400 ml de leite de coco, 1 xícara de açúcar, 1 xícara de coco ralado sem açúcar e uma pitada de sal. Misture bem.',
    'Transfira a mistura para uma panela e leve ao fogo médio, mexendo constantemente com espátula de silicone para não grudar.',
    'Cozinhe por 10 a 15 minutos, mexendo sempre, até a mistura engrossar e a tapioca ficar completamente translúcida e gelatinosa.',
    'Unte uma forma retangular com óleo. Despeje a mistura ainda quente e alise a superfície. Deixe esfriar em temperatura ambiente por 30 minutos.',
    'Leve à geladeira por pelo menos 4 horas. Desenforme e sirva polvilhado com coco ralado e canela. Pode ser servido com calda de frutas regionais.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'Abóbora Assada com Ervas',
  'Abóbora moranga assada com óleo de babaçu, alho, alecrim e tomilho. Acompanhamento simples e nutritivo da culinária maranhense.',
  '🎃', 'Acompanhamento', 40, '40 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Preaqueça o forno a 200°C. Lave bem 800 g de abóbora moranga. Corte em fatias ou cubos de 3 cm de espessura.',
    'Em uma tigela pequena, misture 4 colheres de sopa de óleo de babaçu, 4 dentes de alho amassados, 1 colher de chá de alecrim seco, 1 colher de chá de tomilho, sal e pimenta do reino a gosto.',
    'Arrume os pedaços de abóbora em uma assadeira grande. Regue com a mistura de óleo e ervas, virando os pedaços para temperar todos os lados.',
    'Espalhe uniformemente na assadeira sem sobrepor as peças.',
    'Asse por 25 a 30 minutos, virando os pedaços na metade do tempo. A abóbora deve ficar macia por dentro e levemente caramelizada por fora.',
    'Retire do forno e finalize com salsinha fresca picada e algumas gotas de limão. Sirva quente como acompanhamento.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Vinagrete Maranhense',
  'Vinagrete fresco e bem temperado à moda maranhense, com muito coentro, pimenta-de-cheiro e vinagre. Acompanhamento versátil e refrescante.',
  '🥗', 'Acompanhamento', 15, '15 min', 6, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Pique 4 tomates maduros sem sementes em cubos pequenos e uniformes de 0,5 cm. Pique 1 cebola roxa e 1 cebola branca em cubos igualmente pequenos. Reserve em uma tigela grande.',
    'Pique 1/2 pimentão verde e 1/2 pimentão vermelho em cubos pequenos. Pique 2 pimentas-de-cheiro sem sementes a gosto. Adicione à tigela.',
    'Pique generosamente 1 maço de coentro fresco (folhas e talinhos finos) e adicione ao vinagrete. Acrescente também cebolinha picada a gosto.',
    'Tempere com 3 colheres de sopa de vinagre branco ou de maçã, sal a gosto e uma pitada de açúcar para equilibrar a acidez.',
    'Misture tudo delicadamente com uma colher. Prove e ajuste o sal e o vinagre conforme preferência. Adicione suco de limão se desejar mais acidez.',
    'Leve à geladeira por pelo menos 15 minutos antes de servir para os sabores se integrarem. Mexa bem antes de servir.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Doce de Espécie de Alcântara Vegano',
  'O famoso doce de espécie da cidade de Alcântara no Maranhão: recheio de cocada densa envolvido em massa fina de trigo e óleo de babaçu, assado até dourar.',
  '�?�', 'Sobremesa', 50, '50 min', 20, 'Média', 0, 1, 1, 1,
  JSON_ARRAY(
    'Prepare o recheio: em uma panela, misture 3 xícaras de coco ralado, 2 xícaras de açúcar e 1/2 xícara de água. Adicione 5 cravos e 1 pau de canela. Cozinhe em fogo médio mexendo sempre até a mistura desgrudar da panela (ponto de brigadeiro). Retire os cravos e a canela. Deixe esfriar.',
    'Prepare a massa: misture 2 xícaras de farinha de trigo, 1/2 colher de chá de sal e 1/2 colher de chá de canela em pó. Adicione 5 colheres de sopa de óleo de babaçu e misture até formar uma farofa.',
    'Adicione 1/2 xícara de água morna aos poucos, sovando delicadamente até a massa ficar maleável e não grudenta. Descanse por 10 minutos coberta com pano.',
    'Preaqueça o forno a 180°C. Abra a massa em porções pequenas, coloque uma colher de recheio de coco no centro de cada porção e modele fechando bem as bordas em formato oval.',
    'Disponha em forma untada com óleo. Pincele a superfície com leite de coco para dar brilho e cor. Polvilhe gergelim branco se desejar.',
    'Asse por 20 a 25 minutos até ficarem dourados. Deixe esfriar antes de servir. Tradicional na Festa do Divino de Alcântara.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'Natal')
),
(
  'Buriti Caramelado',
  'Polpa de buriti caramelada com açúcar e especiarias. Sobremesa exótica com o fruto símbolo do cerrado maranhense.',
  '🌴', 'Sobremesa', 30, '30 min', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Obtenha 400 g de polpa de buriti fresca ou descongelada. Se estiver usando buriti fresco, cozinhe os frutos em água por 10 minutos, descasque e retire a polpa fibrosa. Escorra o excesso de água.',
    'Em uma panela de fundo grosso, derreta 1 xícara de açúcar cristal em fogo médio sem mexer, apenas girando a panela, até formar um caramelo dourado.',
    'Com cuidado, adicione 1/2 xícara de água morna ao caramelo. Cuidado com os respingos! Mexa com colher de pau até dissolver e formar uma calda.',
    'Adicione a polpa de buriti à calda, 1 pau de canela e 3 cravos. Mexa delicadamente em fogo médio-baixo para o buriti absorver o caramelo.',
    'Cozinhe por 15 a 20 minutos, mexendo ocasionalmente, até a calda engrossar e o buriti ficar macio e caramelado. Ajuste a doçura.',
    'Retire a canela e os cravos. Sirva quente ou em temperatura ambiente. Fica ótimo acompanhado de beiju de coco ou cuscuz maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Bacuri Vegano',
  'Polpa de bacuri cozida somente com açúcar até virar doce cremoso e levemente ácido, sem laticínios. Sabor único e exótico do Maranhão.',
  '�?�', 'Sobremesa', 45, '45 min', 8, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Use 500 g de polpa de bacuri fresca ou descongelada. Se for fresco, abra os frutos e retire a polpa branca com uma colher. Descarte as sementes e a casca.',
    'Em uma tigela, misture a polpa de bacuri com 1 xícara de açúcar e 1/2 xícara de água. Deixe descansar por 15 minutos para soltar o suco natural.',
    'Transfira para uma panela de fundo grosso e leve ao fogo médio, mexendo até o açúcar dissolver completamente.',
    'Continue cozinhando em fogo médio-baixo por 25 a 30 minutos, mexendo constantemente com colher de pau para não grudar. O doce deve começar a desgrudar do fundo da panela.',
    'Adicione o suco de 1/2 limão e, se desejar, castanha de caju picada. Mexa bem e cozinhe por mais 5 minutos.',
    'O doce está pronto quando estiver bem espesso e desgrudar facilmente do fundo da panela. Despeje em potes de vidro. Sirva frio ou em temperatura ambiente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Cupuaçu',
  'Polpa de cupuaçu cozida com açúcar até atingir ponto de doce cremoso. Sabor tropical intenso e levemente ácido, sem laticínios.',
  '�?�', 'Sobremesa', 50, '50 min', 8, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Utilize 500 g de polpa de cupuaçu fresca ou descongelada em temperatura ambiente. A polpa deve estar sem sementes.',
    'Em uma panela de fundo grosso, coloque a polpa, 300 g de açúcar e 1/2 xícara de água. Misture e leve ao fogo médio, mexendo até o açúcar dissolver.',
    'Quando começar a ferver, abaixe para fogo médio-baixo. A polpa de cupuaçu soltará água — continue mexendo sem parar para proteger o açúcar de queimar.',
    'Cozinhe por 30 a 40 minutos, mexendo sempre. O doce vai engrossando gradualmente. Quando começar a desgrudar do fundo da panela, está próximo do ponto.',
    'Adicione o suco de 1/2 limão para realçar o sabor e ajudar na conservação. Mexa bem e cozinhe por mais 5 a 10 minutos até atingir consistência de doce cremoso.',
    'Despeje em potes de vidro previamente esterilizados. Sirva frio, acompanhado de biscoito de tapioca, beiju ou como recheio de tortas veganas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Murici',
  'Polpa de murici cozida com açúcar e especiarias. Fruta típica do cerrado maranhense com sabor único, levemente fermentado e aromático.',
  '�?', 'Sobremesa', 35, '35 min', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Selecione 500 g de murici bem maduros. Lave bem e retire os caroços: esprema cada fruto para separar a polpa da semente. Reserve a polpa.',
    'Bata a polpa de murici no liquidificador com 1/4 de xícara de água no modo pulsar apenas para soltar os fios, sem triturar demais. Coe em peneira grossa para retirar fios mais duros.',
    'Em uma panela, junte a polpa coada, 250 g de açúcar, 1/2 xícara de água, 1 pau de canela e 4 cravos. Leve ao fogo médio, mexendo até o açúcar dissolver.',
    'Cozinhe em fogo médio-baixo por 20 a 25 minutos, mexendo frequentemente. O doce vai escurecer levemente e engrossar.',
    'Quando o doce começar a desgrudar do fundo da panela, adicione o suco de 1/4 de limão. Mexa bem por mais 2 minutos. Retire o pau de canela e os cravos.',
    'Despeje em potes de vidro e deixe esfriar. O doce de murici tem sabor intenso e ligeiramente fermentado, ótimo com tapioca ou beiju.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Geleia de Jenipapo',
  'Geleia artesanal feita com jenipapo, fruta típica do Maranhão e Nordeste. Cor escura intensa e sabor adocicado com notas tânicas.',
  '🫙', 'Sobremesa', 50, '50 min', 10, 'Média', 0, 0, 1, 0,
  JSON_ARRAY(
    'Escolha 5 jenipapos bem maduros e firmes. Descasque com faca e retire as sementes. Corte a polpa em pedaços médios. Lave bem para reduzir o amargor.',
    'Coloque a polpa em uma panela com 2 xícaras de água e leve ao fogo médio por 15 minutos até ficar bem macia. Deixe esfriar, bata no liquidificador e coe em peneira fina.',
    'Meça o volume de suco obtido. Para cada xícara de suco, use 3/4 de xícara de açúcar. Coloque o suco e o açúcar em uma panela.',
    'Adicione o suco de 1 limão. Leve ao fogo médio, mexendo até o açúcar dissolver por completo.',
    'Cozinhe em fogo médio-alto por 20 a 25 minutos sem mexer muito. Faça o teste da geada: coloque uma gota em prato frio — se firmar ao inclinar, a geleia está pronta.',
    'Despeje ainda quente em potes de vidro esterilizados e feche imediatamente. Vire os potes de cabeça para baixo por 5 minutos para fazer vácuo. Deixe esfriar.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Sorvete Artesanal de Coco Babaçu',
  'Sorvete cremoso feito com leite de coco babaçu e coco fresco ralado. Sobremesa refrescante e 100% vegana com o fruto símbolo do Maranhão.',
  '�?�', 'Sobremesa', 30, '30 min + freezer', 6, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em uma panela pequena, aqueça 800 ml de leite de coco de babaçu com 150 g de açúcar em fogo baixo, mexendo até o açúcar dissolver completamente. Não deixe ferver.',
    'Adicione 1 colher de sopa de óleo de babaçu. Misture bem. Retire do fogo e deixe esfriar completamente em temperatura ambiente.',
    'Incorpore 1 xícara de coco ralado sem açúcar à mistura. Misture bem.',
    'Despeje a mistura em recipiente com tampa. Leve ao freezer por 2 horas. Retire e bata com um garfo ou mixer para quebrar os cristais de gelo. Repita esse processo 2 a 3 vezes de hora em hora.',
    'Após a última batida, deixe o sorvete firmar no freezer por mais 2 a 3 horas até atingir a consistência desejada.',
    'Retire do freezer 5 a 10 minutos antes de servir para amolecer levemente. Sirva em taças com raspas de coco fresco ou calda de buriti caramelado.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Mingau de Tapioca com Leite de Coco',
  'Mingau cremoso de tapioca granulada cozida somente no leite de coco com canela e cravo. Versão vegana do tradicional mingau maranhense.',
  '🥣', 'Sobremesa', 30, '30 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em uma tigela grande, coloque 1 xícara de tapioca granulada. Despeje 2 xícaras de leite de coco morno sobre a tapioca. Misture e deixe hidratar por 20 minutos, mexendo de vez em quando.',
    'Em uma panela, junte a tapioca hidratada com mais 400 ml de leite de coco, 1/2 xícara de açúcar, 1 pau de canela e 4 cravos. Misture bem.',
    'Leve ao fogo médio, mexendo constantemente com colher de pau para não grudar no fundo.',
    'Cozinhe por 10 a 15 minutos, sem parar de mexer, até a tapioca ficar completamente translúcida e a mistura atingir consistência de mingau cremoso.',
    'Retire o pau de canela e os cravos. Ajuste a doçura conforme preferência.',
    'Sirva quente em tigelas polvilhado com canela em pó e coco ralado. Para servir frio, leve à geladeira por 2 horas — o mingau vai firmar levemente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Mingau de Milho Verde com Leite de Coco',
  'Mingau cremoso de milho verde com leite de coco e especiarias. Versão vegana do clássico maranhense, sem leite animal.',
  '🌽', 'Sobremesa', 45, '45 min', 6, 'Fácil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Corte a polpa de 4 espigas de milho verde. Bata no liquidificador com 2 xícaras de leite de coco até obter um líquido homogêneo.',
    'Coe a mistura em peneira fina, pressionando com uma colher para extrair todo o caldo. Descarte o bagaço ou guarde para outro preparo.',
    'Coloque o caldo de milho coado em uma panela grande. Adicione mais 400 ml de leite de coco, 1 xícara de açúcar, 1 pau de canela e 3 cravos.',
    'Leve ao fogo médio-baixo, mexendo constantemente com colher de pau para não grudar nem empelotar. O milho vai engrossando gradualmente.',
    'Cozinhe por 30 a 35 minutos, mexendo sem parar. Quando o mingau estiver cremoso e desgrudar levemente das bordas da panela, retire os cravos e a canela.',
    'Adicione 1/2 xícara de coco ralado, misture e sirva quente em tigelas. Polvilhe com canela em pó. Para servir frio, leve à geladeira por 2 horas.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa Junina')
),
(
  'Manjar de Milho Verde',
  'Manjar delicado feito com leite de milho e leite de coco, firme e cremoso. Sobremesa vegana de textura aveludada servida com calda de frutas regionais.',
  '�?�', 'Sobremesa', 40, '40 min + geladeira', 8, 'Média', 0, 1, 1, 0,
  JSON_ARRAY(
    'Bata no liquidificador a polpa de 4 espigas de milho verde com 400 ml de leite de coco até ficar bem homogêneo. Coe em peneira fina e reserve o leite de milho obtido.',
    'Em uma panela, dissolva 5 colheres de sopa de amido de milho em 200 ml de leite de coco frio. Misture bem sem deixar grumos.',
    'Acrescente o leite de milho coado, 1 xícara de açúcar e 1 xícara de coco ralado. Misture tudo e leve ao fogo médio.',
    'Cozinhe mexendo constantemente com um fouet por 10 a 15 minutos até engrossar bastante e começar a borbulhar. O manjar deve se desprender das bordas da panela.',
    'Unte uma forma de pudim com óleo. Despeje a mistura quente e deixe esfriar em temperatura ambiente por 30 minutos.',
    'Leve à geladeira por pelo menos 4 horas. Para desenformar, passe uma faca nas bordas e vire sobre um prato. Sirva com calda de bacuri, buriti ou cupuaçu.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'Natal')
),
(
  'Arroz Doce Maranhense com Leite de Coco',
  'Arroz doce cremoso preparado somente com leite de coco e especiarias, sem leite animal. Versão vegana da sobremesa mais amada do Maranhão.',
  '�?�', 'Sobremesa', 50, '50 min', 8, 'Fácil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Lave 2 xícaras de arroz branco agulhinha e coloque em uma panela com 3 xícaras de água, 1 pau de canela e 4 cravos. Leve ao fogo médio até a água ferver.',
    'Abaixe o fogo, tampe parcialmente e cozinhe por 15 minutos até o arroz absorver quase toda a água, ficando al dente.',
    'Em outra panela, aqueça 800 ml de leite de coco com 1 xícara de açúcar, mexendo até o açúcar dissolver. Não deixe ferver.',
    'Transfira o arroz al dente para a panela com o leite de coco quente. Misture bem. Cozinhe em fogo médio-baixo, mexendo frequentemente para não grudar no fundo.',
    'Cozinhe por 20 a 25 minutos até o arroz ficar bem macio e o arroz doce atingir consistência cremosa. Retire a canela e os cravos.',
    'Sirva quente ou em temperatura ambiente polvilhado com canela em pó e coco ralado. Para servir frio, leve à geladeira — o arroz doce vai engrossar mais ao esfriar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Gergelim branco','Cebola','Alho','Tomate','Pimentão','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 1 FROM ingredientes WHERE nome IN ('Óleo de babaçu','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 46, id, 0 FROM ingredientes WHERE nome IN ('Feijão-de-corda','Arroz','Abóbora','Cebola','Alho','Pimentão','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 46, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Óleo de babaçu','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 47, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Quiabo','Maxixe','Cebola','Alho','Pimentão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 47, id, 1 FROM ingredientes WHERE nome IN ('Tomate','Óleo de babaçu','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 48, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Cogumelo seco','Cebola','Alho','Tomate','Pimentão','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 48, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Óleo de babaçu');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 49, id, 0 FROM ingredientes WHERE nome IN ('Abóbora','Batata-doce','Pimentão','Tomate','Cebola','Leite de coco','Azeite de dendê');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 49, id, 1 FROM ingredientes WHERE nome IN ('Quiabo','Maxixe','Coentro','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 50, id, 0 FROM ingredientes WHERE nome IN ('Abóbora','Leite de coco','Amendoim','Castanha de caju','Cebola','Alho','Gengibre');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 50, id, 1 FROM ingredientes WHERE nome IN ('Azeite de dendê','Pimentão','Coentro','Pão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 51, id, 0 FROM ingredientes WHERE nome IN ('Quiabo','Leite de coco','Amendoim','Castanha de caju','Alho','Cebola','Azeite de dendê');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 51, id, 1 FROM ingredientes WHERE nome IN ('Gengibre','Pimenta dedo-de-moça','Coentro','Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 52, id, 0 FROM ingredientes WHERE nome IN ('Feijão','Maxixe','Abóbora','Quiabo','Alho','Cebola','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 52, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Óleo de babaçu','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 53, id, 0 FROM ingredientes WHERE nome IN ('Feijão-de-corda','Alho','Cebola','Coentro','Cebolinha','Tomate','Pimentão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 53, id, 1 FROM ingredientes WHERE nome IN ('Óleo de babaçu','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 54, id, 0 FROM ingredientes WHERE nome IN ('Vinagreira','Gergelim branco','Alho','Cebola','Tomate','Pimentão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 54, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Coentro','Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 55, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Óleo de babaçu','Cebola','Alho','Coentro','Cebolinha','Tomate');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 55, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Pimentão','Castanha de caju');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 56, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Óleo de babaçu','Leite de coco','Alho','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 56, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Cebolinha');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 57, id, 0 FROM ingredientes WHERE nome IN ('Tapioca','Coco ralado','Leite de coco de babaçu','Açúcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 57, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 58, id, 0 FROM ingredientes WHERE nome IN ('Farinha de milho','Coco ralado','Açúcar','Leite de coco');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 58, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 59, id, 0 FROM ingredientes WHERE nome IN ('Farinha de trigo','Óleo de babaçu','Palmito','Tomate','Cebola','Alho','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 59, id, 1 FROM ingredientes WHERE nome IN ('Pimentão','Gergelim branco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 60, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Leite de coco','Coco ralado','Açúcar','Óleo de babaçu','Farinha de trigo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 60, id, 1 FROM ingredientes WHERE nome IN ('Fermento em pó');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 61, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Coco ralado','Açúcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 61, id, 1 FROM ingredientes WHERE nome IN ('Canela','Fermento em pó');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 62, id, 0 FROM ingredientes WHERE nome IN ('Abóbora','Óleo de babaçu','Alho','Alecrim','Tomilho');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 62, id, 1 FROM ingredientes WHERE nome IN ('Salsinha','Pimenta do reino','Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 63, id, 0 FROM ingredientes WHERE nome IN ('Tomate','Cebola','Pimentão','Coentro','Vinagre','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 63, id, 1 FROM ingredientes WHERE nome IN ('Limão','Cebolinha');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 64, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','Açúcar','Farinha de trigo','Óleo de babaçu','Cravo','Canela');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 64, id, 1 FROM ingredientes WHERE nome IN ('Gergelim branco','Leite de coco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 65, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','Açúcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 65, id, 1 FROM ingredientes WHERE nome IN ('Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 66, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','Açúcar','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 66, id, 1 FROM ingredientes WHERE nome IN ('Canela','Cravo','Castanha de caju');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 67, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaçu','Açúcar','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 67, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 68, id, 0 FROM ingredientes WHERE nome IN ('Murici','Açúcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 68, id, 1 FROM ingredientes WHERE nome IN ('Limão');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 69, id, 0 FROM ingredientes WHERE nome IN ('Jenipapo','Açúcar','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 69, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 70, id, 0 FROM ingredientes WHERE nome IN ('Leite de coco de babaçu','Coco ralado','Açúcar','Leite de coco');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 70, id, 1 FROM ingredientes WHERE nome IN ('Óleo de babaçu');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 71, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Açúcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 71, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 72, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','Açúcar','Canela','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 72, id, 1 FROM ingredientes WHERE nome IN ('Cravo');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 73, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','Açúcar','Amido de milho','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 73, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 74, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite de coco','Açúcar','Canela','Cravo','Coco ralado');

UPDATE receitas SET vegano = 1 WHERE nome = 'Doce de Espécie';
UPDATE receitas SET vegano = 1 WHERE nome = 'Doce de Buriti';
UPDATE receitas SET vegano = 1 WHERE nome = 'Beiju de Tapioca';

UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 45;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 46;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 47;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=600&h=400&fit=crop&q=80' WHERE id = 48;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=600&h=400&fit=crop&q=80' WHERE id = 49;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1548943487-a2e4e43b4853?w=600&h=400&fit=crop&q=80' WHERE id = 50;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1544025162-d76538b7b90c?w=600&h=400&fit=crop&q=80' WHERE id = 51;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 52;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 53;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 54;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?w=600&h=400&fit=crop&q=80' WHERE id = 55;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?w=600&h=400&fit=crop&q=80' WHERE id = 56;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 57;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 58;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=600&h=400&fit=crop&q=80' WHERE id = 59;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 60;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 61;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=600&h=400&fit=crop&q=80' WHERE id = 62;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&h=400&fit=crop&q=80' WHERE id = 63;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 64;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1481391319762-47dff72954d9?w=600&h=400&fit=crop&q=80' WHERE id = 65;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1488900128323-21503983a07e?w=600&h=400&fit=crop&q=80' WHERE id = 66;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1488900128323-21503983a07e?w=600&h=400&fit=crop&q=80' WHERE id = 67;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1488900128323-21503983a07e?w=600&h=400&fit=crop&q=80' WHERE id = 68;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1488900128323-21503983a07e?w=600&h=400&fit=crop&q=80' WHERE id = 69;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?w=600&h=400&fit=crop&q=80' WHERE id = 70;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 71;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 72;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 73;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 74;

INSERT IGNORE INTO ingredientes (nome) VALUES
  ('Arroz integral'), ('Farinha de arroz'), ('Juçara'), ('Farinha de puba');

UPDATE receitas SET diet = 1 WHERE nome = 'Peixada Maranhense';
UPDATE receitas SET diet = 1 WHERE nome = 'Caldo de Ovos';

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, diet, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Peixe Assado no Azeite de Babaçu',
  'Peixe inteiro marinado no limão e alho, assado no forno com óleo de babaçu e cebola em rodelas. Preparo leve e saboroso, tipicamente maranhense.',
  '�?�', 'Prato Principal', 70, '1h10', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Limpe e lave bem o peixe inteiro (peixe-pedra, tainha ou robalo). Faça cortes laterais na carne para o tempero penetrar melhor.',
    'Tempere com suco de 2 limões, 4 dentes de alho amassado, sal e pimenta do reino. Deixe marinar por 30 minutos.',
    'Preaqueça o forno a 180°C. Unte uma assadeira com um fio de óleo de babaçu.',
    'Disponha o peixe na assadeira, cubra com rodelas de cebola e regue com o restante do óleo de babaçu.',
    'Asse por 35 a 40 minutos, virando na metade do tempo, até a pele ficar dourada e a carne soltar facilmente do osso.',
    'Retire do forno, finalize com coentro fresco picado e sirva imediatamente acompanhado de macaxeira cozida ou arroz integral.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixe Escabeche Maranhense',
  'Filés de peixe grelhados e cobertos com molho de cebola, tomate, pimentão e vinagre temperado com colorau e pimenta-de-cheiro.',
  '�?�', 'Prato Principal', 40, '40 min', 4, 'Média', 0, 0, 1, 0,
  JSON_ARRAY(
    'Tempere os filés de peixe (cavala ou cação) com suco de limão, alho amassado e sal. Marine por no mínimo 20 minutos.',
    'Aqueça 2 colheres de sopa de azeite em frigideira antiaderente. Grelhe os filés em fogo médio-alto até dourar dos dois lados. Reserve.',
    'Na mesma frigideira, refogue a cebola em rodelas no azeite restante até ficar translúcida. Junte o pimentão verde picado e o alho.',
    'Adicione os tomates picados, o colorau e metade do coentro. Cozinhe em fogo médio por 5 minutos até o tomate desmanchar.',
    'Acrescente o vinagre branco, ajuste o sal e adicione a pimenta-de-cheiro. Deixe ferver por 3 minutos para o molho incorporar.',
    'Disponha o peixe em travessa, cubra com o molho escabeche quente e finalize com o coentro restante. Sirva quente ou frio.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de Sururu',
  'Caldo leve e aromático de sururu com leite de coco, tomate, pimentão e coentro. Entrada típica da culinária costeira maranhense.',
  '🦪', 'Entrada', 35, '35 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os sururus em água corrente, descartando os que estiverem abertos. Reserve.',
    'Aqueça 2 colheres de sopa de azeite em panela média. Refogue a cebola picada e o alho amassado até dourar levemente.',
    'Junte o pimentão vermelho picado e os tomates. Cozinhe por 5 minutos até o tomate começar a desmanchar.',
    'Acrescente os sururus e misture bem com os temperos. Cozinhe por 5 minutos.',
    'Adicione 500 ml de água e 200 ml de leite de coco. Tempere com sal e pimenta-de-cheiro. Deixe ferver e cozinhe em fogo baixo por 10 minutos.',
    'Desligue o fogo, adicione suco de limão e coentro picado farto. Sirva quente acompanhado de arroz branco ou farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caranguejo Toc Toc',
  'Caranguejos uçá cozidos em caldo de tomate, leite de coco e cheiro-verde, servidos para bater e comer na hora. Prato festivo e típico do Maranhão.',
  '🦀', 'Prato Principal', 40, '40 min', 4, 'Média', 0, 1, 1, 0,
  JSON_ARRAY(
    'Lave bem os caranguejos (1 corda, cerca de 8 unidades) em água corrente, escovando as cascas para remover areia.',
    'Em panela grande com água fervente e sal, cozinhe os caranguejos por 5 minutos até ficarem vermelhos. Escorra e reserve.',
    'Refogue a cebola picada e o tomate no azeite em panela grande, em fogo médio, até quase desmancharem.',
    'Adicione 500 ml de água, o leite de coco, o vinagre e o suco de limão. Leve à fervura e tempere com sal.',
    'Coloque os caranguejos pré-cozidos no caldo. Deixe ferver por 10 minutos em fogo médio para absorverem o molho.',
    'Finalize com cebolinha e coentro picados. Sirva com martelinho para quebrar as cascas e farinha de mandioca à parte.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Almoço de domingo')
),
(
  'Patinhas de Caranguejo Cozidas',
  'Patas de caranguejo cozidas em água temperada com louro, alho e limão. Preparo simples que preserva o sabor natural do caranguejo maranhense.',
  '🦀', 'Entrada', 30, '30 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave as patinhas de caranguejo em água corrente com escova, removendo toda a areia das articulações.',
    'Em panela grande, leve 2 litros de água ao fogo alto com sal grosso, 4 dentes de alho inteiros, 1 cebola ao meio, folhas de louro e cascas de limão.',
    'Quando a água ferver, adicione as patinhas e cozinhe por 15 a 20 minutos até ficarem completamente vermelhas.',
    'Verifique o cozimento: a carne deve estar firme e se soltar levemente das juntas.',
    'Escorra as patinhas e tempere imediatamente com suco de limão enquanto ainda estão quentes.',
    'Disponha em prato grande, finalize com coentro picado e sirva com molho de pimenta, limão e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Camarão Gigante Cozido',
  'Camarão gigante cozido na casca em caldo temperado e finalizado na grelha. Preparo simples que exalta o sabor natural do camarão maranhense.',
  '�?', 'Prato Principal', 35, '35 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os camarões gigantes. Faça um corte longitudinal no dorso para retirar o fio intestinal sem remover a casca.',
    'Tempere com suco de 2 limões, 4 dentes de alho amassado, sal e pimenta-de-cheiro. Marine por 20 minutos.',
    'Em panela com água fervente e cebola em rodelas, cozinhe os camarões com casca por 8 a 10 minutos até ficarem rosa-vivo e opacos.',
    'Retire da água e deixe escorrer. Verifique se a carne está branca e firme no interior.',
    'Pincele com azeite e leve por 3 minutos a uma grelha quente para dourar levemente a casca.',
    'Sirva inteiros com fatias de limão, coentro fresco e arroz de cuxá como acompanhamento típico maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Caldo de Frango com Macaxeira',
  'Caldo encorpado de frango desfiado com cubos de macaxeira cozida, coentro e temperos maranhenses. Reconfortante e naturalmente nutritivo.',
  '�?�', 'Prato Principal', 60, '60 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Tempere 500 g de coxas e sobrecoxas de frango sem pele com sal, pimenta do reino e metade do alho. Reserve por 15 minutos.',
    'Aqueça o azeite em panela de pressão. Doure o frango por todos os lados. Junte a cebola picada, o alho restante, o pimentão e o tomate picados. Refogue por 3 minutos.',
    'Adicione 1 litro de água. Tampe e cozinhe sob pressão por 20 minutos.',
    'Libere a pressão, retire o frango, desfie a carne descartando os ossos. Reserve o caldo na panela.',
    'Adicione 400 g de macaxeira cortada em cubos ao caldo. Tampe e cozinhe por 15 minutos até amaciar. Bata metade da macaxeira com um mixer diretamente na panela para engrossar o caldo naturalmente.',
    'Devolva o frango desfiado à panela. Ajuste o sal, finalize com coentro e cebolinha picados. Sirva quente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de Feijão com Maxixe e Quiabo',
  'Caldo rústico de feijão com maxixe e quiabo, temperado com coentro e pimenta-de-cheiro. O quiabo engrossa naturalmente o caldo sem precisar de farinha.',
  '🫘', 'Prato Principal', 35, '35 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Aqueça 2 colheres de sopa de azeite em panela média. Refogue a cebola picada e o alho amassado até dourar levemente.',
    'Junte 2 tomates picados e a pimenta-de-cheiro. Cozinhe por 3 minutos até o tomate amolecer.',
    'Adicione 2 xícaras de feijão cozido com um pouco do seu caldo. Misture bem.',
    'Acrescente 200 g de maxixe em rodelas e 200 g de quiabo em rodelas. Adicione água suficiente para cobrir os legumes. Tempere com sal e pimenta do reino.',
    'Cozinhe em fogo médio por 15 minutos sem tampar, mexendo ocasionalmente, até os legumes ficarem macios. O quiabo engrossa o caldo naturalmente.',
    'Finalize com coentro e cebolinha picados. Sirva quente, puro ou acompanhado de arroz integral.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Arroz de Cuxá Integral',
  'Versão com arroz integral do prato símbolo do Maranhão. Mais nutritivo e de menor índice glicêmico, ideal para diabéticos sem abrir mão do sabor original.',
  '🌾', 'Prato Principal', 30, '30 min', 4, 'Média', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe o camarão seco de molho em água por 2 horas para dessalgar. Escorra e pique grosseiramente. Cozinhe 2 xícaras de arroz integral conforme o pacote (geralmente 40 min). Reserve.',
    'Lave as folhas de vinagreira, retire os talos grossos e ferva por 5 minutos em água com pitada de sal. Escorra e pique.',
    'Em frigideira seca, torre o gergelim branco em fogo baixo por 2 minutos até liberar aroma. Reserve.',
    'Aqueça o azeite em panela. Refogue a cebola e o alho até dourarem. Adicione o camarão dessalgado e refogue por 3 minutos.',
    'Acrescente a vinagreira picada e o gergelim torrado. Misture bem e cozinhe por 2 minutos.',
    'Junte o arroz integral cozido, misture delicadamente e ajuste o sal. Cozinhe por mais 3 minutos para integrar os sabores. Sirva quente com pimenta-de-cheiro.'
  ),
  JSON_ARRAY('Cotidiano', 'Almoço de domingo')
),
(
  'Cuscuz de Arroz Maranhense',
  'Cuscuz feito de flocão de arroz na cuscuzeira, úmido e soltinho. Opção de menor índice glicêmico em relação ao cuscuz de milho.',
  '�?�', 'Entrada', 55, '55 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em tigela, misture 2 xícaras de farinha de arroz (flocão de arroz) com 1 colher de chá de sal. Misture com garfo.',
    'Regue a farinha com água aos poucos (cerca de 3/4 de xícara), amassando com os dedos até obter textura úmida como areia molhada. Deixe hidratar por 20 minutos.',
    'Passe a massa por garfo ou peneira grossa para desfazer torrões. Se desejar a versão com coco, misture 100 g de coco fresco ralado agora.',
    'Unte a cuscuzeira com um fio de azeite. Preencha com a massa sem pressionar, formando camadas soltas. Encaixe sobre panela com água fervente e tampe.',
    'Cozinhe no vapor por 25 a 30 minutos. Verifique com palito: ao sair limpo e a massa estar firme e coesa, está pronto.',
    'Desenforme o cuscuz em prato. Sirva quente com leite de coco puro ou acompanhado de queijo coalho.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Macaxeira Cozida',
  'Macaxeira simplesmente cozida em água temperada, regada com azeite e finalizada com coentro fresco. Base da culinária maranhense, naturalmente sem açúcar.',
  '�?�', 'Acompanhamento', 40, '40 min', 4, 'Fácil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Descasque 800 g de macaxeira, remova o fio central e corte em pedaços de aproximadamente 6 cm.',
    'Lave bem os pedaços em água corrente para remover o excesso de amido.',
    'Coloque em panela com 1,5 litro de água e 1 colher de sopa de sal. Leve ao fogo alto até ferver.',
    'Abaixe para fogo médio e cozinhe por 25 a 35 minutos, até que um garfo entre facilmente sem resistência.',
    'Escorra a água e transfira a macaxeira para prato de servir. Regue imediatamente com azeite enquanto ainda está quente.',
    'Finalize com coentro fresco picado e gotas de limão. Sirva quente como acompanhamento de peixe, frango ou frutos do mar.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Maxixe Refogado com Alho',
  'Maxixe em rodelas refogado no azeite com alho, cebola, tomate e coentro. Preparo rápido, leve e cheio de sabor da roça maranhense.',
  '🥒', 'Acompanhamento', 25, '25 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Raspe levemente a superfície do maxixe com faca para remover os espinhos. Lave bem e corte em rodelas de 0,5 cm.',
    'Aqueça 2 colheres de sopa de azeite em frigideira média em fogo médio. Refogue 1 cebola pequena picada até ficar translúcida.',
    'Adicione 3 dentes de alho amassados e refogue por mais 1 minuto até liberar aroma.',
    'Junte 1 tomate picado e mexa. Cozinhe por 2 minutos.',
    'Acrescente as rodelas de maxixe, tempere com sal e pimenta do reino. Adicione 3 colheres de sopa de água, tampe e cozinhe em fogo baixo por 10 a 15 minutos, mexendo ocasionalmente.',
    'Quando o maxixe estiver macio e levemente translúcido, desligue o fogo, finalize com coentro picado e sirva quente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Quiabo Refogado Maranhense',
  'Quiabo em rodelas refogado em fogo alto com alho, tomate e coentro. O segredo é secar bem o quiabo antes de refogar para minimizar a baba.',
  '🌿', 'Acompanhamento', 20, '20 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Lave 500 g de quiabos e seque-os muito bem com pano limpo antes de cortar — isso reduz a baba. Retire as pontas e corte em rodelas de 1 cm.',
    'Regue as rodelas com suco de 1/2 limão, misture e deixe repousar por 5 minutos para reduzir ainda mais a baba.',
    'Aqueça 2 colheres de sopa de azeite em frigideira larga em fogo alto. Refogue 1 cebola em rodelas até começar a dourar.',
    'Adicione 2 dentes de alho amassados e 1 tomate picado. Refogue por 2 minutos.',
    'Acrescente o quiabo em fogo alto, mexendo rapidamente sem tampar, por 8 a 10 minutos até ficar macio e com pouca baba.',
    'Tempere com sal e pimenta do reino. Finalize com coentro picado e pimenta-de-cheiro. Sirva quente como acompanhamento de peixe ou frango.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Beiju Simples com Coco Fresco',
  'Beiju de goma de mandioca com coco fresco ralado, sem açúcar. Preparado na frigideira seca, é o beiju mais tradicional e natural do Maranhão.',
  '🥥', 'Entrada', 20, '20 min', 6, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Passe 500 g de goma de mandioca hidratada por peneira fina para deixá-la soltinha e arejada. Misture com uma pitada de sal.',
    'Incorpore 100 g de coco fresco ralado à goma, misturando levemente com as pontas dos dedos até distribuir uniformemente.',
    'Aqueça uma frigideira antiaderente de 20 cm em fogo baixo-médio. Não é necessário óleo se a frigideira for boa.',
    'Espalhe uma porção da mistura (cerca de 3 colheres de sopa) na frigideira, pressionando levemente para formar um disco uniforme de 1 cm de espessura.',
    'Tampe e cozinhe por 3 a 4 minutos até as bordas começarem a soltar. Com auxílio de um prato, vire o beiju e cozinhe o outro lado por mais 3 minutos.',
    'Retire e sirva puro ou acompanhado de queijo coalho. Não leva açúcar — o sabor doce vem naturalmente do coco fresco.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Mingau de Tapioca Natural',
  'Mingau de tapioca cozido somente em leite de coco e água, sem açúcar nem leite condensado. Suave e cremoso, ideal para diabéticos.',
  '🥣', 'Sobremesa', 25, '25 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Em tigela, hidrate 1 xícara de tapioca granulada com 200 ml de água fria por 10 minutos. Mexa ocasionalmente.',
    'Em panela média, leve ao fogo médio 200 ml de água com 400 ml de leite de coco, 1 pau de canela, 2 cravos e 1 pitada de sal.',
    'Quando a mistura começar a ferver, acrescente a tapioca hidratada, mexendo constantemente com colher de pau.',
    'Reduza para fogo baixo e cozinhe por 8 a 10 minutos, mexendo sem parar, até a tapioca ficar completamente translúcida e o mingau cremoso.',
    'Retire o pau de canela e os cravos. Ajuste a consistência com um pouco mais de água ou leite de coco se ficar espesso demais.',
    'Sirva quente em tigelas, polvilhe canela em pó por cima e, se desejar, adicione coco fresco ralado. Sem açúcar — é o modo tradicional maranhense.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Juçara com Farinha de Puba',
  'Polpa de juçara (açaí-do-maranhão) servida com farinha de puba fermentada e camarão seco. Combinação única e tradicional do Maranhão.',
  '�?', 'Entrada', 15, '15 min', 4, 'Fácil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Deixe o camarão seco de molho em água por 1 hora para reduzir o sal. Escorra e reserve.',
    'Bata a polpa de juçara (ou frutos de juçara) no liquidificador com água fria gelada até obter consistência cremosa. Mantenha refrigerada.',
    'Tempere o camarão escorrido com gotas de limão. Leve ao fogo em frigideira seca por 2 minutos apenas para aquecer e firmar.',
    'Distribua a farinha de puba em cuias ou tigelas individuais — cerca de 3 colheres de sopa por porção. A farinha de puba tem sabor levemente azedo por ser fermentada.',
    'Despeje a polpa de juçara gelada sobre a farinha de puba. A farinha absorve a polpa criando uma combinação de texturas única.',
    'Coloque o camarão seco aquecido por cima. Sirva imediatamente sem adicionar açúcar, mantendo o sabor natural levemente ácido e adocicado da juçara.'
  ),
  JSON_ARRAY('Cotidiano')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 75, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Óleo de babaçu','Limão','Alho','Pimenta do reino','Cebola','Coentro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 76, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Vinagre','Cebola','Pimentão','Alho','Tomate','Coentro','Limão','Colorau');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 76, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 77, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Alho','Cebola','Tomate','Pimentão','Leite de coco','Coentro','Limão','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 78, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Cebola','Tomate','Coentro','Cebolinha','Vinagre','Limão','Leite de coco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 79, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Limão','Alho','Folha de louro','Coentro','Cebola');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 80, id, 0 FROM ingredientes WHERE nome IN ('Camarão fresco','Limão','Alho','Cebola','Coentro','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 81, id, 0 FROM ingredientes WHERE nome IN ('Frango','Mandioca','Alho','Cebola','Tomate','Coentro','Cebolinha','Pimentão','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 82, id, 0 FROM ingredientes WHERE nome IN ('Feijão','Maxixe','Quiabo','Alho','Cebola','Tomate','Coentro','Cebolinha','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 83, id, 0 FROM ingredientes WHERE nome IN ('Arroz integral','Vinagreira','Camarão seco','Gergelim branco','Cebola','Alho','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 84, id, 0 FROM ingredientes WHERE nome IN ('Farinha de arroz');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 84, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 85, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 85, id, 1 FROM ingredientes WHERE nome IN ('Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 86, id, 0 FROM ingredientes WHERE nome IN ('Maxixe','Alho','Cebola','Tomate','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 87, id, 0 FROM ingredientes WHERE nome IN ('Quiabo','Alho','Cebola','Tomate','Coentro','Limão','Pimenta do reino','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 88, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 89, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 89, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 90, id, 0 FROM ingredientes WHERE nome IN ('Juçara','Farinha de puba','Camarão seco','Limão');

UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&h=400&fit=crop&q=80' WHERE id = 75;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&h=400&fit=crop&q=80' WHERE id = 76;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1548943487-a2e4e43b4853?w=600&h=400&fit=crop&q=80' WHERE id = 77;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1565680018434-b513d5e5fd47?w=600&h=400&fit=crop&q=80' WHERE id = 78;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1565680018434-b513d5e5fd47?w=600&h=400&fit=crop&q=80' WHERE id = 79;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1565680018434-b513d5e5fd47?w=600&h=400&fit=crop&q=80' WHERE id = 80;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 81;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=600&h=400&fit=crop&q=80' WHERE id = 82;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=400&fit=crop&q=80' WHERE id = 83;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 84;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?w=600&h=400&fit=crop&q=80' WHERE id = 85;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&h=400&fit=crop&q=80' WHERE id = 86;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&h=400&fit=crop&q=80' WHERE id = 87;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=400&fit=crop&q=80' WHERE id = 88;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=600&h=400&fit=crop&q=80' WHERE id = 89;
UPDATE receitas SET imagem_url = 'https://images.unsplash.com/photo-1481391319762-47dff72954d9?w=600&h=400&fit=crop&q=80' WHERE id = 90;
