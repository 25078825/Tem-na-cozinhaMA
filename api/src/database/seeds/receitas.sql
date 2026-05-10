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
  '🍚', 'Prato Principal', 50, '50 min', 4, 'Média', 0, 0, 1,
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
  '🦐', 'Entrada', 60, '60 min', 8, 'Média', 0, 1, 1,
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
  '🍛', 'Prato Principal', 45, '45 min', 6, 'Fácil', 0, 0, 1,
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
  '🍖', 'Acompanhamento', 50, '50 min', 4, 'Fácil', 0, 0, 0,
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
  '🐟', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
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
  '🦐', 'Prato Principal', 50, '50 min', 5, 'Fácil', 0, 0, 0,
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
  '🐠', 'Prato Principal', 50, '50 min', 5, 'Média', 0, 1, 0,
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
  '🐚', 'Prato Principal', 30, '30 min', 4, 'Fácil', 1, 0, 0,
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
  '🍲', 'Prato Principal', 90, '90 min', 4, 'Difícil', 0, 1, 0,
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
  '🍲', 'Prato Principal', 90, '90 min', 4, 'Difícil', 0, 1, 0,
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
  '🍛', 'Prato Principal', 50, '50 min', 4, 'Fácil', 0, 1, 1,
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
  '🍚', 'Acompanhamento', 30, '30 min', 4, 'Fácil', 1, 0, 0,
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
  '🍲', 'Prato Principal', 50, '50 min', 4, 'Média', 0, 1, 0,
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
  '🐚', 'Prato Principal', 30, '30 min', 4, 'Fácil', 1, 0, 0,
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
  '🐟', 'Prato Principal', 40, '40 min', 4, 'Fácil', 0, 0, 0,
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
  '🍖', 'Prato Principal', 40, '40 min', 4, 'Fácil', 0, 1, 0,
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
  '🍮', 'Sobremesa', 75, '75 min', 6, 'Difícil', 0, 1, 0,
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
  '🍚', 'Sobremesa', 45, '45 min', 6, 'Fácil', 0, 1, 0,
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
  '🍩', 'Sobremesa', 45, '45 min', 6, 'Média', 0, 1, 0,
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
  '🍯', 'Sobremesa', 30, '30 min', 6, 'Fácil', 0, 0, 0,
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
  '🍯', 'Sobremesa', 60, '60 min', 6, 'Média', 0, 0, 0,
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
  '🍦', 'Sobremesa', 30, '30 min', 6, 'Fácil', 1, 0, 0,
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
  '🍑', 'Sobremesa', 90, '1h30', 6, 'Média', 0, 1, 0,
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

-- ─────────────────────────────────────────────────────────────
-- Ingredientes por receita
-- ─────────────────────────────────────────────────────────────

-- 1: Arroz de Cuxá
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Camarão seco','Gergelim branco','Cebola','Tomate','Pimentão','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 1 FROM ingredientes WHERE nome IN ('Cuxá','Sal');

-- 2: Carne de Sol com Mandioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Mandioca','Cebola','Alho','Coentro','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Tomate');

-- 3: Torta de Camarão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 0 FROM ingredientes WHERE nome IN ('Camarão seco','Batata','Extrato de tomate','Cebola','Alho','Ovo','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

-- 4: Maria Isabel
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Carne de sol','Cebola','Alho','Colorau','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 1 FROM ingredientes WHERE nome IN ('Pimenta dedo-de-moça','Pimenta do reino');

-- 5: Farofa de Camarão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Camarão fresco','Cebola','Alho','Tomate','Pimenta-de-cheiro','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

-- 6: Canjica de Milho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 6, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','Açúcar','Canela','Manteiga');

-- 7: Tapioca Recheada
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Queijo coalho','Carne de sol','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 1 FROM ingredientes WHERE nome IN ('Coentro');

-- 8: Paçoca de Carne Seca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 0 FROM ingredientes WHERE nome IN ('Carne seca','Farinha de mandioca','Cebola','Alho','Manteiga','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 9: Peixada Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Batata','Ovos cozidos','Cebola','Tomate','Pimenta-de-cheiro','Alho','Cebolinha','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 10: Caldeirada de Camarão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 0 FROM ingredientes WHERE nome IN ('Camarão fresco','Leite de coco','Creme de leite','Extrato de tomate','Cebola','Alho','Tomate','Coentro','Manteiga de garrafa','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

-- 11: Torta de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Ovo','Amido de milho','Tomate','Pimenta-de-cheiro','Cebola','Alho','Coentro','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Limão');

-- 12: Arroz do Mar
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Lula','Camarão fresco','Sururu','Cebola','Alho','Tomate','Pimentão','Leite de coco','Pimenta-de-cheiro','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Sal');

-- 13: Moqueca Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Colorau','Cebola','Tomate','Pimentão','Pimenta-de-cheiro','Cebolinha','Coentro','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

-- 14: Sururu ao Leite de Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Leite de coco','Extrato de tomate','Alho','Cebola','Tomate','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

-- 15: Caranguejada
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Leite de coco','Tomate','Cebola','Alho','Pimentão','Coentro','Cebolinha','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 16: Carne de Sol Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Banana','Queijo coalho','Cebola','Manteiga de garrafa','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 1 FROM ingredientes WHERE nome IN ('Limão','Pimenta do reino');

-- 17: Cozidão
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 0 FROM ingredientes WHERE nome IN ('Carne bovina','Mandioca','Inhame','Abóbora','Maxixe','Quiabo','Batata-doce','Cenoura','Chuchu','Repolho','Couve','Cebola','Alho','Colorau','Folha de louro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 1 FROM ingredientes WHERE nome IN ('Arroz','Farinha de mandioca','Pimenta do reino');

-- 18: Sarrabulho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Sangue coalhado','Toucinho','Fígado de porco','Coração de porco','Pulmão de porco','Cebola','Alho','Tomate','Colorau','Coentro','Vinagre');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 19: Sarapatel
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 0 FROM ingredientes WHERE nome IN ('Miúdos de porco','Cominho','Colorau','Alho','Cebola','Pimentão','Coentro','Vinagre','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 20: Baião de Dois Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Feijão-de-corda','Bacon','Linguiça calabresa','Alho','Cebola','Leite de coco','Queijo coalho','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 21: Arroz de Toucinho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Toucinho','Alho','Cebola','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 1 FROM ingredientes WHERE nome IN ('Sal');

-- 22: Mocotó
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 0 FROM ingredientes WHERE nome IN ('Pata de boi','Alho','Cebola','Tomate','Colorau','Cravo','Vinagre','Limão','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 23: Rabada
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 0 FROM ingredientes WHERE nome IN ('Rabo de boi','Agrião','Cebola','Alho','Tomate','Pimentão','Folha de louro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 1 FROM ingredientes WHERE nome IN ('Vinho tinto','Pimenta do reino','Batata');

-- 24: Feijão Verde
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 0 FROM ingredientes WHERE nome IN ('Feijão verde fresco','Nata','Cebola','Alho','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 1 FROM ingredientes WHERE nome IN ('Leite de coco','Pimenta do reino');

-- 25: Vatapá Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 0 FROM ingredientes WHERE nome IN ('Camarão seco','Camarão fresco','Pão','Leite de coco','Amendoim','Castanha de caju','Cebola','Tomate','Pimenta-de-cheiro','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

-- 26: Sarnambi no Leite de Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 0 FROM ingredientes WHERE nome IN ('Marisco sarnambi','Leite de coco','Colorau','Alho','Cebola','Pimentão','Tomate','Pimenta-de-cheiro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 27: Peixe Frito no Azeite de Babaçu
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Óleo de babaçu','Alho','Limão','Colorau','Pimenta do reino');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta-de-cheiro');

-- 28: Caldo de Ovos
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 0 FROM ingredientes WHERE nome IN ('Carne moída','Ovo','Cebola','Alho','Tomate','Pimentão','Colorau','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

-- 29: Beiju de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

-- 30: Patola de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Farinha de trigo','Ovo','Farinha de rosca','Alho','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 31: Casquinha de Caranguejo
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Leite de coco','Cebola','Alho','Pimentão','Tomate','Coentro','Cebolinha','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

-- 32: Tripinha Frita
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 0 FROM ingredientes WHERE nome IN ('Tripa de porco','Vinagre','Farinha de milho','Alho','Limão');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

-- 33: Cachorro-Quente Maranhense
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 0 FROM ingredientes WHERE nome IN ('Salsicha','Carne moída','Cebola','Alho','Tomate','Extrato de tomate','Repolho','Pão','Milho verde');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 1 FROM ingredientes WHERE nome IN ('Pimenta calabresa','Pimenta do reino');

-- 34: Doce de Espécie
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','Açúcar','Farinha de trigo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 1 FROM ingredientes WHERE nome IN ('Cravo','Canela');

-- 35: Arroz Doce com Coco
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 35, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite','Leite de coco','Açúcar','Canela','Coco ralado','Cravo');

-- 36: Bolo de Arroz (Orelha de Macaco)
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 36, id, 0 FROM ingredientes WHERE nome IN ('Arroz demolhado','Ovo','Açúcar','Cravo','Farinha de trigo','Óleo de babaçu');

-- 37: Bolo de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Leite','Coco ralado','Manteiga','Farinha de trigo','Erva-doce');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

-- 38: Doce de Bacuri
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','Leite condensado','Creme de leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

-- 39: Doce de Buriti
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 39, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','Açúcar');

-- 40: Mingau de Milho
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 40, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite','Açúcar','Canela');

-- 41: Mingau de Tapioca
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite','Leite condensado','Manteiga de garrafa','Canela');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

-- 42: Queijadinha
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 42, id, 0 FROM ingredientes WHERE nome IN ('Queijo coalho','Coco ralado','Açúcar','Ovo','Leite','Farinha de trigo','Manteiga');

-- 43: Sorvete de Cupuaçu
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaçu','Leite condensado','Creme de leite','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 1 FROM ingredientes WHERE nome IN ('Açúcar');

-- 44: Compota de Caju
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 44, id, 0 FROM ingredientes WHERE nome IN ('Caju','Açúcar','Cravo','Canela');

-- ─────────────────────────────────────────────────────────────
-- Fotos das receitas (Unsplash)
-- ─────────────────────────────────────────────────────────────
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
