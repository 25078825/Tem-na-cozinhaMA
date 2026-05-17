SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE receita_ingredientes;
TRUNCATE TABLE ingredientes;
TRUNCATE TABLE receitas;
SET FOREIGN_KEY_CHECKS = 1;

INSERT IGNORE INTO ingredientes (nome) VALUES
  ('Arroz'), ('FeijÃ£o'), ('Farinha de mandioca'), ('Carne seca'), ('Frango'),
  ('CamarÃ£o'), ('CuxÃ¡'), ('Vinagreira'), ('Leite de coco'), ('DendÃª'),
  ('Tomate'), ('Cebola'), ('Alho'), ('PimentÃ£o'), ('Coentro'),
  ('Mandioca'), ('Milho'), ('Ovo'), ('Queijo coalho'), ('Bacon'),
  ('Tapioca'), ('Coco ralado'), ('AÃ§Ãºcar'), ('Canela'), ('FeijÃ£o fradinho'),
  ('CamarÃ£o seco'), ('Manteiga de garrafa'), ('Pimenta do reino'), ('LimÃ£o'),
  ('Peixe fresco'), ('Batata'), ('Ovos cozidos'), ('Carne de sol'),
  ('Pimenta-de-cheiro'), ('CamarÃ£o fresco'), ('Azeite de dendÃª'), ('Lula'),
  ('Polvo'), ('MexilhÃ£o'), ('Leite de coco de babaÃ§u'),
  ('Sururu'), ('Tempero verde'), ('Caranguejo inteiro'), ('Banana frita'),
  ('Carne bovina'), ('Maxixe'), ('Quiabo'), ('AbÃ³bora'),
  ('MiÃºdos de porco'), ('Sangue coalhado'), ('Vinho tinto'), ('Sangue picado'),
  ('Cominho'), ('FeijÃ£o-de-corda'), ('Toucinho'), ('Gordura de porco'),
  ('Pata de boi'), ('FeijÃ£o branco'), ('Rabo de boi'), ('AgriÃ£o'),
  ('FeijÃ£o verde fresco'), ('Nata'), ('PÃ£o'), ('Amendoim'),
  ('Marisco sarnambi'), ('Ã“leo de babaÃ§u'), ('Sal'), ('Carne moÃ­da'),
  ('Goma de mandioca'), ('Farinha de rosca'), ('Carne de caranguejo'),
  ('Tripa de porco'), ('Salsicha'), ('Repolho'),
  ('Farinha de trigo'), ('Polpa de bacuri'), ('Polpa de buriti'),
  ('Milho verde'), ('Tapioca granulada'), ('Leite'), ('Queijo parmesÃ£o'),
  ('Leite condensado'), ('Creme de leite'), ('Polpa de cupuaÃ§u'),
  ('Caju'), ('Cravo'), ('Arroz demolhado'), ('Banana'),
  ('Gergelim branco'), ('Pimenta dedo-de-moÃ§a'), ('Colorau'),
  ('Extrato de tomate'), ('Amido de milho'), ('Cebolinha'),
  ('Pimenta calabresa'), ('LinguiÃ§a calabresa'), ('Castanha de caju'),
  ('Salsinha'), ('Folha de louro'), ('Vinagre'), ('Inhame'),
  ('Cenoura'), ('Chuchu'), ('Couve'), ('Batata-doce'),
  ('FÃ­gado de porco'), ('CoraÃ§Ã£o de porco'), ('PulmÃ£o de porco'),
  ('Erva-doce'), ('Farinha de milho'), ('Manteiga');

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Arroz de CuxÃ¡',
  'Prato sÃ­mbolo do MaranhÃ£o feito com arroz, folhas de vinagreira, camarÃ£o seco e gergelim tostado.',
  'ðŸš', 'Prato Principal', 50, '50 min', 4, 'MÃ©dia', 0, 0, 1,
  JSON_ARRAY(
    'Cozinhe o arroz normalmente e reserve. Lave o camarÃ£o seco, retire o excesso de sal em Ã¡gua corrente e pique grosseiramente.',
    'Lave as folhas de vinagreira, retire os talos grossos e cozinhe em Ã¡gua fervente por 5 a 10 minutos atÃ© murcharem. Escorra, esprema o excesso de Ã¡gua e pique grosseiramente.',
    'Em frigideira seca, toste o gergelim branco em fogo mÃ©dio por 2 minutos atÃ© dourar e soltar aroma. Reserve.',
    'Em panela grande, aqueÃ§a o azeite e refogue a cebola, o tomate, o pimentÃ£o e as pimentas-de-cheiro atÃ© ficarem macios. Acrescente o camarÃ£o seco e misture por 3 minutos.',
    'Adicione a vinagreira picada ao refogado e cozinhe por 2 minutos. Junte o gergelim tostado e acerte o sal.',
    'Acrescente o arroz cozido ao refogado verde, misturando delicadamente atÃ© ficar uniformemente verde e bem temperado. Sirva com peixe frito ou frango assado.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Carne de Sol com Mandioca',
  'ClÃ¡ssico maranhense: carne de sol grelhada na manteiga de garrafa com cebola caramelizada, servida sobre mandioca cozida macia.',
  'ðŸ¥©', 'Prato Principal', 60, '60 min', 4, 'FÃ¡cil', 0, 0, 1,
  JSON_ARRAY(
    'Deixe a carne de sol de molho em Ã¡gua fria por 4 a 6 horas, trocando a Ã¡gua a cada 2 horas para dessalgar. Escorra e corte em pedaÃ§os ou bifes.',
    'Cozinhe a mandioca em panela de pressÃ£o com Ã¡gua e sal por 15 a 20 minutos atÃ© ficar macia. Retire o fio central e reserve.',
    'Em frigideira larga, aqueÃ§a um fio de Ã³leo e frite a carne de sol em fogo alto, dourando bem de ambos os lados por cerca de 4 minutos de cada lado. Retire e reserve.',
    'Na mesma frigideira, derreta a manteiga de garrafa e doure as rodelas de cebola atÃ© ficarem caramelizadas. Adicione o alho e refogue rapidamente.',
    'Volte a carne Ã  frigideira, misture com a cebola e o alho. Ajuste o tempero com pimenta-do-reino e sal se necessÃ¡rio.',
    'Sirva a carne sobre a mandioca cozida. Regue tudo com mais manteiga de garrafa e finalize com coentro picado.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo', 'Final de semana')
),
(
  'Torta de CamarÃ£o',
  'Torta maranhense com camarÃ£o seco dessalgado, batata cozida e extrato de tomate, coberta com camadas de ovos batidos em neve.',
  'ðŸ¦', 'Entrada', 60, '60 min', 8, 'MÃ©dia', 0, 1, 1,
  JSON_ARRAY(
    'Dessalgue o camarÃ£o seco deixando de molho na vÃ©spera, trocando a Ã¡gua. Refogue com cebola, alho e extrato de tomate atÃ© o camarÃ£o soltar do fundo. Acrescente a batata cozida em cubinhos e acerte o sal.',
    'Separe as claras das gemas. Bata as claras em neve bem firme. Adicione as gemas uma a uma, batendo levemente para incorporar.',
    'Unte uma assadeira mÃ©dia com manteiga. Espalhe cerca de um terÃ§o dos ovos batidos no fundo da forma.',
    'Distribua o recheio de camarÃ£o com batata uniformemente por cima da camada de ovos.',
    'Cubra com o restante dos ovos batidos, formando a tampa da torta.',
    'Leve ao forno prÃ©-aquecido a 180Â°C por 30 a 35 minutos atÃ© a superfÃ­cie dourar. Sirva com arroz branco e farofa.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Maria Isabel',
  'Arroz refogado no colorau e cozido junto com carne de sol em cubos dourados. Prato simples e saboroso do cotidiano maranhense.',
  'ðŸ›', 'Prato Principal', 45, '45 min', 6, 'FÃ¡cil', 0, 0, 1,
  JSON_ARRAY(
    'Dessalgue a carne de sol de molho em Ã¡gua por 4 horas, trocando a Ã¡gua 2 vezes. Escorra e corte em cubinhos pequenos.',
    'Em panela larga, aqueÃ§a o Ã³leo em fogo alto e doure os cubos de carne de sol atÃ© ficarem bem corados de todos os lados. Retire e reserve.',
    'Na mesma panela, refogue a cebola e o alho atÃ© murcharem. Adicione o colorau e a pimenta dedo-de-moÃ§a picada, mexendo por 1 minuto.',
    'Acrescente o arroz cru e refogue por 2 minutos no refogado para absorver o sabor.',
    'Devolva a carne de sol, misture com o arroz e junte metade do coentro. Despeje a Ã¡gua quente, ajuste o sal e tampe. Cozinhe em fogo mÃ©dio atÃ© a Ã¡gua baixar ao nÃ­vel do arroz.',
    'Abaixe o fogo ao mÃ­nimo e cozinhe tampado atÃ© secar completamente (cerca de 15 minutos). Deixe repousar 5 minutos e finalize com o restante do coentro.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Farofa de CamarÃ£o',
  'Farofa de farinha de mandioca torrada com camarÃ£o salteado, tomate, pimenta-de-cheiro e coentro.',
  'ðŸ¥„', 'Acompanhamento', 25, '25 min', 4, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Tempere os camarÃµes com suco de limÃ£o, sal e pimenta-do-reino. Deixe marinar por 10 minutos.',
    'Em frigideira larga, derreta metade da manteiga em fogo alto e salteie os camarÃµes por 2 a 3 minutos atÃ© ficarem rosados. Retire e reserve.',
    'Na mesma frigideira, acrescente o restante da manteiga e refogue a cebola e o alho. Adicione o tomate e a pimenta-de-cheiro, cozinhando atÃ© o tomate desmanchar (5 minutos).',
    'Volte os camarÃµes Ã  frigideira, misture bem e acerte o sal.',
    'Acrescente a farinha de mandioca torrada aos poucos, mexendo continuamente em fogo baixo atÃ© a farofa ficar solta e levemente dourada.',
    'Finalize com cebolinha e coentro picados. Sirva como acompanhamento de peixes ou carnes.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Canjica de Milho',
  'Milho verde batido com leite de coco, cozido com aÃ§Ãºcar e canela atÃ© firmar. Cortado em quadrados e servido frio â€” doce tÃ­pico maranhense.',
  'ðŸŒ½', 'Sobremesa', 60, '60 min', 8, 'FÃ¡cil', 0, 1, 0,
  JSON_ARRAY(
    'Debulhe o milho das espigas. Bata o milho com o leite de coco no liquidificador atÃ© obter um creme homogÃªneo.',
    'Coe a mistura em peneira fina ou pano limpo, espremendo bem para extrair todo o lÃ­quido. Descarte o bagaÃ§o.',
    'Coloque o lÃ­quido coado numa panela com o aÃ§Ãºcar, uma pitada de sal e o pau de canela. Leve ao fogo mÃ©dio, mexendo constantemente.',
    'Cozinhe sempre mexendo atÃ© a mistura engrossar e comeÃ§ar a soltar do fundo da panela (cerca de 20 a 25 minutos). Adicione a manteiga e incorpore.',
    'Retire o pau de canela. Ainda quente, despeje em assadeira levemente untada, alisando a superfÃ­cie com espÃ¡tula.',
    'Deixe esfriar completamente e leve Ã  geladeira por pelo menos 2 horas. Polvilhe canela em pÃ³, corte em quadrados e sirva fria.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Tapioca Recheada',
  'Tapioca feita na frigideira seca recheada com queijo coalho e carne de sol desfiada, regada com manteiga de garrafa.',
  'ðŸ«“', 'Entrada', 15, '15 min', 2, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Peneire a goma de tapioca para deixÃ¡-la solta e sem grumos.',
    'AqueÃ§a uma frigideira antiaderente em fogo mÃ©dio-alto, sem Ã³leo. Espalhe a goma formando um disco uniforme com as costas de uma colher.',
    'Aguarde 1 a 2 minutos atÃ© a tapioca firmar e as bordas comeÃ§arem a soltar.',
    'Vire a tapioca delicadamente como uma panqueca. Aguarde mais 1 minuto no outro lado.',
    'Coloque o queijo coalho fatiado em metade do disco e deixe derreter levemente. Adicione a carne de sol desfiada e regue com manteiga de garrafa.',
    'Dobre ao meio, pressione levemente para fechar e sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'PaÃ§oca de Carne Seca',
  'Carne seca dessalgada, cozida na pressÃ£o, desfiada e frita com farinha de mandioca atÃ© virar uma farofa grossa e saborosa.',
  'ðŸ–', 'Acompanhamento', 50, '50 min', 4, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'Dessalgue a carne seca de molho em Ã¡gua por 24 horas, trocando a Ã¡gua de 4 em 4 horas. Escorra.',
    'Cozinhe a carne seca na panela de pressÃ£o com Ã¡gua limpa por 30 minutos atÃ© ficar bem macia. Escorra e desfie grosseiramente.',
    'Em frigideira larga, derreta a manteiga e frite a cebola e o alho atÃ© dourarem. Acrescente a carne desfiada e frite em fogo alto, mexendo, atÃ© ficar bem dourada (5 a 7 minutos).',
    'Abaixe o fogo. Acrescente a farinha de mandioca aos poucos, misturando constantemente atÃ© a mistura ficar solta e seca, semelhante a uma farofa grossa.',
    'Acerte o sal e a pimenta-do-reino. A paÃ§oca deve ficar levemente Ãºmida por dentro, com exterior seco.',
    'Finalize com cebolinha picada e sirva com arroz, feijÃ£o e ovo frito.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixada Maranhense',
  'Peixe cozido em camadas de cebola e tomate com leite de coco e pimenta-de-cheiro, finalizado com batata, ovos cozidos e coentro.',
  'ðŸŸ', 'Prato Principal', 50, '50 min', 5, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Tempere as postas de peixe com sal e suco de limÃ£o. Deixe marinar por 15 minutos.',
    'Em panela de barro ou panela comum, aqueÃ§a metade do azeite. Forre o fundo com camadas alternadas de rodelas de cebola e tomate.',
    'Coloque as postas de peixe por cima das camadas de legumes. Adicione as pimentas-de-cheiro picadas.',
    'Despeje o leite de coco e o restante do azeite sobre o peixe. Complete com Ã¡gua suficiente para quase cobrir as postas. Leve ao fogo mÃ©dio.',
    'Assim que ferver, abaixe o fogo, tampe parcialmente e cozinhe por 20 minutos. Adicione as batatas cozidas em rodelas e os ovos cozidos. Acerte o sal.',
    'Finalize com cebolinha e coentro picados, tampe por 5 minutos e sirva com arroz branco e pirÃ£o feito com o caldo.'
  ),
  JSON_ARRAY('PÃ¡scoa', 'Semana Santa', 'Festa')
),
(
  'Caldeirada de CamarÃ£o',
  'CamarÃµes cozidos em caldo rico com extrato de tomate, leite de coco e creme de leite, servidos com arroz branco e pirÃ£o.',
  'ðŸ¦', 'Prato Principal', 50, '50 min', 5, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'Lave os camarÃµes com suco de limÃ£o. Escorra e tempere com sal e pimenta.',
    'Em panela larga, aqueÃ§a o azeite e refogue cebola, alho e tomate por 8 minutos atÃ© formarem um molho. Adicione o extrato de tomate e parte do coentro.',
    'Coloque os camarÃµes no refogado e acrescente cerca de 500 ml de Ã¡gua. Cozinhe por 10 minutos em fogo mÃ©dio.',
    'Retire parte do caldo para fazer o pirÃ£o: misture com farinha de mandioca e leve ao fogo mexendo atÃ© engrossar.',
    'Na panela com os camarÃµes, adicione a manteiga de garrafa. Pouco antes de servir, despeje o creme de leite e o leite de coco. Misture e deixe ferver por 3 minutos.',
    'Finalize com o restante do coentro e sirva bem quente com arroz branco e pirÃ£o.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Torta de Caranguejo',
  'Carne de caranguejo refogada com pimenta-de-cheiro e coentro, envolta em trÃªs camadas de ovos batidos em neve e assada no forno.',
  'ðŸ¦€', 'Prato Principal', 55, '55 min', 4, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'AqueÃ§a a manteiga em frigideira e refogue a cebola, tomate e pimentas-de-cheiro atÃ© a cebola ficar transparente. Adicione a carne de caranguejo, sal e suco de limÃ£o. Refogue por 5 minutos. Reserve.',
    'Separe as claras das gemas. Bata as claras em neve firme. Adicione as gemas uma a uma, batendo levemente. Acrescente o amido de milho e misture.',
    'Divida a mistura de ovos em trÃªs partes iguais. Unte uma assadeira mÃ©dia com manteiga.',
    'Espalhe a primeira parte dos ovos no fundo da assadeira formando uma camada base.',
    'Misture a segunda parte dos ovos ao refogado de caranguejo e ao coentro. Espalhe essa mistura sobre a camada base.',
    'Cubra com a terceira parte dos ovos. Leve ao forno prÃ©-aquecido a 180Â°C por 30 minutos atÃ© dourar. Sirva com arroz e farofa.'
  ),
  JSON_ARRAY('PÃ¡scoa', 'Semana Santa', 'Festa')
),
(
  'Arroz do Mar',
  'Arroz cozido no caldo de frutos do mar â€” lula, camarÃ£o e sururu â€” com leite de coco, pimenta-de-cheiro e coentro.',
  'ðŸŒŠ', 'Prato Principal', 60, '60 min', 4, 'DifÃ­cil', 0, 0, 0,
  JSON_ARRAY(
    'Tempere os frutos do mar separadamente com sal, limÃ£o e pimenta. Reserve.',
    'Em panela grande, aqueÃ§a o azeite e refogue a cebola, o alho, o tomate e o pimentÃ£o por 5 minutos atÃ© amolecerem.',
    'Acrescente os frutos do mar ao refogado â€” primeiro a lula, depois o camarÃ£o e por Ãºltimo o sururu â€” e salteie por 3 minutos apenas para selar.',
    'Adicione o arroz cru e misture bem, refogando por 2 minutos no tempero.',
    'Despeje o caldo de peixe quente e o leite de coco. Adicione a pimenta-de-cheiro, acerte o sal e mexa uma vez. Tampe e cozinhe em fogo mÃ©dio atÃ© a Ã¡gua baixar ao nÃ­vel do arroz.',
    'Abaixe o fogo ao mÃ­nimo, tampe e cozinhe atÃ© secar completamente (15 minutos). Repouse 5 minutos e sirva decorado com coentro e cebolinha picados.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Moqueca Maranhense',
  'Peixe firme cozido em camadas de legumes com azeite, colorau e leite de coco â€” versÃ£o maranhense sem dendÃª, feita na panela de barro.',
  'ðŸ ', 'Prato Principal', 50, '50 min', 5, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Tempere as postas de peixe com sal e suco de limÃ£o. Deixe marinar por 20 minutos.',
    'Em panela de barro ou panela larga, aqueÃ§a o azeite com o colorau para soltar a cor e o sabor.',
    'Em fogo mÃ©dio, refogue a cebola, os tomates e os pimentÃµes em camadas, sem mexer muito.',
    'Disponha as postas de peixe sobre as camadas de legumes. Adicione as pimentas-de-cheiro e despeje o caldo da marinada.',
    'Regue com o leite de coco por cima de todo o peixe. Tampe e cozinhe em fogo mÃ©dio-baixo por 20 a 25 minutos sem mexer â€” apenas chacoalhe a panela eventualmente.',
    'Verifique o sal. Finalize com coentro e cebolinha picados e sirva com arroz branco, pirÃ£o e farinha de mandioca.'
  ),
  JSON_ARRAY('PÃ¡scoa', 'Semana Santa', 'Festa')
),
(
  'Sururu ao Leite de Coco',
  'Marisco sururu refogado no alho e cebola com extrato de tomate, finalizado no leite de coco cremoso e cheiro-verde farto.',
  'ðŸš', 'Prato Principal', 30, '30 min', 4, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Lave o sururu em vÃ¡rias Ã¡guas atÃ© sair limpa. Se necessÃ¡rio, escalde brevemente em Ã¡gua fervente por 2 minutos e escorra.',
    'Em panela larga, aqueÃ§a o azeite e refogue o alho atÃ© dourar levemente. Adicione a cebola e cozinhe atÃ© ficar transparente.',
    'Acrescente os tomates picados e o extrato de tomate. Cozinhe em fogo mÃ©dio por 5 minutos atÃ© formar um molho. Tempere com sal e pimenta.',
    'Adicione o sururu ao molho, misture delicadamente e cozinhe por 5 minutos em fogo mÃ©dio.',
    'Despeje o leite de coco sobre o sururu. Misture, tampe e cozinhe por mais 5 minutos atÃ© o sururu ficar macio e o molho cremoso.',
    'Finalize com cheiro-verde farto. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caranguejada',
  'Caranguejos inteiros cozidos em molho rÃºstico de tomate, pimentÃ£o e leite de coco. Prato generoso servido com arroz e farofa.',
  'ðŸ¦€', 'Prato Principal', 60, '60 min', 5, 'FÃ¡cil', 0, 1, 0,
  JSON_ARRAY(
    'Lave os caranguejos com escova em Ã¡gua corrente. Afervente por 5 minutos em panela com Ã¡gua e sal para facilitar o manuseio. Escorra.',
    'Em panela grande, aqueÃ§a o azeite e refogue cebola, alho, pimentÃµes e tomates por 8 minutos atÃ© formarem um molho rÃºstico. Tempere com sal e pimenta.',
    'Adicione suco de limÃ£o e metade do coentro e cebolinha. Misture.',
    'Coloque os caranguejos sobre o refogado. Cubra com Ã¡gua (cerca de metade da altura dos caranguejos). Tampe e cozinhe em fogo mÃ©dio por 30 a 40 minutos.',
    'Nos Ãºltimos 5 minutos, adicione o leite de coco, misture chacoalhando a panela e deixe ferver atÃ© o molho engrossar levemente.',
    'Finalize com o restante do coentro e cebolinha. Sirva com arroz branco, farofa e molho de vinagrete.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Carne de Sol Maranhense',
  'Bifes de carne de sol grelhados servidos com banana-da-terra frita, queijo coalho e refogado de cebola na manteiga de garrafa.',
  'ðŸ¥©', 'Prato Principal', 40, '40 min', 4, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'Dessalgue a carne de sol de molho em Ã¡gua por 6 horas, trocando a Ã¡gua de 2 em 2 horas. Corte em bifes de 1,5 cm.',
    'Grelhe os bifes em frigideira bem quente com um fio de Ã³leo, dourando bem dos dois lados (4 minutos de cada lado). Reserve em lugar aquecido.',
    'Frite as rodelas de banana-da-terra em Ã³leo quente atÃ© dourarem dos dois lados (2 minutos por lado). Escorra em papel absorvente.',
    'Na mesma frigideira da carne, derreta a manteiga de garrafa e refogue as cebolas em rodelas atÃ© ficarem douradas e levemente caramelizadas.',
    'Adicione os cubinhos de queijo coalho ao refogado de cebola e deixe apenas 1 minuto atÃ© o queijo comeÃ§ar a amolecer. Desligue o fogo.',
    'Monte o prato: bifes de carne de sol, banana frita ao lado, cubra com o refogado de cebola e queijo. Regue com manteiga de garrafa e finalize com coentro picado.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'CozidÃ£o',
  'Carne bovina com legumes variados â€” mandioca, inhame, abÃ³bora, quiabo, maxixe e couve â€” cozidos juntos em caldo temperado com colorau.',
  'ðŸ¥˜', 'Prato Principal', 90, '1h30', 5, 'MÃ©dia', 0, 0, 0,
  JSON_ARRAY(
    'Em panela de pressÃ£o, aqueÃ§a o Ã³leo e doure os pedaÃ§os de carne com cebola, alho, colorau, sal e pimenta. Acrescente 1,5 litro de Ã¡gua e a folha de louro. Cozinhe por 40 minutos na pressÃ£o.',
    'Abra a panela, verifique se a carne estÃ¡ macia. Transfira para uma panela maior com mais Ã¡gua se necessÃ¡rio.',
    'Adicione os legumes mais duros: batata-doce, mandioca, inhame e cenoura. Cozinhe por 10 minutos.',
    'Em seguida, adicione a abÃ³bora, o chuchu, o maxixe e o quiabo. Cozinhe por mais 8 minutos.',
    'Por Ãºltimo, acrescente o repolho e a couve. Cozinhe por 5 minutos. Acerte o sal e finalize com cheiro-verde.',
    'Sirva direto na panela acompanhado de arroz branco e farofa.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Sarrabulho',
  'MiÃºdos de porco com toucinho, fÃ­gado, coraÃ§Ã£o e sangue coalhado cozidos em caldo temperado com colorau e cheiro-verde.',
  'ðŸ²', 'Prato Principal', 90, '90 min', 4, 'DifÃ­cil', 0, 1, 0,
  JSON_ARRAY(
    'Lave todos os miÃºdos com vinagre e Ã¡gua corrente. Escalde em Ã¡gua fervente por 5 minutos. Escorra e corte em pedaÃ§os pequenos.',
    'Em panela larga, aqueÃ§a o Ã³leo e doure o alho, a cebola e o tomate por 5 minutos. Acrescente primeiro o toucinho (5 minutos), depois o fÃ­gado, o coraÃ§Ã£o e o pulmÃ£o.',
    'Tempere com colorau, sal e pimenta. Refogue tudo em fogo alto por 8 a 10 minutos, mexendo bem.',
    'Cubra com Ã¡gua fervente (cerca de 600 ml) e cozinhe em fogo mÃ©dio por 40 minutos, atÃ© os miÃºdos ficarem macios.',
    'Acrescente os cubos de sangue coalhado com delicadeza, mexendo pouco para nÃ£o desmanchÃ¡-los. Cozinhe por mais 20 a 30 minutos.',
    'Acerte o sal, finalize com cheiro-verde e sirva com arroz branco, farinha de mandioca e pimenta.'
  ),
  JSON_ARRAY('Ano Novo', 'Festa')
),
(
  'Sarapatel',
  'MiÃºdos suÃ­nos picados finamente e cozidos em molho escuro e encorpado com colorau, cominho e coentro â€” versÃ£o maranhense.',
  'ðŸ²', 'Prato Principal', 90, '90 min', 4, 'DifÃ­cil', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem todos os miÃºdos com vinagre e suco de limÃ£o. Escalde em Ã¡gua fervente por 10 minutos. Escorra e pique em pedaÃ§os bem pequenos.',
    'Em panela de barro ou panela comum, aqueÃ§a o azeite e refogue a cebola, alho e pimentÃ£o atÃ© dourarem levemente.',
    'Acrescente os miÃºdos picados ao refogado e frite em fogo alto por 10 minutos, mexendo sempre, atÃ© ficarem bem dourados.',
    'Adicione colorau, cominho, sal e pimenta-do-reino. Misture bem e acrescente a Ã¡gua. Cubra e cozinhe em fogo mÃ©dio por 40 minutos, atÃ© os miÃºdos ficarem completamente macios.',
    'O sarapatel deve ficar com o molho escuro e encorpado. Se necessÃ¡rio, cozinhe destampado nos Ãºltimos 10 minutos para reduzir.',
    'Finalize com coentro picado. Sirva com arroz branco, farinha de mandioca, rodelas de laranja e pimenta.'
  ),
  JSON_ARRAY('Ano Novo', 'Festa')
),
(
  'BaiÃ£o de Dois Maranhense',
  'Arroz e feijÃ£o-de-corda cozidos juntos com bacon, linguiÃ§a calabresa, leite de coco e queijo coalho derretido.',
  'ðŸ›', 'Prato Principal', 50, '50 min', 4, 'FÃ¡cil', 0, 1, 1,
  JSON_ARRAY(
    'Cozinhe o feijÃ£o-de-corda em Ã¡gua com sal na panela de pressÃ£o por 20 a 25 minutos atÃ© ficar macio mas inteiro. Reserve com um pouco do caldo.',
    'Em panela larga, frite o bacon em sua prÃ³pria gordura atÃ© dourar. Adicione a linguiÃ§a calabresa em rodelas e doure tambÃ©m. Junte o alho e a cebola, refogando atÃ© murchar.',
    'Acrescente o arroz cru ao refogado e mexa por 2 minutos para refogar bem.',
    'Adicione o feijÃ£o cozido com parte do caldo ao arroz. Acerte a quantidade de Ã¡gua quente para cozinhar o arroz normalmente (proporÃ§Ã£o 1:2).',
    'Quando a Ã¡gua reduzir ao nÃ­vel do arroz, adicione o leite de coco e os cubos de queijo coalho. Acerte o sal, abaixe o fogo ao mÃ­nimo, tampe e cozinhe atÃ© secar (15 minutos).',
    'Desligue, repouse 5 minutos tampado e sirva com coentro e cebolinha picados por cima.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Arroz de Toucinho',
  'Arroz refogado na gordura do toucinho frito atÃ© ficar crocante, com alho e cebola. Prato simples com sabor defumado marcante.',
  'ðŸš', 'Acompanhamento', 30, '30 min', 4, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Pique o toucinho bem miÃºdo, quase em pedaÃ§os do tamanho de torresmo pequeno.',
    'Coloque o toucinho em panela aquecida com uma pitada de sal. Frite em fogo mÃ©dio-alto, mexendo, atÃ© o toucinho ficar dourado e crocante, soltando muita gordura.',
    'Retire o excesso de gordura da panela, deixando apenas o suficiente para fritar. Acrescente o alho amassado e a cebola picada e doure.',
    'Adicione o arroz cru e frite bem por 2 a 3 minutos, mexendo sempre atÃ© os grÃ£os ficarem levemente transparentes.',
    'Despeje a Ã¡gua fervente, acerte o sal, mexa uma vez e tampe. Cozinhe em fogo mÃ©dio atÃ© a Ã¡gua baixar ao nÃ­vel do arroz, depois abaixe ao mÃ­nimo e cozinhe atÃ© secar completamente.',
    'Desligue, repouse 5 minutos e finalize com salsinha picada. Sirva com o toucinho crocante por cima.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'MocotÃ³',
  'Pata de boi cozida na pressÃ£o por 1 hora atÃ© soltar colÃ¡geno e formar caldo gelatinoso denso, temperado com tomate, alho e colorau.',
  'ðŸ¦´', 'Prato Principal', 90, '1h30', 5, 'DifÃ­cil', 0, 1, 0,
  JSON_ARRAY(
    'Lave muito bem o mocotÃ³. Coloque na panela de pressÃ£o com Ã¡gua e vinagre, leve ao fogo, deixe ferver por 5 minutos e descarte essa Ã¡gua para eliminar impurezas.',
    'Na mesma panela, esprema o suco de limÃ£o sobre o mocotÃ³. Adicione sal, alho e cebola. Refogue levemente por 3 minutos.',
    'Acrescente os tomates, colorau e o cravo-da-Ã­ndia. Cubra com Ã¡gua suficiente para tampar o mocotÃ³.',
    'Tampe a panela de pressÃ£o. Ao pegar pressÃ£o, abaixe o fogo e cozinhe por 1 hora. Verifique se os ossos estÃ£o soltando e o mocotÃ³ estÃ¡ gelatinoso.',
    'Abra a panela, retire os ossos maiores. O caldo deve estar bem encorpado e gelatinoso. Acerte o sal.',
    'Sirva em tigelas fundas, finalizado com salsinha bem picada. Acompanha pÃ£o francÃªs ou arroz branco.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Rabada',
  'Rabo bovino selado e cozido na pressÃ£o por 40 minutos atÃ© soltar do osso, finalizado com agriÃ£o fresco e vinho tinto.',
  'ðŸ¥©', 'Prato Principal', 70, '70 min', 5, 'MÃ©dia', 0, 0, 0,
  JSON_ARRAY(
    'Lave o rabo bovino em Ã¡gua corrente. Tempere com sal, pimenta-do-reino e alho. Deixe marinar por 30 minutos.',
    'Em panela de pressÃ£o, aqueÃ§a o Ã³leo em fogo alto e doure a rabada atÃ© ficar bem selada de todos os lados. Adicione a cebola e o pimentÃ£o e refogue por 3 minutos.',
    'Acrescente os tomates, a folha de louro e o vinho tinto. Despeje Ã¡gua suficiente para cobrir a carne. Tampe e cozinhe por 40 minutos apÃ³s pegar pressÃ£o.',
    'Abra a panela e verifique se a carne estÃ¡ soltando do osso. Acerte o sal. Retire o excesso de gordura da superfÃ­cie com uma colher.',
    'Acrescente o cheiro-verde e coloque o agriÃ£o por cima da carne sem mexer. Tampe novamente. Quando pegar pressÃ£o, desligue imediatamente o fogo.',
    'Aguarde a pressÃ£o sair naturalmente, abra a panela â€” o agriÃ£o estarÃ¡ murchado mas ainda verde. Sirva com arroz branco e batatas cozidas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'FeijÃ£o Verde',
  'FeijÃ£o-de-corda verde cozido e finalizado com nata cremosa, manteiga, cebola dourada e coentro com cebolinha farta.',
  'ðŸ«˜', 'Acompanhamento', 35, '35 min', 4, 'FÃ¡cil', 0, 1, 0,
  JSON_ARRAY(
    'Debulhe o feijÃ£o verde fresco (se estiver em vagem). Cozinhe em Ã¡gua com sal por 20 a 30 minutos atÃ© ficar macio mas inteiro. Reserve um pouco do caldo.',
    'Em panela separada, derreta a manteiga e refogue a cebola e o alho atÃ© ficarem dourados.',
    'Adicione o feijÃ£o cozido escorrido ao refogado. Misture delicadamente.',
    'Despeje a nata (ou creme de leite) sobre o feijÃ£o, misturando em fogo baixo. Se ficar muito espesso, acrescente um pouco do caldo reservado.',
    'Tempere com sal e pimenta-do-reino. Cozinhe em fogo baixo por 5 minutos, mexendo com delicadeza para nÃ£o esmagar os grÃ£os. O feijÃ£o deve ficar cremoso.',
    'Finalize com coentro e cebolinha picados fartamente. Sirva com arroz branco e mandioca cozida.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'VatapÃ¡ Maranhense',
  'Pasta densa de pÃ£o demolhado, amendoim, castanha de caju, camarÃ£o seco e leite de coco, cozida atÃ© desgrudar da panela.',
  'ðŸ²', 'Prato Principal', 50, '50 min', 4, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Rasgue os pÃ£es e deixe de molho no leite por 4 horas. Esprema o excesso de leite e amasse atÃ© obter uma pasta.',
    'No liquidificador, bata o amendoim e a castanha de caju torrada com um pouco de leite de coco atÃ© obter uma pasta grossa. Reserve.',
    'Em panela grande, aqueÃ§a o azeite e refogue a cebola, tomates e pimentas-de-cheiro por 8 minutos. Adicione o camarÃ£o seco dessalgado e refogue por 3 minutos.',
    'Acrescente a pasta de pÃ£o e a pasta de amendoim com castanha. Misture bem em fogo mÃ©dio com colher de pau.',
    'Adicione gradualmente o leite de coco, mexendo continuamente. Quando a massa comeÃ§ar a soltar do fundo e ficar cremosa (cerca de 20 minutos), acrescente o camarÃ£o fresco e cozinhe por mais 5 minutos.',
    'Acerte o sal. O vatapÃ¡ maranhense deve ter consistÃªncia firme e cremosa. Sirva com arroz branco.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Sarnambi no Leite de Coco',
  'Marisco sarnambi dos mangues maranhenses refogado com pimentÃ£o, colorau e tomate, finalizado em leite de coco cremoso.',
  'ðŸš', 'Prato Principal', 30, '30 min', 4, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Lave o sarnambi em vÃ¡rias trocas de Ã¡gua atÃ© sair limpo. Se estiver na concha, cozinhe em Ã¡gua fervente atÃ© as conchas abrirem; descarte as que nÃ£o abrirem.',
    'Em panela larga, aqueÃ§a o azeite com o colorau para soltar a cor. Refogue o alho, a cebola e o pimentÃ£o por 5 minutos.',
    'Adicione os tomates picados e cozinhe por mais 5 minutos atÃ© formarem um molho. Tempere com sal e pimenta-de-cheiro.',
    'Acrescente o sarnambi ao molho, misture delicadamente e cozinhe por 8 minutos em fogo mÃ©dio.',
    'Despeje o leite de coco misturado com meia xÃ­cara de Ã¡gua morna. Misture, tampe e cozinhe por mais 5 minutos atÃ© o sarnambi ficar macio e o molho encorpado.',
    'Finalize com coentro e cebolinha fartamente picados. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixe Frito no Azeite de BabaÃ§u',
  'Peixe inteiro temperado com alho, limÃ£o e colorau, frito no Ã³leo de babaÃ§u que confere sabor adocicado e amendoado Ãºnico.',
  'ðŸŸ', 'Prato Principal', 40, '40 min', 4, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'FaÃ§a cortes diagonais nas laterais do peixe para o tempero penetrar. Esfregue com sal grosso, alho amassado, suco de limÃ£o, pimenta-do-reino e colorau. Deixe marinar por 30 minutos.',
    'AqueÃ§a fartamente o Ã³leo de babaÃ§u em frigideira funda. O Ã³leo deve estar bem quente antes de colocar o peixe.',
    'Seque o peixe com papel absorvente para retirar o excesso de marinada e evitar que o Ã³leo espirre.',
    'Coloque o peixe com cuidado no Ã³leo quente e frite sem mexer por 5 a 7 minutos de cada lado, atÃ© a pele ficar crocante e dourada.',
    'Retire e escorra em papel absorvente. O Ã³leo de babaÃ§u confere ao peixe sabor adocicado e amendoado caracterÃ­stico da culinÃ¡ria maranhense.',
    'Sirva com mandioca cozida, farinha de mandioca, pimenta-de-cheiro e limÃ£o.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de Ovos',
  'Caldo maranhense de carne moÃ­da com ovos pochÃª cozidos diretamente no caldo temperado. Tradicional em SÃ£o LuÃ­s.',
  'ðŸ¥š', 'Prato Principal', 30, '30 min', 4, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Em panela mÃ©dia, aqueÃ§a o Ã³leo e refogue a cebola e o alho atÃ© ficarem dourados. Acrescente o pimentÃ£o e o tomate.',
    'Adicione a carne moÃ­da e refogue em fogo alto, desmanchando os grumos, atÃ© ficar completamente cozida e levemente dourada. Tempere com colorau, sal e pimenta.',
    'Despeje a Ã¡gua quente sobre o refogado. Mexa bem e deixe ferver em fogo mÃ©dio por 10 minutos para incorporar os sabores.',
    'Se desejar caldo mais encorpado, dissolva a farinha de mandioca em meia xÃ­cara de Ã¡gua fria e adicione ao caldo mexendo bem para nÃ£o empelotar.',
    'Quebre os ovos diretamente no caldo fervente, um de cada vez, com delicadeza para que cozinhem inteiros (pochÃª). Tampe e cozinhe por 4 a 5 minutos atÃ© as claras ficarem firmes e as gemas ainda macias.',
    'Finalize com cheiro-verde picado. Sirva o caldo bem quente com pÃ£o francÃªs.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Beiju de Tapioca',
  'Disco de tapioca granulada hidratada no leite de coco quente com coco fresco ralado, grelhado na frigideira seca atÃ© dourar.',
  'ðŸ«“', 'Lanche', 25, '25 min', 6, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Em tigela grande, coloque a tapioca granulada. Despeje o leite de coco bem quente sobre a tapioca, misturando imediatamente. Deixe repousar por 10 minutos, mexendo a cada 2 minutos.',
    'Adicione o coco fresco ralado e misture bem atÃ© obter uma massa mais densa e homogÃªnea. Se ficar seco, acrescente mais leite de coco morno.',
    'AqueÃ§a uma frigideira antiaderente em fogo mÃ©dio-alto, sem Ã³leo.',
    'Coloque colheradas da massa e espalhe formando discos de 10 cm de diÃ¢metro e 1 cm de espessura.',
    'Cozinhe por 3 a 4 minutos de cada lado, pressionando levemente com espÃ¡tula, atÃ© ficarem dourados e levemente crocantes por fora.',
    'Sirva quente puro, com mel de engenho, ou com queijo coalho grelhado. TÃ­pico cafÃ© da manhÃ£ maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Patola de Caranguejo',
  'Patas grandes de caranguejo empanadas em farinha de trigo, ovo e farinha de rosca, fritas em Ã³leo bem quente atÃ© ficarem crocantes.',
  'ðŸ¦€', 'Entrada', 35, '35 min', 4, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem as patolas esfregando com escova. Tempere com suco de limÃ£o, alho, sal e pimenta-do-reino. Deixe marinar por 20 minutos.',
    'Seque as patolas com papel absorvente para o empanamento aderir melhor.',
    'Passe cada patola sequencialmente: primeiro na farinha de trigo (sacuda o excesso), depois no ovo batido, e por Ãºltimo na farinha de rosca, pressionando para aderir bem.',
    'AqueÃ§a fartamente Ã³leo em panela funda atÃ© atingir 180Â°C.',
    'Frite as patolas empanadas por 3 a 4 minutos, virando uma vez, atÃ© ficarem douradas e crocantes por todos os lados.',
    'Escorra em papel absorvente. Sirva imediatamente com molho de pimenta e limÃ£o.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Casquinha de Caranguejo',
  'Carne de caranguejo refogada com pimentÃ£o, tomate e leite de coco, finalizada com coentro e cebolinha, servida na prÃ³pria casca.',
  'ðŸ¦€', 'Entrada', 35, '35 min', 4, 'MÃ©dia', 0, 0, 0,
  JSON_ARRAY(
    'Tempere a carne de caranguejo com suco de limÃ£o, sal e pimenta-do-reino. Reserve.',
    'Em frigideira, aqueÃ§a o azeite e refogue a cebola e o alho atÃ© dourarem. Adicione o pimentÃ£o e o tomate, cozinhando por 5 minutos atÃ© amolecerem.',
    'Acrescente a carne de caranguejo temperada ao refogado. Misture delicadamente e cozinhe em fogo baixo por 5 minutos.',
    'Despeje o leite de coco, misture e cozinhe por mais 5 minutos atÃ© o molho ficar cremoso e encorpado. Acerte o sal.',
    'Retire do fogo e misture coentro e cebolinha picados fartamente.',
    'Recheie as casquinhas de caranguejo limpas com o preparo. Sirva com arroz branco, farofa e fatias de limÃ£o.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Tripinha Frita',
  'Tripa de porco limpa, dessalgada em vinagre por 12 horas, cozida e frita empanada em farinha de milho atÃ© ficar dourada e crocante.',
  'ðŸ–', 'Prato Principal', 40, '40 min', 4, 'FÃ¡cil', 0, 1, 0,
  JSON_ARRAY(
    'Lave a tripa de porco esfregando com sal grosso e limÃ£o. Deixe de molho em soluÃ§Ã£o de Ã¡gua com vinagre e sal por pelo menos 12 horas para retirar o odor forte. Lave novamente.',
    'Cozinhe a tripa em panela com Ã¡gua e sal por 20 minutos atÃ© ficar macia. Escorra e deixe secar.',
    'Corte a tripa cozida em pedaÃ§os de 4 a 5 cm. Tempere com alho, sal e pimenta-do-reino.',
    'Passe cada pedaÃ§o de tripa na farinha de milho, cobrindo bem por todos os lados. Sacuda o excesso.',
    'AqueÃ§a fartamente Ã³leo em frigideira funda. Frite os pedaÃ§os em Ã³leo quente por 4 a 5 minutos, virando, atÃ© ficarem dourados e crocantes.',
    'Escorra em papel absorvente. Sirva como aperitivo ou prato principal com vinagrete, farinha e pimenta.'
  ),
  JSON_ARRAY('Festa', 'Final de semana')
),
(
  'Cachorro-Quente Maranhense',
  'Hot-dog maranhense com carne moÃ­da bem temperada, repolho fresco e milho verde no lugar da simples salsicha com mostarda.',
  'ðŸŒ­', 'Lanche', 25, '25 min', 6, 'FÃ¡cil', 1, 1, 0,
  JSON_ARRAY(
    'Tempere o repolho fatiado finamente com sal, limÃ£o e uma pitada de aÃ§Ãºcar. Deixe marinar por 10 minutos para amaciar levemente. Reserve.',
    'Em frigideira, aqueÃ§a o Ã³leo e refogue a cebola e o alho atÃ© dourarem. Acrescente a carne moÃ­da em fogo alto, mexendo para soltar os grumos, atÃ© ficar bem dourada.',
    'Adicione os tomates picados, o extrato de tomate, pimenta-do-reino e pimenta calabresa. Cozinhe por 10 minutos atÃ© formar um molho espesso e saboroso. Acerte o sal.',
    'AqueÃ§a os pÃ£es levemente na chapa ou forno por 2 minutos.',
    'Monte o cachorro-quente: abra o pÃ£o, coloque carne moÃ­da com molho, adicione o repolho temperado por cima e o milho verde.',
    'Finalize com mostarda e ketchup. A versÃ£o maranhense se caracteriza pela carne moÃ­da bem temperada e o repolho fresco como elemento principal.'
  ),
  JSON_ARRAY('Festa Junina', 'Lanche')
),
(
  'Doce de EspÃ©cie',
  'Doce tÃ­pico de AlcÃ¢ntara (MA): cocada densa envolta em massa fina de trigo assada atÃ© dourar. Tradicional na Festa do Divino.',
  'ðŸ®', 'Sobremesa', 75, '75 min', 6, 'DifÃ­cil', 0, 1, 0,
  JSON_ARRAY(
    'Prepare a cocada: coloque coco ralado, aÃ§Ãºcar e Ã¡gua em panela. Leve ao fogo mÃ©dio, mexendo sem parar atÃ© a calda reduzir e ficar bem cremosa e espessa (cerca de 20 minutos). Despeje em assadeira levemente untada e deixe esfriar completamente.',
    'Prepare a massa: em tigela, misture a farinha de trigo com sal e Ã³leo atÃ© obter uma farofa. Acrescente Ã¡gua fria aos poucos, amassando atÃ© a massa ficar lisa e maleÃ¡vel. Descanse 15 minutos.',
    'Abra a massa em superfÃ­cie enfarinhada com rolo, bem fina (2 mm). Corte em cÃ­rculos de 8 a 10 cm de diÃ¢metro.',
    'Coloque uma colher bem cheia de cocada fria no centro de cada disco. Feche dobrando a massa ao meio ou puxando as bordas e pressionando para selar.',
    'Arrume os doces em assadeira untada. Leve ao forno prÃ©-aquecido a 180Â°C por 20 a 25 minutos atÃ© dourarem levemente.',
    'Deixe esfriar antes de servir. Tradicional na Festa do Divino de AlcÃ¢ntara.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Arroz Doce com Coco',
  'Arroz cozido no leite com canela e cravo, finalizado com leite de coco e coco ralado. Servido frio em tigelinhas com canela em pÃ³.',
  'ðŸš', 'Sobremesa', 45, '45 min', 6, 'FÃ¡cil', 0, 1, 0,
  JSON_ARRAY(
    'Em panela mÃ©dia, cozinhe o arroz em Ã¡gua com a canela em pau, os cravos e uma pitada de sal por 15 minutos atÃ© o arroz ficar bem macio e a Ã¡gua secar.',
    'Acrescente o leite integral quente ao arroz cozido, misturando bem. Cozinhe em fogo baixo, mexendo constantemente para nÃ£o grudar.',
    'Quando o leite reduzir pela metade, adicione o aÃ§Ãºcar e continue mexendo em fogo baixo.',
    'Quando a mistura ficar cremosa e o arroz bem absorver o leite, adicione o leite de coco e o coco ralado. Misture e cozinhe por mais 5 minutos.',
    'Retire o pau de canela e os cravos. A consistÃªncia deve ser cremosa â€” o arroz doce endurece ao esfriar.',
    'Distribua em tigelinhas ou taÃ§as. Polvilhe com canela em pÃ³. Sirva frio.'
  ),
  JSON_ARRAY('Natal', 'Festa')
),
(
  'Bolo de Arroz (Orelha de Macaco)',
  'Disco frito de arroz demolhado batido com ovo, aÃ§Ãºcar e cravo, frito no Ã³leo de babaÃ§u. Chamado "orelha de macaco" pelo formato irregular.',
  'ðŸ©', 'Sobremesa', 45, '45 min', 6, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Deixe o arroz de molho em Ã¡gua por no mÃ­nimo 10 horas. Escorra bem.',
    'Bata o arroz escorrido no liquidificador com o ovo, o aÃ§Ãºcar, os cravos amassados e o sal. Adicione Ã¡gua morna aos poucos apenas o suficiente para bater. A massa deve ficar espessa.',
    'Adicione a farinha de trigo com fermento Ã  massa e misture com colher atÃ© homogeneizar.',
    'Deixe a massa descansar por 15 minutos.',
    'AqueÃ§a o Ã³leo de babaÃ§u (ou Ã³leo vegetal) em frigideira funda. Coloque colheradas da massa e frite por 3 minutos de cada lado, atÃ© ficarem dourados e crocantes.',
    'Escorra em papel absorvente. Sirva quente. SÃ£o chamados "orelha de macaco" por ficarem achatados e irregulares, como pequenos discos dourados.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Bolo de Tapioca',
  'Bolo maranhense de tapioca granulada hidratada no leite de coco batido com coco fresco e erva-doce, assado no forno. Textura Ãºmida e elÃ¡stica.',
  'ðŸŽ‚', 'Sobremesa', 90, '1h30', 8, 'MÃ©dia', 0, 0, 0,
  JSON_ARRAY(
    'Corte o coco seco em pedaÃ§os e bata no liquidificador com o leite atÃ© obter leite de coco artesanal. Coe levemente.',
    'Em tigela grande, misture a tapioca granulada com o leite de coco batido. Deixe repousar por 1 hora, mexendo de vez em quando para a tapioca hidratar uniformemente.',
    'ApÃ³s 1 hora, adicione o leite de coco industrializado, manteiga, farinha de trigo e a erva-doce. Misture bem.',
    'Por Ãºltimo, adicione o fermento em pÃ³ e misture delicadamente.',
    'Unte uma forma com manteiga e farinha. Despeje a massa e leve ao forno prÃ©-aquecido a 180Â°C por 50 a 60 minutos, atÃ© dourar e o palito sair limpo.',
    'Deixe esfriar antes de desenformar. O bolo tem textura Ãºmida e levemente elÃ¡stica, caracterÃ­stica da tapioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Doce de Bacuri',
  'Polpa de bacuri â€” fruta nativa maranhense de sabor exÃ³tico â€” batida com leite condensado e creme de leite ou cozida com aÃ§Ãºcar atÃ© firmar.',
  'ðŸ¯', 'Sobremesa', 30, '30 min', 6, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'Extraia a polpa do bacuri (fruta com casca grossa e polpa esbranquiÃ§ada). Descarte a casca e as sementes.',
    'No liquidificador, bata a polpa com o leite condensado e o creme de leite por 2 minutos atÃ© ficar completamente homogÃªneo e cremoso.',
    'Prove o creme â€” se necessÃ¡rio, adicione aÃ§Ãºcar a gosto e bata novamente.',
    'Para versÃ£o firme (doce de tabuleiro): leve a polpa com o aÃ§Ãºcar ao fogo mÃ©dio numa panela, mexendo sempre atÃ© encorpar e soltar do fundo (25 a 30 minutos). Despeje em forma untada e corte quando frio.',
    'Para o creme gelado: distribua o creme batido em taÃ§as ou potes. Cubra e leve Ã  geladeira por mÃ­nimo 2 horas.',
    'Sirva gelado. O bacuri tem aroma exÃ³tico e sabor intensamente aromÃ¡tico, muito apreciado no MaranhÃ£o e ParÃ¡.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Buriti',
  'Polpa de buriti do cerrado maranhense cozida com aÃ§Ãºcar atÃ© firmar em pasta de cor laranja intensa e sabor adocicado caracterÃ­stico.',
  'ðŸ¯', 'Sobremesa', 60, '60 min', 6, 'MÃ©dia', 0, 0, 0,
  JSON_ARRAY(
    'Para extrair a polpa: cozinhe os frutos inteiros em Ã¡gua por 15 minutos atÃ© amolecerem. Esprema em peneira com as mÃ£os, separando a polpa laranja-avermelhada dos caroÃ§os e da casca.',
    'Coloque a polpa de buriti em panela de fundo grosso. Adicione o aÃ§Ãºcar e misture bem (nÃ£o adicione Ã¡gua â€” a polpa jÃ¡ tem umidade suficiente).',
    'Leve ao fogo mÃ©dio, mexendo constantemente com colher de pau para nÃ£o grudar no fundo. O doce comeÃ§a a desprender vapor e mudar de cor para um tom mais escuro.',
    'Continue mexendo sem parar por 30 a 40 minutos, atÃ© o doce engrossar e comeÃ§ar a soltar do fundo da panela. Teste: puxe a colher e o sulco deve permanecer visÃ­vel por alguns segundos.',
    'Despeje em tabuleiro ou forma levemente untados. Espalhe uniformemente e deixe esfriar completamente em temperatura ambiente.',
    'Corte em pedaÃ§os quando estiver frio e firme. O doce de buriti tem cor laranja intensa e sabor levemente oleoso, tÃ­pico do cerrado maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Mingau de Milho',
  'Milho verde debulhado batido com leite no liquidificador, coado e cozido com aÃ§Ãºcar e canela atÃ© engrossar. Servido quente com canela em pÃ³.',
  'ðŸŒ½', 'Sobremesa', 35, '35 min', 6, 'MÃ©dia', 1, 1, 0,
  JSON_ARRAY(
    'Debulhe o milho das espigas. No liquidificador, bata o milho verde com o leite integral atÃ© ficar completamente triturado.',
    'Coe a mistura em peneira fina ou pano limpo, espremendo bem para extrair todo o lÃ­quido leitoso. Descarte o bagaÃ§o sÃ³lido.',
    'Coloque o lÃ­quido coado em panela com o aÃ§Ãºcar, uma pitada de sal e o pau de canela. Misture bem.',
    'Leve ao fogo mÃ©dio, mexendo constantemente com colher de pau para nÃ£o empelotar nem grudar. O mingau vai engrossando gradualmente.',
    'Continue mexendo por 20 a 25 minutos, atÃ© o mingau ficar espesso e encorpado. Retire o pau de canela.',
    'Sirva quente em tigelas, polvilhado com canela em pÃ³.'
  ),
  JSON_ARRAY('Festa Junina', 'Festa')
),
(
  'Mingau de Tapioca',
  'Tapioca granulada cozida no leite com leite condensado e manteiga atÃ© ficar totalmente transparente e cremosa. Tradicional nas festas juninas.',
  'ðŸ¥›', 'Sobremesa', 30, '30 min', 6, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Em panela mÃ©dia, coloque a tapioca granulada e despeje o leite integral frio. Misture bem e deixe descansar por 5 minutos para a tapioca comeÃ§ar a hidratar.',
    'Leve a panela ao fogo mÃ©dio, mexendo constantemente com colher de pau para evitar que a tapioca grude no fundo.',
    'Continue mexendo por 15 a 20 minutos atÃ© a tapioca ficar completamente transparente e o mingau engrossar consideravelmente.',
    'Acrescente o leite condensado e a manteiga. Misture bem e continue cozinhando por mais 5 minutos atÃ© ficar cremoso.',
    'Se desejar, adicione o coco ralado e misture. Acerte a doÃ§ura.',
    'Sirva em tigelas, quente ou morno, polvilhado com canela em pÃ³.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Queijadinha',
  'Bolinho assado de queijo coalho, coco ralado, farinha de trigo e ovos. Textura levemente Ãºmida por dentro e dourada por fora.',
  'ðŸ§€', 'Sobremesa', 40, '40 min', 12, 'FÃ¡cil', 0, 0, 0,
  JSON_ARRAY(
    'PrÃ©-aqueÃ§a o forno a 180Â°C. Unte e enfarinhe forminhas pequenas para empada ou cupcake.',
    'No liquidificador, bata os ovos com o aÃ§Ãºcar e a manteiga por 2 minutos atÃ© formar um creme claro.',
    'Adicione o leite e continue batendo. Acrescente a farinha de trigo aos poucos e bata atÃ© homogeneizar. Por Ãºltimo, adicione o fermento e bata por mais 30 segundos.',
    'Retire do liquidificador e misture manualmente o queijo coalho ralado e o coco ralado, para preservar a textura.',
    'Distribua a massa nas forminhas, enchendo atÃ© trÃªs quartos da capacidade. Leve ao forno prÃ©-aquecido por 25 a 30 minutos atÃ© dourarem.',
    'Deixe esfriar 10 minutos antes de desenformar. As queijadinhas devem ter textura levemente Ãºmida por dentro e dourada por fora.'
  ),
  JSON_ARRAY('Cotidiano', 'Lanche')
),
(
  'Sorvete de CupuaÃ§u',
  'Polpa de cupuaÃ§u batida com leite condensado e creme de leite, batida duas vezes para quebrar os cristais e ficar cremosa.',
  'ðŸ¦', 'Sobremesa', 30, '30 min', 6, 'FÃ¡cil', 1, 0, 0,
  JSON_ARRAY(
    'Deixe a polpa de cupuaÃ§u descongelar parcialmente â€” nÃ£o completamente, assim o sorvete fica mais cremoso.',
    'No liquidificador, bata a polpa com o leite condensado, creme de leite e leite integral por 3 minutos atÃ© ficar completamente homogÃªneo. Prove e adicione aÃ§Ãºcar se necessÃ¡rio.',
    'Despeje a mistura em recipiente com tampa e leve ao freezer por 3 horas atÃ© ficar semissÃ³lido.',
    'Retire do freezer, bata novamente na batedeira ou liquidificador por 5 minutos para quebrar os cristais de gelo e deixar cremoso.',
    'Volte ao recipiente com tampa e leve ao freezer por mais 3 a 4 horas atÃ© endurecer completamente.',
    'Retire do freezer 10 minutos antes de servir para amolecer levemente. Sirva em casquinhas ou tigelas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Compota de Caju',
  'Cajus inteiros cozidos na pressÃ£o com aÃ§Ãºcar, cravo e canela, reposados por 12 horas para absorver a calda e atingir a textura correta.',
  'ðŸ‘', 'Sobremesa', 90, '1h30', 6, 'MÃ©dia', 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os cajus. Retire as castanhas e reserve. Retire o pedÃºnculo com uma faca pequena. Fure a casca dos cajus com palito em vÃ¡rios pontos para o aÃ§Ãºcar penetrar.',
    'Esprema os cajus levemente com as mÃ£os para retirar parte do suco amargo caracterÃ­stico. Reserve o suco.',
    'Em panela de pressÃ£o, coloque os cajus espremidos, o suco reservado, a maior parte do aÃ§Ãºcar, os cravos e a canela em rama. Cozinhe na pressÃ£o por 30 minutos.',
    'Desligue e aguarde a pressÃ£o sair naturalmente. Abra a panela, adicione o restante do aÃ§Ãºcar e leve ao fogo novamente por mais 25 minutos na pressÃ£o.',
    'Desligue o fogo e â€” muito importante â€” sÃ³ abra a panela apÃ³s 12 horas. Esse repouso Ã© fundamental para o caju absorver a calda e atingir a textura correta de compota.',
    'Retire os cajus com delicadeza e sirva com a calda. Guarde em vidros esterilizados com tampa na geladeira.'
  ),
  JSON_ARRAY('Natal', 'Festa')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','CamarÃ£o seco','Gergelim branco','Cebola','Tomate','PimentÃ£o','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 1, id, 1 FROM ingredientes WHERE nome IN ('CuxÃ¡','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Mandioca','Cebola','Alho','Coentro','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 2, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 0 FROM ingredientes WHERE nome IN ('CamarÃ£o seco','Batata','Extrato de tomate','Cebola','Alho','Ovo','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 3, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Carne de sol','Cebola','Alho','Colorau','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 4, id, 1 FROM ingredientes WHERE nome IN ('Pimenta dedo-de-moÃ§a','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','CamarÃ£o fresco','Cebola','Alho','Tomate','Pimenta-de-cheiro','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 5, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 6, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','AÃ§Ãºcar','Canela','Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Queijo coalho','Carne de sol','Manteiga de garrafa');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 7, id, 1 FROM ingredientes WHERE nome IN ('Coentro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 0 FROM ingredientes WHERE nome IN ('Carne seca','Farinha de mandioca','Cebola','Alho','Manteiga','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 8, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Batata','Ovos cozidos','Cebola','Tomate','Pimenta-de-cheiro','Alho','Cebolinha','Coentro','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 9, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 0 FROM ingredientes WHERE nome IN ('CamarÃ£o fresco','Leite de coco','Creme de leite','Extrato de tomate','Cebola','Alho','Tomate','Coentro','Manteiga de garrafa','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 10, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Ovo','Amido de milho','Tomate','Pimenta-de-cheiro','Cebola','Alho','Coentro','Manteiga');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 11, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Lula','CamarÃ£o fresco','Sururu','Cebola','Alho','Tomate','PimentÃ£o','Leite de coco','Pimenta-de-cheiro','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 12, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Leite de coco','Colorau','Cebola','Tomate','PimentÃ£o','Pimenta-de-cheiro','Cebolinha','Coentro','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 13, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Leite de coco','Extrato de tomate','Alho','Cebola','Tomate','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 14, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Leite de coco','Tomate','Cebola','Alho','PimentÃ£o','Coentro','Cebolinha','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 15, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 0 FROM ingredientes WHERE nome IN ('Carne de sol','Banana','Queijo coalho','Cebola','Manteiga de garrafa','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 16, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 0 FROM ingredientes WHERE nome IN ('Carne bovina','Mandioca','Inhame','AbÃ³bora','Maxixe','Quiabo','Batata-doce','Cenoura','Chuchu','Repolho','Couve','Cebola','Alho','Colorau','Folha de louro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 17, id, 1 FROM ingredientes WHERE nome IN ('Arroz','Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 0 FROM ingredientes WHERE nome IN ('MiÃºdos de porco','Sangue coalhado','Toucinho','FÃ­gado de porco','CoraÃ§Ã£o de porco','PulmÃ£o de porco','Cebola','Alho','Tomate','Colorau','Coentro','Vinagre');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 18, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 0 FROM ingredientes WHERE nome IN ('MiÃºdos de porco','Cominho','Colorau','Alho','Cebola','PimentÃ£o','Coentro','Vinagre','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 19, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 0 FROM ingredientes WHERE nome IN ('Arroz','FeijÃ£o-de-corda','Bacon','LinguiÃ§a calabresa','Alho','Cebola','Leite de coco','Queijo coalho','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 20, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Toucinho','Alho','Cebola','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 21, id, 1 FROM ingredientes WHERE nome IN ('Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 0 FROM ingredientes WHERE nome IN ('Pata de boi','Alho','Cebola','Tomate','Colorau','Cravo','Vinagre','LimÃ£o','Salsinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 22, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 0 FROM ingredientes WHERE nome IN ('Rabo de boi','AgriÃ£o','Cebola','Alho','Tomate','PimentÃ£o','Folha de louro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 23, id, 1 FROM ingredientes WHERE nome IN ('Vinho tinto','Pimenta do reino','Batata');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 0 FROM ingredientes WHERE nome IN ('FeijÃ£o verde fresco','Nata','Cebola','Alho','Manteiga','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 24, id, 1 FROM ingredientes WHERE nome IN ('Leite de coco','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 0 FROM ingredientes WHERE nome IN ('CamarÃ£o seco','CamarÃ£o fresco','PÃ£o','Leite de coco','Amendoim','Castanha de caju','Cebola','Tomate','Pimenta-de-cheiro','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 25, id, 1 FROM ingredientes WHERE nome IN ('Alho','Sal');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 0 FROM ingredientes WHERE nome IN ('Marisco sarnambi','Leite de coco','Colorau','Alho','Cebola','PimentÃ£o','Tomate','Pimenta-de-cheiro','Coentro','Cebolinha');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 26, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Ã“leo de babaÃ§u','Alho','LimÃ£o','Colorau','Pimenta do reino');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 27, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 0 FROM ingredientes WHERE nome IN ('Carne moÃ­da','Ovo','Cebola','Alho','Tomate','PimentÃ£o','Colorau','Cebolinha','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 28, id, 1 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 29, id, 1 FROM ingredientes WHERE nome IN ('AÃ§Ãºcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Farinha de trigo','Ovo','Farinha de rosca','Alho','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 30, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 0 FROM ingredientes WHERE nome IN ('Carne de caranguejo','Leite de coco','Cebola','Alho','PimentÃ£o','Tomate','Coentro','Cebolinha','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 31, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 0 FROM ingredientes WHERE nome IN ('Tripa de porco','Vinagre','Farinha de milho','Alho','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 32, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Farinha de mandioca');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 0 FROM ingredientes WHERE nome IN ('Salsicha','Carne moÃ­da','Cebola','Alho','Tomate','Extrato de tomate','Repolho','PÃ£o','Milho verde');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 33, id, 1 FROM ingredientes WHERE nome IN ('Pimenta calabresa','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','AÃ§Ãºcar','Farinha de trigo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 34, id, 1 FROM ingredientes WHERE nome IN ('Cravo','Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 35, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite','Leite de coco','AÃ§Ãºcar','Canela','Coco ralado','Cravo');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 36, id, 0 FROM ingredientes WHERE nome IN ('Arroz demolhado','Ovo','AÃ§Ãºcar','Cravo','Farinha de trigo','Ã“leo de babaÃ§u');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Leite','Coco ralado','Manteiga','Farinha de trigo','Erva-doce');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 37, id, 1 FROM ingredientes WHERE nome IN ('AÃ§Ãºcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','Leite condensado','Creme de leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 38, id, 1 FROM ingredientes WHERE nome IN ('AÃ§Ãºcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 39, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','AÃ§Ãºcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 40, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite','AÃ§Ãºcar','Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite','Leite condensado','Manteiga de garrafa','Canela');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 41, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 42, id, 0 FROM ingredientes WHERE nome IN ('Queijo coalho','Coco ralado','AÃ§Ãºcar','Ovo','Leite','Farinha de trigo','Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaÃ§u','Leite condensado','Creme de leite','Leite');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 43, id, 1 FROM ingredientes WHERE nome IN ('AÃ§Ãºcar');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 44, id, 0 FROM ingredientes WHERE nome IN ('Caju','AÃ§Ãºcar','Cravo','Canela');

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
  ('Palmito'), ('Alecrim'), ('Tomilho'), ('Fermento em pÃ³'),
  ('AÃ§Ãºcar demerara');

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, vegano, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Arroz de CuxÃ¡ Vegano',
  'VersÃ£o 100% vegana do prato sÃ­mbolo do MaranhÃ£o: arroz cozido com folhas de vinagreira, gergelim torrado e temperos regionais, sem camarÃ£o.',
  'ðŸŒ¿', 'Prato Principal', 40, '40 min', 4, 'MÃ©dia', 0, 0, 1, 1,
  JSON_ARRAY(
    'Lave bem as folhas de vinagreira e retire os talos mais grossos. Reserve. Toste o gergelim branco em frigideira seca em fogo baixo por 2 minutos, mexendo sempre, atÃ© dourar levemente. Reserve.',
    'Em uma panela mÃ©dia, aqueÃ§a 2 colheres de sopa de Ã³leo de babaÃ§u em fogo mÃ©dio. Refogue 1 cebola picada e 3 dentes de alho amassados atÃ© ficarem dourados e macios.',
    'Adicione 1 tomate picado e 1/2 pimentÃ£o verde picado. Cozinhe por 3 minutos, mexendo, atÃ© formar um refogado aromÃ¡tico.',
    'Acrescente as folhas de vinagreira picadas grosseiramente e metade do gergelim. Refogue por 5 minutos em fogo mÃ©dio-baixo atÃ© as folhas murcharem e escurecerem, soltando sabor Ã¡cido caracterÃ­stico.',
    'Adicione 2 xÃ­caras de arroz jÃ¡ lavado e refogue por 1 minuto. Despeje 4 xÃ­caras de Ã¡gua fervente, tempere com sal e cozinhe tampado em fogo baixo por 18 a 20 minutos.',
    'Desligue o fogo e deixe descansar tampado por 5 minutos. Sirva polvilhado com o restante do gergelim torrado e, se desejar, farinha de mandioca por cima.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'BaiÃ£o de Dois Vegano',
  'ClÃ¡ssico nordestino reinventado: feijÃ£o-de-corda e arroz cozidos juntos com abÃ³bora, pimentÃ£o e temperos do MaranhÃ£o, sem carne nem laticÃ­nios.',
  'ðŸ«˜', 'Prato Principal', 50, '50 min', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xÃ­caras de feijÃ£o-de-corda de molho por 4 horas. Escorra e cozinhe na panela de pressÃ£o com Ã¡gua e sal por 15 minutos. O feijÃ£o deve ficar macio mas inteiro. Reserve com o caldo.',
    'Em uma panela grande, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u em fogo mÃ©dio. Refogue 1 cebola grande picada e 4 dentes de alho amassados atÃ© dourarem.',
    'Adicione 1/2 pimentÃ£o vermelho e 1/2 pimentÃ£o verde picados e 2 tomates picados. Refogue por 3 minutos. Adicione 300 g de abÃ³bora cortada em cubos de 2 cm e cozinhe por 5 minutos.',
    'Acrescente 2 xÃ­caras de arroz lavado e misture bem com o refogado por 1 minuto. Adicione o feijÃ£o cozido junto com seu caldo, completando com Ã¡gua se necessÃ¡rio para dar 4 xÃ­caras de lÃ­quido total.',
    'Tempere com sal e pimenta-de-cheiro picada. Tampe a panela e cozinhe em fogo mÃ©dio-baixo por 20 minutos, atÃ© o arroz absorver o lÃ­quido.',
    'Desligue o fogo e deixe repousar tampado por 5 minutos. Abra e finalize com coentro fresco picado. Sirva quente.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Arroz de Batipuru Vegano',
  'VersÃ£o vegana do tradicional arroz maranhense com vinagreira, quiabo e maxixe refogados, substituindo o camarÃ£o seco por legumes da regiÃ£o.',
  'ðŸŒ±', 'Prato Principal', 45, '45 min', 4, 'MÃ©dia', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave 1 maÃ§o de vinagreira e corte em tiras. Corte 200 g de quiabo em rodelas de 1 cm e 150 g de maxixe ao meio. Lave quiabo e maxixe com Ã¡gua e vinagre para reduzir a baba.',
    'Em uma panela, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u. Refogue 1 cebola picada e 3 dentes de alho atÃ© dourar. Adicione 1/2 pimentÃ£o verde e 2 tomates picados, refogando por 3 minutos.',
    'Acrescente o quiabo e o maxixe. Refogue em fogo mÃ©dio por 5 minutos, mexendo levemente para nÃ£o desmanchar os legumes.',
    'Junte a vinagreira picada e refogue por mais 3 minutos. Os legumes vÃ£o absorver o sabor Ã¡cido da vinagreira, criando um caldo aromÃ¡tico caracterÃ­stico.',
    'Adicione 2 xÃ­caras de arroz lavado, misture delicadamente e cubra com 4 xÃ­caras de Ã¡gua fervente. Tempere com sal. Cozinhe tampado em fogo baixo por 20 minutos.',
    'Desligue e deixe descansar por 5 minutos antes de abrir. Finalize com coentro fresco e sirva com farinha de mandioca Ã  parte.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Arroz Maria Isabel Vegano',
  'Releitura vegana do clÃ¡ssico maranhense: arroz temperado com cogumelo seco defumado no lugar da carne de sol, com cebola e coentro.',
  'ðŸ„', 'Prato Principal', 50, '50 min', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Hidrate 150 g de cogumelo seco em 2 xÃ­caras de Ã¡gua morna por 20 minutos. Escorra, esprema levemente e pique em cubinhos. Reserve a Ã¡gua de hidrataÃ§Ã£o coada.',
    'Misture os cogumelos com 2 colheres de sopa de shoyu e 1/2 colher de chÃ¡ de cominho. Marine por 10 minutos.',
    'Em uma panela grande, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u em fogo alto. Adicione os cogumelos marinados e refogue por 5 minutos atÃ© ficarem dourados.',
    'Adicione 1 cebola grande e 4 dentes de alho picados. Refogue por 2 minutos. Acrescente 1 pimentÃ£o vermelho e 2 tomates picados e cozinhe por 3 minutos.',
    'Junte 3 xÃ­caras de arroz lavado e misture bem. Adicione a Ã¡gua reservada dos cogumelos mais Ã¡gua quente atÃ© completar 6 xÃ­caras de lÃ­quido. Tempere com sal.',
    'Cozinhe em fogo mÃ©dio com tampa entreaberta por 20 minutos. Desligue, tampe e deixe descansar por 5 minutos. Abra e finalize com coentro fresco picado.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Moqueca da Horta',
  'Moqueca vegana com legumes coloridos cozidos no leite de coco e azeite de dendÃª. Toda a riqueza da moqueca maranhense sem peixe nem frutos do mar.',
  'ðŸ¥¦', 'Prato Principal', 45, '45 min', 5, 'MÃ©dia', 0, 0, 1, 1,
  JSON_ARRAY(
    'Corte 300 g de abÃ³bora e 300 g de batata-doce em cubos de 3 cm. Corte 2 pimentÃµes em tiras largas. Fatie 2 cebolas em meia-lua. Corte 3 tomates ao meio. Reserve.',
    'Em uma panela de barro ou panela funda, aqueÃ§a 3 colheres de sopa de azeite de dendÃª em fogo mÃ©dio. Refogue a cebola em meia-lua e 4 dentes de alho fatiados por 3 minutos.',
    'Adicione os tomates e os pimentÃµes. Cozinhe por 5 minutos atÃ© comeÃ§arem a amolecer e soltar sucos aromÃ¡ticos.',
    'Acrescente a abÃ³bora e a batata-doce. Misture delicadamente para nÃ£o desmanchar. Tempere com sal e pimenta-de-cheiro.',
    'Despeje 400 ml de leite de coco e misture. Tampe a panela e cozinhe em fogo baixo por 20 a 25 minutos, atÃ© os legumes ficarem macios mas Ã­ntegros.',
    'Abra e ajuste o sal. Finalize com coentro fresco picado e cebolinha. Sirva com arroz branco e farofa de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'AlmoÃ§o de domingo')
),
(
  'VatapÃ¡ Vegano de AbÃ³bora',
  'VatapÃ¡ cremoso feito com purÃª de abÃ³bora, leite de coco, amendoim e castanha de caju. Sabor profundo e cor dourada incrÃ­vel, sem camarÃ£o.',
  'ðŸŽƒ', 'Prato Principal', 55, '55 min', 6, 'MÃ©dia', 0, 1, 1, 0,
  JSON_ARRAY(
    'Corte 800 g de abÃ³bora em cubos, tempere com sal e asse no forno a 200Â°C por 25 minutos ou cozinhe no vapor atÃ© ficar macia. FaÃ§a um purÃª e reserve.',
    'Hidrate 2 fatias de pÃ£o amanhecido sem casca em 1/2 xÃ­cara de leite de coco. Triture 1/2 xÃ­cara de amendoim torrado sem casca e 1/2 xÃ­cara de castanha de caju crua no processador atÃ© virar pasta.',
    'Em uma panela grande, aqueÃ§a 2 colheres de sopa de azeite de dendÃª. Refogue 1 cebola picada, 4 dentes de alho e 1 colher de chÃ¡ de gengibre ralado por 3 minutos.',
    'Adicione 1/2 pimentÃ£o vermelho picado e refogue por 2 minutos. Acrescente o purÃª de abÃ³bora, a pasta de castanhas e o pÃ£o hidratado. Misture tudo muito bem.',
    'Despeje 400 ml de leite de coco e cozinhe em fogo mÃ©dio-baixo por 15 minutos, mexendo sempre atÃ© engrossar e ficar com textura cremosa. Ajuste o sal.',
    'Finalize com coentro picado e sirva sobre arroz branco. O vatapÃ¡ deve ter consistÃªncia pastosa e cor dourada intensa.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'AlmoÃ§o de domingo')
),
(
  'Caruru Vegano de Quiabo',
  'Caruru preparado com quiabo, leite de coco e amendoim torrado. Releitura vegana do clÃ¡ssico afro-brasileiro com toques maranhenses.',
  'ðŸŒ¿', 'Prato Principal', 40, '40 min', 5, 'MÃ©dia', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave 500 g de quiabo, seque bem e corte em rodelas de 1 cm. Deixe descansar por 10 minutos em uma peneira (reduz a baba). Triture 1/2 xÃ­cara de amendoim e 1/2 xÃ­cara de castanha de caju com 150 ml de leite de coco atÃ© virar pasta.',
    'Em uma panela, aqueÃ§a 3 colheres de sopa de azeite de dendÃª em fogo mÃ©dio. Refogue 3 dentes de alho picados, 1 cebola pequena e 1 colher de chÃ¡ de gengibre ralado por 3 minutos.',
    'Adicione o quiabo ao refogado e mexa em fogo mÃ©dio-baixo por 10 minutos, atÃ© ficar macio e a baba incorporar ao molho.',
    'Despeje a pasta de amendoim com leite de coco sobre o quiabo. Misture bem. Adicione mais 200 ml de leite de coco.',
    'Cozinhe em fogo baixo por mais 10 minutos, mexendo delicadamente atÃ© o molho engrossar e envolver o quiabo. Adicione pimenta dedo-de-moÃ§a picada e ajuste o sal.',
    'Finalize com suco de 1/2 limÃ£o e coentro picado. Sirva quente acompanhado de arroz branco e farofa de babaÃ§u.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'FeijÃ£o Maranhense com Maxixe, AbÃ³bora e Quiabo',
  'FeijÃ£o de caldo grosso com os legumes tÃ­picos do MaranhÃ£o: maxixe, abÃ³bora e quiabo, temperado com coentro e alho frito.',
  'ðŸ«˜', 'Prato Principal', 60, '60 min', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xÃ­caras de feijÃ£o mulatinho de molho por 2 horas. Escorra e cozinhe na panela de pressÃ£o com 1,5 litro de Ã¡gua e sal por 20 minutos. Reserve com o caldo.',
    'Corte 200 g de abÃ³bora em cubos de 2 cm, 150 g de maxixe ao meio e 150 g de quiabo em rodelas. Lave o quiabo com vinagre para reduzir a baba.',
    'Em uma panela grande, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u. Refogue 1 cebola picada e 4 dentes de alho amassados atÃ© dourarem bem.',
    'Adicione 2 tomates picados e pimenta-de-cheiro. Refogue por 3 minutos. Acrescente a abÃ³bora e o maxixe, cozinhando por 5 minutos.',
    'Transfira o feijÃ£o com seu caldo para a panela. Adicione o quiabo. Cozinhe em fogo mÃ©dio por 20 minutos atÃ© os legumes ficarem macios e o caldo engrossar naturalmente.',
    'Ajuste o sal e finalize com coentro e cebolinha picados. Sirva com arroz branco e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'FeijÃ£o-de-Corda Refogado com Cheiro-Verde',
  'FeijÃ£o-de-corda cozido no ponto e refogado com alho, cebola e muito cheiro-verde. Simples, nutritivo e cheio de sabor maranhense.',
  'ðŸŒ¿', 'Acompanhamento', 35, '35 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe 2 xÃ­caras de feijÃ£o-de-corda de molho por 4 horas. Cozinhe na panela de pressÃ£o com Ã¡gua e sal por 10 a 12 minutos. O grÃ£o deve ficar macio mas inteiro. Escorra e reserve.',
    'Em uma frigideira grande, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u em fogo mÃ©dio. Refogue 1 cebola mÃ©dia picada e 4 dentes de alho amassados atÃ© ficarem dourados.',
    'Adicione 1/2 pimentÃ£o vermelho picado e 2 tomates picados. Refogue por 3 minutos atÃ© formar um molho de base aromÃ¡tico.',
    'Acrescente o feijÃ£o-de-corda cozido e misture delicadamente com os temperos. Adicione pimenta-de-cheiro picada a gosto.',
    'Cozinhe em fogo mÃ©dio por 5 minutos, mexendo levemente para o feijÃ£o absorver os sabores sem desmanchar. Ajuste o sal.',
    'Desligue o fogo e finalize com coentro e cebolinha verde picados generosamente. Sirva como acompanhamento de arroz ou tapioca.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'CuxÃ¡ Refogado com Gergelim',
  'O molho cuxÃ¡ na sua versÃ£o mais pura: folhas de vinagreira refogadas com gergelim torrado, alho e Ã³leo de babaÃ§u. Acompanhamento essencial maranhense.',
  'ðŸŒ¿', 'Acompanhamento', 20, '20 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem 1 maÃ§o grande de vinagreira (cerca de 300 g). Retire os talos mais grossos e pique as folhas grosseiramente. A vinagreira vai murchar bastante no cozimento, entÃ£o use sempre um maÃ§o generoso.',
    'Toste 4 colheres de sopa de gergelim branco em frigideira seca em fogo baixo por 2 a 3 minutos, mexendo sempre atÃ© dourar. Desligue e reserve.',
    'Na mesma frigideira, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u. Refogue 3 dentes de alho picados e 1 cebola pequena por 2 minutos atÃ© ficarem transparentes.',
    'Adicione 1 tomate picado e 1/2 pimentÃ£o verde picado. Refogue por 2 minutos. Acrescente a vinagreira picada e mexa bem.',
    'Cozinhe em fogo mÃ©dio por 8 a 10 minutos, mexendo sempre, atÃ© as folhas murcharem completamente e o molho escurecer e ficar cremoso.',
    'Adicione o gergelim torrado, ajuste o sal e finalize com pimenta do reino. Sirva quente sobre arroz branco ou acompanhando tapioca.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Farofa de Mandioca no Azeite de BabaÃ§u',
  'Farofa dourada e crocante de farinha de mandioca preparada no Ã³leo de babaÃ§u com alho, cebola e ervas. Acompanhamento clÃ¡ssico maranhense vegano.',
  'ðŸ¥„', 'Acompanhamento', 20, '20 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Separe 2 xÃ­caras de farinha de mandioca torrada (a torrada resulta em farofa mais crocante). Pique 1 cebola mÃ©dia, 3 dentes de alho e 1 tomate em cubos pequenos. Reserve.',
    'Em uma frigideira grande, aqueÃ§a 4 colheres de sopa de Ã³leo de babaÃ§u em fogo mÃ©dio. Refogue o alho por 1 minuto atÃ© dourar levemente.',
    'Adicione a cebola e refogue por 2 minutos. Acrescente o tomate e cozinhe por mais 2 minutos, atÃ© amolecer e incorporar ao refogado.',
    'Abaixe o fogo e adicione a farinha de mandioca aos poucos, mexendo constantemente com uma espÃ¡tula para distribuir o tempero de forma homogÃªnea.',
    'Toste a farofa em fogo mÃ©dio-baixo por 4 a 5 minutos, mexendo sempre, atÃ© ficar dourada e crocante. Ajuste o sal e adicione pimenta do reino.',
    'Desligue o fogo e finalize com coentro e cebolinha picados. Acrescente castanha de caju torrada picada se desejar mais crocÃ¢ncia. Sirva imediatamente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'PurÃª de Macaxeira com Azeite de BabaÃ§u',
  'PurÃª cremoso de macaxeira preparado com Ã³leo de babaÃ§u, alho e leite de coco. Acompanhamento suave e saboroso da culinÃ¡ria maranhense.',
  'ðŸ ', 'Acompanhamento', 35, '35 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Descasque e corte 800 g de mandioca em pedaÃ§os mÃ©dios. Retire o fio central. Lave bem e cozinhe em panela com Ã¡gua fria e sal por 25 a 30 minutos, atÃ© ficar bem macia.',
    'Escorra a mandioca e descarte a Ã¡gua. Enquanto ainda estiver quente, amasse com um garfo ou passe pelo espremedor de batatas atÃ© obter massa homogÃªnea sem grumos.',
    'Em uma panela pequena, aqueÃ§a 3 colheres de sopa de Ã³leo de babaÃ§u em fogo baixo. Refogue 3 dentes de alho picados atÃ© ficarem dourados e aromÃ¡ticos. Reserve.',
    'Adicione o Ã³leo de babaÃ§u com alho Ã  mandioca amassada. Misture bem e vÃ¡ incorporando 200 ml de leite de coco aos poucos, mexendo atÃ© atingir consistÃªncia cremosa e aveludada.',
    'Tempere com sal e pimenta do reino. Mexa em fogo baixo por 2 minutos atÃ© aquecer e incorporar todos os sabores.',
    'Sirva imediatamente polvilhado com coentro fresco picado e algumas gotas de limÃ£o. Acompanha feijÃ£o, moqueca de legumes ou grelhados.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Beiju de Coco',
  'Beiju tradicional maranhense feito na frigideira com tapioca granulada e coco ralado hidratado no leite de coco. Lanche rÃºstico e naturalmente vegano.',
  'ðŸ¥¥', 'Entrada', 25, '25 min', 4, 'FÃ¡cil', 1, 0, 1, 1,
  JSON_ARRAY(
    'Em uma tigela, misture 2 xÃ­caras de tapioca granulada com 1 pitada de sal e 2 colheres de sopa de aÃ§Ãºcar. Misture bem.',
    'AqueÃ§a 300 ml de leite de coco de babaÃ§u sem ferver (bem quente, mas sem borbulhar). Despeje sobre a tapioca granulada e misture com colher. Deixe descansar por 5 minutos para hidratar.',
    'Acrescente 1 xÃ­cara de coco ralado sem aÃ§Ãºcar Ã  mistura e incorpore bem.',
    'AqueÃ§a uma frigideira antiaderente em fogo mÃ©dio. NÃ£o adicione Ã³leo. Espalhe uma camada de 1 cm da mistura de tapioca na frigideira, formando um disco.',
    'Deixe cozinhar por 3 a 4 minutos atÃ© as bordas soltarem e a base ficar firme e levemente dourada. Com cuidado, vire o beiju e cozinhe o outro lado por mais 2 a 3 minutos.',
    'Retire e sirva quente. Pode ser saboreado puro ou acompanhado de doce de buriti, geleia regional ou polvilhado com canela em pÃ³.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Cuscuz Maranhense de Milho',
  'Cuscuz de farinha de milho preparado na cuscuzeira, Ãºmido e soltinho. Um dos lanches mais tradicionais do MaranhÃ£o, naturalmente vegano.',
  'ðŸŒ½', 'Entrada', 25, '25 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Em uma tigela, coloque 2 xÃ­caras de farinha de milho fina. Adicione 1 pitada de sal e misture.',
    'Regue a farinha com leite de coco (ou Ã¡gua) aos poucos, amassando com os dedos atÃ© obter textura Ãºmida parecida com areia molhada. A farinha deve se aglomerar quando pressionada, mas nÃ£o virar massa.',
    'Unte a cuscuzeira com um fio de Ã³leo de coco. Coloque a mistura de farinha de milho dentro, nivelando levemente. Tampe e cozinhe no vapor por 10 a 12 minutos.',
    'Se nÃ£o tiver cuscuzeira, use panela com cestinha de vapor: coloque a farinha hidratada em um pano limpo sobre a cestinha e cozinhe no vapor por 12 minutos.',
    'Retire da cuscuzeira e desenforme em um prato. O cuscuz deve estar firme por fora e Ãºmido por dentro.',
    'Sirva quente polvilhado com coco ralado e aÃ§Ãºcar, ou com uma colher de doce regional (buriti, bacuri). TambÃ©m pode ser servido com leite de coco por cima.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Pastel de Forno Vegano',
  'Pastel assado com massa leve de Ã³leo de babaÃ§u e recheio vegano de palmito, tomate e temperos maranhenses. Lanche saboroso e prÃ¡tico.',
  'ðŸ¥Ÿ', 'Entrada', 50, '50 min', 20, 'MÃ©dia', 0, 1, 1, 0,
  JSON_ARRAY(
    'Prepare a massa: misture 3 xÃ­caras de farinha de trigo, 1 colher de chÃ¡ de sal e 1 colher de chÃ¡ de aÃ§Ãºcar. Adicione 1/2 xÃ­cara de Ã³leo de babaÃ§u e 1/2 xÃ­cara de Ã¡gua morna aos poucos, sovando atÃ© obter massa lisa e nÃ£o pegajosa. Descanse por 15 minutos coberta.',
    'Prepare o recheio: aqueÃ§a 2 colheres de sopa de Ã³leo em uma frigideira. Refogue 1 cebola e 3 dentes de alho picados. Adicione 2 tomates, 1/2 pimentÃ£o e 1 vidro de palmito (200 g) picado. Cozinhe por 5 minutos.',
    'Tempere o recheio com sal e coentro picado. Deixe esfriar completamente antes de usar.',
    'Abra a massa com rolo sobre superfÃ­cie enfarinhada atÃ© 2 mm de espessura. Corte cÃ­rculos com copo ou cortador de 10 cm de diÃ¢metro.',
    'Coloque 1 colher de chÃ¡ do recheio no centro de cada cÃ­rculo. Dobre ao meio e feche as bordas pressionando com um garfo. Disponha em forma untada.',
    'Polvilhe gergelim branco por cima. Asse em forno preaquecido a 200Â°C por 20 a 25 minutos atÃ© dourar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'Bolo de Macaxeira Vegano',
  'Bolo Ãºmido e cremoso de macaxeira com leite de coco e coco ralado. Sobremesa vegana autÃªntica do MaranhÃ£o, sem ovos nem laticÃ­nios.',
  'ðŸŽ‚', 'Sobremesa', 60, '60 min', 10, 'FÃ¡cil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Descasque e rale 500 g de mandioca crua no ralo fino. Esprema levemente em um pano para retirar o excesso de umidade. Reserve.',
    'No liquidificador, bata 400 ml de leite de coco, 1 xÃ­cara de aÃ§Ãºcar, 1/4 de xÃ­cara de Ã³leo de babaÃ§u e 1 colher de chÃ¡ de baunilha atÃ© ficar homogÃªneo.',
    'Em uma tigela grande, misture a mandioca ralada, a mistura batida do liquidificador e 1 xÃ­cara de coco ralado sem aÃ§Ãºcar. Misture bem com uma colher.',
    'Adicione 1/2 xÃ­cara de farinha de trigo e 1 colher de sopa de fermento em pÃ³. Misture delicadamente, apenas atÃ© incorporar.',
    'Despeje a massa em forma untada com Ã³leo e enfarinhada. Polvilhe coco ralado por cima.',
    'Asse em forno preaquecido a 180Â°C por 40 a 45 minutos, atÃ© dourar e o palito sair limpo. Deixe esfriar por 20 minutos antes de desenformar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'Bolo de Tapioca Vegano',
  'Bolo gelado de tapioca com leite de coco, sem forno e sem ovos. Sobremesa refrescante e cremosa muito apreciada no MaranhÃ£o.',
  'ðŸ®', 'Sobremesa', 30, '30 min + geladeira', 8, 'FÃ¡cil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Em uma tigela grande, coloque 2 xÃ­caras de tapioca granulada. Despeje 2 xÃ­caras de leite de coco quente sobre a tapioca. Misture e deixe descansar por 30 minutos, mexendo ocasionalmente para hidratar uniformemente.',
    'ApÃ³s a tapioca hidratar, adicione mais 400 ml de leite de coco, 1 xÃ­cara de aÃ§Ãºcar, 1 xÃ­cara de coco ralado sem aÃ§Ãºcar e uma pitada de sal. Misture bem.',
    'Transfira a mistura para uma panela e leve ao fogo mÃ©dio, mexendo constantemente com espÃ¡tula de silicone para nÃ£o grudar.',
    'Cozinhe por 10 a 15 minutos, mexendo sempre, atÃ© a mistura engrossar e a tapioca ficar completamente translÃºcida e gelatinosa.',
    'Unte uma forma retangular com Ã³leo. Despeje a mistura ainda quente e alise a superfÃ­cie. Deixe esfriar em temperatura ambiente por 30 minutos.',
    'Leve Ã  geladeira por pelo menos 4 horas. Desenforme e sirva polvilhado com coco ralado e canela. Pode ser servido com calda de frutas regionais.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
),
(
  'AbÃ³bora Assada com Ervas',
  'AbÃ³bora moranga assada com Ã³leo de babaÃ§u, alho, alecrim e tomilho. Acompanhamento simples e nutritivo da culinÃ¡ria maranhense.',
  'ðŸŽƒ', 'Acompanhamento', 40, '40 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'PreaqueÃ§a o forno a 200Â°C. Lave bem 800 g de abÃ³bora moranga. Corte em fatias ou cubos de 3 cm de espessura.',
    'Em uma tigela pequena, misture 4 colheres de sopa de Ã³leo de babaÃ§u, 4 dentes de alho amassados, 1 colher de chÃ¡ de alecrim seco, 1 colher de chÃ¡ de tomilho, sal e pimenta do reino a gosto.',
    'Arrume os pedaÃ§os de abÃ³bora em uma assadeira grande. Regue com a mistura de Ã³leo e ervas, virando os pedaÃ§os para temperar todos os lados.',
    'Espalhe uniformemente na assadeira sem sobrepor as peÃ§as.',
    'Asse por 25 a 30 minutos, virando os pedaÃ§os na metade do tempo. A abÃ³bora deve ficar macia por dentro e levemente caramelizada por fora.',
    'Retire do forno e finalize com salsinha fresca picada e algumas gotas de limÃ£o. Sirva quente como acompanhamento.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Vinagrete Maranhense',
  'Vinagrete fresco e bem temperado Ã  moda maranhense, com muito coentro, pimenta-de-cheiro e vinagre. Acompanhamento versÃ¡til e refrescante.',
  'ðŸ¥—', 'Acompanhamento', 15, '15 min', 6, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Pique 4 tomates maduros sem sementes em cubos pequenos e uniformes de 0,5 cm. Pique 1 cebola roxa e 1 cebola branca em cubos igualmente pequenos. Reserve em uma tigela grande.',
    'Pique 1/2 pimentÃ£o verde e 1/2 pimentÃ£o vermelho em cubos pequenos. Pique 2 pimentas-de-cheiro sem sementes a gosto. Adicione Ã  tigela.',
    'Pique generosamente 1 maÃ§o de coentro fresco (folhas e talinhos finos) e adicione ao vinagrete. Acrescente tambÃ©m cebolinha picada a gosto.',
    'Tempere com 3 colheres de sopa de vinagre branco ou de maÃ§Ã£, sal a gosto e uma pitada de aÃ§Ãºcar para equilibrar a acidez.',
    'Misture tudo delicadamente com uma colher. Prove e ajuste o sal e o vinagre conforme preferÃªncia. Adicione suco de limÃ£o se desejar mais acidez.',
    'Leve Ã  geladeira por pelo menos 15 minutos antes de servir para os sabores se integrarem. Mexa bem antes de servir.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Doce de EspÃ©cie de AlcÃ¢ntara Vegano',
  'O famoso doce de espÃ©cie da cidade de AlcÃ¢ntara no MaranhÃ£o: recheio de cocada densa envolvido em massa fina de trigo e Ã³leo de babaÃ§u, assado atÃ© dourar.',
  'ðŸ¬', 'Sobremesa', 50, '50 min', 20, 'MÃ©dia', 0, 1, 1, 1,
  JSON_ARRAY(
    'Prepare o recheio: em uma panela, misture 3 xÃ­caras de coco ralado, 2 xÃ­caras de aÃ§Ãºcar e 1/2 xÃ­cara de Ã¡gua. Adicione 5 cravos e 1 pau de canela. Cozinhe em fogo mÃ©dio mexendo sempre atÃ© a mistura desgrudar da panela (ponto de brigadeiro). Retire os cravos e a canela. Deixe esfriar.',
    'Prepare a massa: misture 2 xÃ­caras de farinha de trigo, 1/2 colher de chÃ¡ de sal e 1/2 colher de chÃ¡ de canela em pÃ³. Adicione 5 colheres de sopa de Ã³leo de babaÃ§u e misture atÃ© formar uma farofa.',
    'Adicione 1/2 xÃ­cara de Ã¡gua morna aos poucos, sovando delicadamente atÃ© a massa ficar maleÃ¡vel e nÃ£o grudenta. Descanse por 10 minutos coberta com pano.',
    'PreaqueÃ§a o forno a 180Â°C. Abra a massa em porÃ§Ãµes pequenas, coloque uma colher de recheio de coco no centro de cada porÃ§Ã£o e modele fechando bem as bordas em formato oval.',
    'Disponha em forma untada com Ã³leo. Pincele a superfÃ­cie com leite de coco para dar brilho e cor. Polvilhe gergelim branco se desejar.',
    'Asse por 20 a 25 minutos atÃ© ficarem dourados. Deixe esfriar antes de servir. Tradicional na Festa do Divino de AlcÃ¢ntara.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'Natal')
),
(
  'Buriti Caramelado',
  'Polpa de buriti caramelada com aÃ§Ãºcar e especiarias. Sobremesa exÃ³tica com o fruto sÃ­mbolo do cerrado maranhense.',
  'ðŸŒ´', 'Sobremesa', 30, '30 min', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Obtenha 400 g de polpa de buriti fresca ou descongelada. Se estiver usando buriti fresco, cozinhe os frutos em Ã¡gua por 10 minutos, descasque e retire a polpa fibrosa. Escorra o excesso de Ã¡gua.',
    'Em uma panela de fundo grosso, derreta 1 xÃ­cara de aÃ§Ãºcar cristal em fogo mÃ©dio sem mexer, apenas girando a panela, atÃ© formar um caramelo dourado.',
    'Com cuidado, adicione 1/2 xÃ­cara de Ã¡gua morna ao caramelo. Cuidado com os respingos! Mexa com colher de pau atÃ© dissolver e formar uma calda.',
    'Adicione a polpa de buriti Ã  calda, 1 pau de canela e 3 cravos. Mexa delicadamente em fogo mÃ©dio-baixo para o buriti absorver o caramelo.',
    'Cozinhe por 15 a 20 minutos, mexendo ocasionalmente, atÃ© a calda engrossar e o buriti ficar macio e caramelado. Ajuste a doÃ§ura.',
    'Retire a canela e os cravos. Sirva quente ou em temperatura ambiente. Fica Ã³timo acompanhado de beiju de coco ou cuscuz maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Bacuri Vegano',
  'Polpa de bacuri cozida somente com aÃ§Ãºcar atÃ© virar doce cremoso e levemente Ã¡cido, sem laticÃ­nios. Sabor Ãºnico e exÃ³tico do MaranhÃ£o.',
  'ðŸ‘', 'Sobremesa', 45, '45 min', 8, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Use 500 g de polpa de bacuri fresca ou descongelada. Se for fresco, abra os frutos e retire a polpa branca com uma colher. Descarte as sementes e a casca.',
    'Em uma tigela, misture a polpa de bacuri com 1 xÃ­cara de aÃ§Ãºcar e 1/2 xÃ­cara de Ã¡gua. Deixe descansar por 15 minutos para soltar o suco natural.',
    'Transfira para uma panela de fundo grosso e leve ao fogo mÃ©dio, mexendo atÃ© o aÃ§Ãºcar dissolver completamente.',
    'Continue cozinhando em fogo mÃ©dio-baixo por 25 a 30 minutos, mexendo constantemente com colher de pau para nÃ£o grudar. O doce deve comeÃ§ar a desgrudar do fundo da panela.',
    'Adicione o suco de 1/2 limÃ£o e, se desejar, castanha de caju picada. Mexa bem e cozinhe por mais 5 minutos.',
    'O doce estÃ¡ pronto quando estiver bem espesso e desgrudar facilmente do fundo da panela. Despeje em potes de vidro. Sirva frio ou em temperatura ambiente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de CupuaÃ§u',
  'Polpa de cupuaÃ§u cozida com aÃ§Ãºcar atÃ© atingir ponto de doce cremoso. Sabor tropical intenso e levemente Ã¡cido, sem laticÃ­nios.',
  'ðŸˆ', 'Sobremesa', 50, '50 min', 8, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Utilize 500 g de polpa de cupuaÃ§u fresca ou descongelada em temperatura ambiente. A polpa deve estar sem sementes.',
    'Em uma panela de fundo grosso, coloque a polpa, 300 g de aÃ§Ãºcar e 1/2 xÃ­cara de Ã¡gua. Misture e leve ao fogo mÃ©dio, mexendo atÃ© o aÃ§Ãºcar dissolver.',
    'Quando comeÃ§ar a ferver, abaixe para fogo mÃ©dio-baixo. A polpa de cupuaÃ§u soltarÃ¡ Ã¡gua â€” continue mexendo sem parar para proteger o aÃ§Ãºcar de queimar.',
    'Cozinhe por 30 a 40 minutos, mexendo sempre. O doce vai engrossando gradualmente. Quando comeÃ§ar a desgrudar do fundo da panela, estÃ¡ prÃ³ximo do ponto.',
    'Adicione o suco de 1/2 limÃ£o para realÃ§ar o sabor e ajudar na conservaÃ§Ã£o. Mexa bem e cozinhe por mais 5 a 10 minutos atÃ© atingir consistÃªncia de doce cremoso.',
    'Despeje em potes de vidro previamente esterilizados. Sirva frio, acompanhado de biscoito de tapioca, beiju ou como recheio de tortas veganas.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Doce de Murici',
  'Polpa de murici cozida com aÃ§Ãºcar e especiarias. Fruta tÃ­pica do cerrado maranhense com sabor Ãºnico, levemente fermentado e aromÃ¡tico.',
  'ðŸ«', 'Sobremesa', 35, '35 min', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Selecione 500 g de murici bem maduros. Lave bem e retire os caroÃ§os: esprema cada fruto para separar a polpa da semente. Reserve a polpa.',
    'Bata a polpa de murici no liquidificador com 1/4 de xÃ­cara de Ã¡gua no modo pulsar apenas para soltar os fios, sem triturar demais. Coe em peneira grossa para retirar fios mais duros.',
    'Em uma panela, junte a polpa coada, 250 g de aÃ§Ãºcar, 1/2 xÃ­cara de Ã¡gua, 1 pau de canela e 4 cravos. Leve ao fogo mÃ©dio, mexendo atÃ© o aÃ§Ãºcar dissolver.',
    'Cozinhe em fogo mÃ©dio-baixo por 20 a 25 minutos, mexendo frequentemente. O doce vai escurecer levemente e engrossar.',
    'Quando o doce comeÃ§ar a desgrudar do fundo da panela, adicione o suco de 1/4 de limÃ£o. Mexa bem por mais 2 minutos. Retire o pau de canela e os cravos.',
    'Despeje em potes de vidro e deixe esfriar. O doce de murici tem sabor intenso e ligeiramente fermentado, Ã³timo com tapioca ou beiju.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Geleia de Jenipapo',
  'Geleia artesanal feita com jenipapo, fruta tÃ­pica do MaranhÃ£o e Nordeste. Cor escura intensa e sabor adocicado com notas tÃ¢nicas.',
  'ðŸ«™', 'Sobremesa', 50, '50 min', 10, 'MÃ©dia', 0, 0, 1, 0,
  JSON_ARRAY(
    'Escolha 5 jenipapos bem maduros e firmes. Descasque com faca e retire as sementes. Corte a polpa em pedaÃ§os mÃ©dios. Lave bem para reduzir o amargor.',
    'Coloque a polpa em uma panela com 2 xÃ­caras de Ã¡gua e leve ao fogo mÃ©dio por 15 minutos atÃ© ficar bem macia. Deixe esfriar, bata no liquidificador e coe em peneira fina.',
    'MeÃ§a o volume de suco obtido. Para cada xÃ­cara de suco, use 3/4 de xÃ­cara de aÃ§Ãºcar. Coloque o suco e o aÃ§Ãºcar em uma panela.',
    'Adicione o suco de 1 limÃ£o. Leve ao fogo mÃ©dio, mexendo atÃ© o aÃ§Ãºcar dissolver por completo.',
    'Cozinhe em fogo mÃ©dio-alto por 20 a 25 minutos sem mexer muito. FaÃ§a o teste da geada: coloque uma gota em prato frio â€” se firmar ao inclinar, a geleia estÃ¡ pronta.',
    'Despeje ainda quente em potes de vidro esterilizados e feche imediatamente. Vire os potes de cabeÃ§a para baixo por 5 minutos para fazer vÃ¡cuo. Deixe esfriar.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Sorvete Artesanal de Coco BabaÃ§u',
  'Sorvete cremoso feito com leite de coco babaÃ§u e coco fresco ralado. Sobremesa refrescante e 100% vegana com o fruto sÃ­mbolo do MaranhÃ£o.',
  'ðŸ¦', 'Sobremesa', 30, '30 min + freezer', 6, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em uma panela pequena, aqueÃ§a 800 ml de leite de coco de babaÃ§u com 150 g de aÃ§Ãºcar em fogo baixo, mexendo atÃ© o aÃ§Ãºcar dissolver completamente. NÃ£o deixe ferver.',
    'Adicione 1 colher de sopa de Ã³leo de babaÃ§u. Misture bem. Retire do fogo e deixe esfriar completamente em temperatura ambiente.',
    'Incorpore 1 xÃ­cara de coco ralado sem aÃ§Ãºcar Ã  mistura. Misture bem.',
    'Despeje a mistura em recipiente com tampa. Leve ao freezer por 2 horas. Retire e bata com um garfo ou mixer para quebrar os cristais de gelo. Repita esse processo 2 a 3 vezes de hora em hora.',
    'ApÃ³s a Ãºltima batida, deixe o sorvete firmar no freezer por mais 2 a 3 horas atÃ© atingir a consistÃªncia desejada.',
    'Retire do freezer 5 a 10 minutos antes de servir para amolecer levemente. Sirva em taÃ§as com raspas de coco fresco ou calda de buriti caramelado.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Mingau de Tapioca com Leite de Coco',
  'Mingau cremoso de tapioca granulada cozida somente no leite de coco com canela e cravo. VersÃ£o vegana do tradicional mingau maranhense.',
  'ðŸ¥£', 'Sobremesa', 30, '30 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em uma tigela grande, coloque 1 xÃ­cara de tapioca granulada. Despeje 2 xÃ­caras de leite de coco morno sobre a tapioca. Misture e deixe hidratar por 20 minutos, mexendo de vez em quando.',
    'Em uma panela, junte a tapioca hidratada com mais 400 ml de leite de coco, 1/2 xÃ­cara de aÃ§Ãºcar, 1 pau de canela e 4 cravos. Misture bem.',
    'Leve ao fogo mÃ©dio, mexendo constantemente com colher de pau para nÃ£o grudar no fundo.',
    'Cozinhe por 10 a 15 minutos, sem parar de mexer, atÃ© a tapioca ficar completamente translÃºcida e a mistura atingir consistÃªncia de mingau cremoso.',
    'Retire o pau de canela e os cravos. Ajuste a doÃ§ura conforme preferÃªncia.',
    'Sirva quente em tigelas polvilhado com canela em pÃ³ e coco ralado. Para servir frio, leve Ã  geladeira por 2 horas â€” o mingau vai firmar levemente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Mingau de Milho Verde com Leite de Coco',
  'Mingau cremoso de milho verde com leite de coco e especiarias. VersÃ£o vegana do clÃ¡ssico maranhense, sem leite animal.',
  'ðŸŒ½', 'Sobremesa', 45, '45 min', 6, 'FÃ¡cil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Corte a polpa de 4 espigas de milho verde. Bata no liquidificador com 2 xÃ­caras de leite de coco atÃ© obter um lÃ­quido homogÃªneo.',
    'Coe a mistura em peneira fina, pressionando com uma colher para extrair todo o caldo. Descarte o bagaÃ§o ou guarde para outro preparo.',
    'Coloque o caldo de milho coado em uma panela grande. Adicione mais 400 ml de leite de coco, 1 xÃ­cara de aÃ§Ãºcar, 1 pau de canela e 3 cravos.',
    'Leve ao fogo mÃ©dio-baixo, mexendo constantemente com colher de pau para nÃ£o grudar nem empelotar. O milho vai engrossando gradualmente.',
    'Cozinhe por 30 a 35 minutos, mexendo sem parar. Quando o mingau estiver cremoso e desgrudar levemente das bordas da panela, retire os cravos e a canela.',
    'Adicione 1/2 xÃ­cara de coco ralado, misture e sirva quente em tigelas. Polvilhe com canela em pÃ³. Para servir frio, leve Ã  geladeira por 2 horas.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa Junina')
),
(
  'Manjar de Milho Verde',
  'Manjar delicado feito com leite de milho e leite de coco, firme e cremoso. Sobremesa vegana de textura aveludada servida com calda de frutas regionais.',
  'ðŸ®', 'Sobremesa', 40, '40 min + geladeira', 8, 'MÃ©dia', 0, 1, 1, 0,
  JSON_ARRAY(
    'Bata no liquidificador a polpa de 4 espigas de milho verde com 400 ml de leite de coco atÃ© ficar bem homogÃªneo. Coe em peneira fina e reserve o leite de milho obtido.',
    'Em uma panela, dissolva 5 colheres de sopa de amido de milho em 200 ml de leite de coco frio. Misture bem sem deixar grumos.',
    'Acrescente o leite de milho coado, 1 xÃ­cara de aÃ§Ãºcar e 1 xÃ­cara de coco ralado. Misture tudo e leve ao fogo mÃ©dio.',
    'Cozinhe mexendo constantemente com um fouet por 10 a 15 minutos atÃ© engrossar bastante e comeÃ§ar a borbulhar. O manjar deve se desprender das bordas da panela.',
    'Unte uma forma de pudim com Ã³leo. Despeje a mistura quente e deixe esfriar em temperatura ambiente por 30 minutos.',
    'Leve Ã  geladeira por pelo menos 4 horas. Para desenformar, passe uma faca nas bordas e vire sobre um prato. Sirva com calda de bacuri, buriti ou cupuaÃ§u.'
  ),
  JSON_ARRAY('Festa', 'Final de semana', 'Natal')
),
(
  'Arroz Doce Maranhense com Leite de Coco',
  'Arroz doce cremoso preparado somente com leite de coco e especiarias, sem leite animal. VersÃ£o vegana da sobremesa mais amada do MaranhÃ£o.',
  'ðŸš', 'Sobremesa', 50, '50 min', 8, 'FÃ¡cil', 0, 1, 1, 0,
  JSON_ARRAY(
    'Lave 2 xÃ­caras de arroz branco agulhinha e coloque em uma panela com 3 xÃ­caras de Ã¡gua, 1 pau de canela e 4 cravos. Leve ao fogo mÃ©dio atÃ© a Ã¡gua ferver.',
    'Abaixe o fogo, tampe parcialmente e cozinhe por 15 minutos atÃ© o arroz absorver quase toda a Ã¡gua, ficando al dente.',
    'Em outra panela, aqueÃ§a 800 ml de leite de coco com 1 xÃ­cara de aÃ§Ãºcar, mexendo atÃ© o aÃ§Ãºcar dissolver. NÃ£o deixe ferver.',
    'Transfira o arroz al dente para a panela com o leite de coco quente. Misture bem. Cozinhe em fogo mÃ©dio-baixo, mexendo frequentemente para nÃ£o grudar no fundo.',
    'Cozinhe por 20 a 25 minutos atÃ© o arroz ficar bem macio e o arroz doce atingir consistÃªncia cremosa. Retire a canela e os cravos.',
    'Sirva quente ou em temperatura ambiente polvilhado com canela em pÃ³ e coco ralado. Para servir frio, leve Ã  geladeira â€” o arroz doce vai engrossar mais ao esfriar.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'Final de semana')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Gergelim branco','Cebola','Alho','Tomate','PimentÃ£o','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 45, id, 1 FROM ingredientes WHERE nome IN ('Ã“leo de babaÃ§u','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 46, id, 0 FROM ingredientes WHERE nome IN ('FeijÃ£o-de-corda','Arroz','AbÃ³bora','Cebola','Alho','PimentÃ£o','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 46, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Ã“leo de babaÃ§u','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 47, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Vinagreira','Quiabo','Maxixe','Cebola','Alho','PimentÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 47, id, 1 FROM ingredientes WHERE nome IN ('Tomate','Ã“leo de babaÃ§u','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 48, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Cogumelo seco','Cebola','Alho','Tomate','PimentÃ£o','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 48, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Ã“leo de babaÃ§u');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 49, id, 0 FROM ingredientes WHERE nome IN ('AbÃ³bora','Batata-doce','PimentÃ£o','Tomate','Cebola','Leite de coco','Azeite de dendÃª');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 49, id, 1 FROM ingredientes WHERE nome IN ('Quiabo','Maxixe','Coentro','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 50, id, 0 FROM ingredientes WHERE nome IN ('AbÃ³bora','Leite de coco','Amendoim','Castanha de caju','Cebola','Alho','Gengibre');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 50, id, 1 FROM ingredientes WHERE nome IN ('Azeite de dendÃª','PimentÃ£o','Coentro','PÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 51, id, 0 FROM ingredientes WHERE nome IN ('Quiabo','Leite de coco','Amendoim','Castanha de caju','Alho','Cebola','Azeite de dendÃª');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 51, id, 1 FROM ingredientes WHERE nome IN ('Gengibre','Pimenta dedo-de-moÃ§a','Coentro','LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 52, id, 0 FROM ingredientes WHERE nome IN ('FeijÃ£o','Maxixe','AbÃ³bora','Quiabo','Alho','Cebola','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 52, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro','Ã“leo de babaÃ§u','Tomate');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 53, id, 0 FROM ingredientes WHERE nome IN ('FeijÃ£o-de-corda','Alho','Cebola','Coentro','Cebolinha','Tomate','PimentÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 53, id, 1 FROM ingredientes WHERE nome IN ('Ã“leo de babaÃ§u','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 54, id, 0 FROM ingredientes WHERE nome IN ('Vinagreira','Gergelim branco','Alho','Cebola','Tomate','PimentÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 54, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Coentro','LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 55, id, 0 FROM ingredientes WHERE nome IN ('Farinha de mandioca','Ã“leo de babaÃ§u','Cebola','Alho','Coentro','Cebolinha','Tomate');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 55, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','PimentÃ£o','Castanha de caju');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 56, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Ã“leo de babaÃ§u','Leite de coco','Alho','Coentro','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 56, id, 1 FROM ingredientes WHERE nome IN ('Pimenta do reino','Cebolinha');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 57, id, 0 FROM ingredientes WHERE nome IN ('Tapioca','Coco ralado','Leite de coco de babaÃ§u','AÃ§Ãºcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 57, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 58, id, 0 FROM ingredientes WHERE nome IN ('Farinha de milho','Coco ralado','AÃ§Ãºcar','Leite de coco');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 58, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 59, id, 0 FROM ingredientes WHERE nome IN ('Farinha de trigo','Ã“leo de babaÃ§u','Palmito','Tomate','Cebola','Alho','Coentro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 59, id, 1 FROM ingredientes WHERE nome IN ('PimentÃ£o','Gergelim branco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 60, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Leite de coco','Coco ralado','AÃ§Ãºcar','Ã“leo de babaÃ§u','Farinha de trigo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 60, id, 1 FROM ingredientes WHERE nome IN ('Fermento em pÃ³');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 61, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Coco ralado','AÃ§Ãºcar');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 61, id, 1 FROM ingredientes WHERE nome IN ('Canela','Fermento em pÃ³');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 62, id, 0 FROM ingredientes WHERE nome IN ('AbÃ³bora','Ã“leo de babaÃ§u','Alho','Alecrim','Tomilho');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 62, id, 1 FROM ingredientes WHERE nome IN ('Salsinha','Pimenta do reino','LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 63, id, 0 FROM ingredientes WHERE nome IN ('Tomate','Cebola','PimentÃ£o','Coentro','Vinagre','Pimenta-de-cheiro');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 63, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o','Cebolinha');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 64, id, 0 FROM ingredientes WHERE nome IN ('Coco ralado','AÃ§Ãºcar','Farinha de trigo','Ã“leo de babaÃ§u','Cravo','Canela');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 64, id, 1 FROM ingredientes WHERE nome IN ('Gergelim branco','Leite de coco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 65, id, 0 FROM ingredientes WHERE nome IN ('Polpa de buriti','AÃ§Ãºcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 65, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 66, id, 0 FROM ingredientes WHERE nome IN ('Polpa de bacuri','AÃ§Ãºcar','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 66, id, 1 FROM ingredientes WHERE nome IN ('Canela','Cravo','Castanha de caju');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 67, id, 0 FROM ingredientes WHERE nome IN ('Polpa de cupuaÃ§u','AÃ§Ãºcar','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 67, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 68, id, 0 FROM ingredientes WHERE nome IN ('Murici','AÃ§Ãºcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 68, id, 1 FROM ingredientes WHERE nome IN ('LimÃ£o');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 69, id, 0 FROM ingredientes WHERE nome IN ('Jenipapo','AÃ§Ãºcar','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 69, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 70, id, 0 FROM ingredientes WHERE nome IN ('Leite de coco de babaÃ§u','Coco ralado','AÃ§Ãºcar','Leite de coco');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 70, id, 1 FROM ingredientes WHERE nome IN ('Ã“leo de babaÃ§u');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 71, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','AÃ§Ãºcar','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 71, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 72, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','AÃ§Ãºcar','Canela','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 72, id, 1 FROM ingredientes WHERE nome IN ('Cravo');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 73, id, 0 FROM ingredientes WHERE nome IN ('Milho verde','Leite de coco','AÃ§Ãºcar','Amido de milho','Coco ralado');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 73, id, 1 FROM ingredientes WHERE nome IN ('Canela');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 74, id, 0 FROM ingredientes WHERE nome IN ('Arroz','Leite de coco','AÃ§Ãºcar','Canela','Cravo','Coco ralado');

UPDATE receitas SET vegano = 1 WHERE nome = 'Doce de EspÃ©cie';
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
  ('Arroz integral'), ('Farinha de arroz'), ('JuÃ§ara'), ('Farinha de puba');

UPDATE receitas SET diet = 1 WHERE nome = 'Peixada Maranhense';
UPDATE receitas SET diet = 1 WHERE nome = 'Caldo de Ovos';

INSERT INTO receitas (
  nome, descricao, emoji, categoria,
  tempo_minutos, tempo, porcoes,
  dificuldade, rapida, tipica_festa, diet, destaque,
  modo_preparo, ocasioes
) VALUES
(
  'Peixe Assado no Azeite de BabaÃ§u',
  'Peixe inteiro marinado no limÃ£o e alho, assado no forno com Ã³leo de babaÃ§u e cebola em rodelas. Preparo leve e saboroso, tipicamente maranhense.',
  'ðŸŸ', 'Prato Principal', 70, '1h10', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Limpe e lave bem o peixe inteiro (peixe-pedra, tainha ou robalo). FaÃ§a cortes laterais na carne para o tempero penetrar melhor.',
    'Tempere com suco de 2 limÃµes, 4 dentes de alho amassado, sal e pimenta do reino. Deixe marinar por 30 minutos.',
    'PreaqueÃ§a o forno a 180Â°C. Unte uma assadeira com um fio de Ã³leo de babaÃ§u.',
    'Disponha o peixe na assadeira, cubra com rodelas de cebola e regue com o restante do Ã³leo de babaÃ§u.',
    'Asse por 35 a 40 minutos, virando na metade do tempo, atÃ© a pele ficar dourada e a carne soltar facilmente do osso.',
    'Retire do forno, finalize com coentro fresco picado e sirva imediatamente acompanhado de macaxeira cozida ou arroz integral.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Peixe Escabeche Maranhense',
  'FilÃ©s de peixe grelhados e cobertos com molho de cebola, tomate, pimentÃ£o e vinagre temperado com colorau e pimenta-de-cheiro.',
  'ðŸ ', 'Prato Principal', 40, '40 min', 4, 'MÃ©dia', 0, 0, 1, 0,
  JSON_ARRAY(
    'Tempere os filÃ©s de peixe (cavala ou caÃ§Ã£o) com suco de limÃ£o, alho amassado e sal. Marine por no mÃ­nimo 20 minutos.',
    'AqueÃ§a 2 colheres de sopa de azeite em frigideira antiaderente. Grelhe os filÃ©s em fogo mÃ©dio-alto atÃ© dourar dos dois lados. Reserve.',
    'Na mesma frigideira, refogue a cebola em rodelas no azeite restante atÃ© ficar translÃºcida. Junte o pimentÃ£o verde picado e o alho.',
    'Adicione os tomates picados, o colorau e metade do coentro. Cozinhe em fogo mÃ©dio por 5 minutos atÃ© o tomate desmanchar.',
    'Acrescente o vinagre branco, ajuste o sal e adicione a pimenta-de-cheiro. Deixe ferver por 3 minutos para o molho incorporar.',
    'Disponha o peixe em travessa, cubra com o molho escabeche quente e finalize com o coentro restante. Sirva quente ou frio.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de Sururu',
  'Caldo leve e aromÃ¡tico de sururu com leite de coco, tomate, pimentÃ£o e coentro. Entrada tÃ­pica da culinÃ¡ria costeira maranhense.',
  'ðŸ¦ª', 'Entrada', 35, '35 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os sururus em Ã¡gua corrente, descartando os que estiverem abertos. Reserve.',
    'AqueÃ§a 2 colheres de sopa de azeite em panela mÃ©dia. Refogue a cebola picada e o alho amassado atÃ© dourar levemente.',
    'Junte o pimentÃ£o vermelho picado e os tomates. Cozinhe por 5 minutos atÃ© o tomate comeÃ§ar a desmanchar.',
    'Acrescente os sururus e misture bem com os temperos. Cozinhe por 5 minutos.',
    'Adicione 500 ml de Ã¡gua e 200 ml de leite de coco. Tempere com sal e pimenta-de-cheiro. Deixe ferver e cozinhe em fogo baixo por 10 minutos.',
    'Desligue o fogo, adicione suco de limÃ£o e coentro picado farto. Sirva quente acompanhado de arroz branco ou farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caranguejo Toc Toc',
  'Caranguejos uÃ§Ã¡ cozidos em caldo de tomate, leite de coco e cheiro-verde, servidos para bater e comer na hora. Prato festivo e tÃ­pico do MaranhÃ£o.',
  'ðŸ¦€', 'Prato Principal', 40, '40 min', 4, 'MÃ©dia', 0, 1, 1, 0,
  JSON_ARRAY(
    'Lave bem os caranguejos (1 corda, cerca de 8 unidades) em Ã¡gua corrente, escovando as cascas para remover areia.',
    'Em panela grande com Ã¡gua fervente e sal, cozinhe os caranguejos por 5 minutos atÃ© ficarem vermelhos. Escorra e reserve.',
    'Refogue a cebola picada e o tomate no azeite em panela grande, em fogo mÃ©dio, atÃ© quase desmancharem.',
    'Adicione 500 ml de Ã¡gua, o leite de coco, o vinagre e o suco de limÃ£o. Leve Ã  fervura e tempere com sal.',
    'Coloque os caranguejos prÃ©-cozidos no caldo. Deixe ferver por 10 minutos em fogo mÃ©dio para absorverem o molho.',
    'Finalize com cebolinha e coentro picados. Sirva com martelinho para quebrar as cascas e farinha de mandioca Ã  parte.'
  ),
  JSON_ARRAY('Cotidiano', 'Festa', 'AlmoÃ§o de domingo')
),
(
  'Patinhas de Caranguejo Cozidas',
  'Patas de caranguejo cozidas em Ã¡gua temperada com louro, alho e limÃ£o. Preparo simples que preserva o sabor natural do caranguejo maranhense.',
  'ðŸ¦€', 'Entrada', 30, '30 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave as patinhas de caranguejo em Ã¡gua corrente com escova, removendo toda a areia das articulaÃ§Ãµes.',
    'Em panela grande, leve 2 litros de Ã¡gua ao fogo alto com sal grosso, 4 dentes de alho inteiros, 1 cebola ao meio, folhas de louro e cascas de limÃ£o.',
    'Quando a Ã¡gua ferver, adicione as patinhas e cozinhe por 15 a 20 minutos atÃ© ficarem completamente vermelhas.',
    'Verifique o cozimento: a carne deve estar firme e se soltar levemente das juntas.',
    'Escorra as patinhas e tempere imediatamente com suco de limÃ£o enquanto ainda estÃ£o quentes.',
    'Disponha em prato grande, finalize com coentro picado e sirva com molho de pimenta, limÃ£o e farinha de mandioca.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'CamarÃ£o Gigante Cozido',
  'CamarÃ£o gigante cozido na casca em caldo temperado e finalizado na grelha. Preparo simples que exalta o sabor natural do camarÃ£o maranhense.',
  'ðŸ¦', 'Prato Principal', 35, '35 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Lave bem os camarÃµes gigantes. FaÃ§a um corte longitudinal no dorso para retirar o fio intestinal sem remover a casca.',
    'Tempere com suco de 2 limÃµes, 4 dentes de alho amassado, sal e pimenta-de-cheiro. Marine por 20 minutos.',
    'Em panela com Ã¡gua fervente e cebola em rodelas, cozinhe os camarÃµes com casca por 8 a 10 minutos atÃ© ficarem rosa-vivo e opacos.',
    'Retire da Ã¡gua e deixe escorrer. Verifique se a carne estÃ¡ branca e firme no interior.',
    'Pincele com azeite e leve por 3 minutos a uma grelha quente para dourar levemente a casca.',
    'Sirva inteiros com fatias de limÃ£o, coentro fresco e arroz de cuxÃ¡ como acompanhamento tÃ­pico maranhense.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana', 'Festa')
),
(
  'Caldo de Frango com Macaxeira',
  'Caldo encorpado de frango desfiado com cubos de macaxeira cozida, coentro e temperos maranhenses. Reconfortante e naturalmente nutritivo.',
  'ðŸ²', 'Prato Principal', 60, '60 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Tempere 500 g de coxas e sobrecoxas de frango sem pele com sal, pimenta do reino e metade do alho. Reserve por 15 minutos.',
    'AqueÃ§a o azeite em panela de pressÃ£o. Doure o frango por todos os lados. Junte a cebola picada, o alho restante, o pimentÃ£o e o tomate picados. Refogue por 3 minutos.',
    'Adicione 1 litro de Ã¡gua. Tampe e cozinhe sob pressÃ£o por 20 minutos.',
    'Libere a pressÃ£o, retire o frango, desfie a carne descartando os ossos. Reserve o caldo na panela.',
    'Adicione 400 g de macaxeira cortada em cubos ao caldo. Tampe e cozinhe por 15 minutos atÃ© amaciar. Bata metade da macaxeira com um mixer diretamente na panela para engrossar o caldo naturalmente.',
    'Devolva o frango desfiado Ã  panela. Ajuste o sal, finalize com coentro e cebolinha picados. Sirva quente.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Caldo de FeijÃ£o com Maxixe e Quiabo',
  'Caldo rÃºstico de feijÃ£o com maxixe e quiabo, temperado com coentro e pimenta-de-cheiro. O quiabo engrossa naturalmente o caldo sem precisar de farinha.',
  'ðŸ«˜', 'Prato Principal', 35, '35 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'AqueÃ§a 2 colheres de sopa de azeite em panela mÃ©dia. Refogue a cebola picada e o alho amassado atÃ© dourar levemente.',
    'Junte 2 tomates picados e a pimenta-de-cheiro. Cozinhe por 3 minutos atÃ© o tomate amolecer.',
    'Adicione 2 xÃ­caras de feijÃ£o cozido com um pouco do seu caldo. Misture bem.',
    'Acrescente 200 g de maxixe em rodelas e 200 g de quiabo em rodelas. Adicione Ã¡gua suficiente para cobrir os legumes. Tempere com sal e pimenta do reino.',
    'Cozinhe em fogo mÃ©dio por 15 minutos sem tampar, mexendo ocasionalmente, atÃ© os legumes ficarem macios. O quiabo engrossa o caldo naturalmente.',
    'Finalize com coentro e cebolinha picados. Sirva quente, puro ou acompanhado de arroz integral.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Arroz de CuxÃ¡ Integral',
  'VersÃ£o com arroz integral do prato sÃ­mbolo do MaranhÃ£o. Mais nutritivo e de menor Ã­ndice glicÃªmico, ideal para diabÃ©ticos sem abrir mÃ£o do sabor original.',
  'ðŸŒ¾', 'Prato Principal', 30, '30 min', 4, 'MÃ©dia', 0, 0, 1, 0,
  JSON_ARRAY(
    'Deixe o camarÃ£o seco de molho em Ã¡gua por 2 horas para dessalgar. Escorra e pique grosseiramente. Cozinhe 2 xÃ­caras de arroz integral conforme o pacote (geralmente 40 min). Reserve.',
    'Lave as folhas de vinagreira, retire os talos grossos e ferva por 5 minutos em Ã¡gua com pitada de sal. Escorra e pique.',
    'Em frigideira seca, torre o gergelim branco em fogo baixo por 2 minutos atÃ© liberar aroma. Reserve.',
    'AqueÃ§a o azeite em panela. Refogue a cebola e o alho atÃ© dourarem. Adicione o camarÃ£o dessalgado e refogue por 3 minutos.',
    'Acrescente a vinagreira picada e o gergelim torrado. Misture bem e cozinhe por 2 minutos.',
    'Junte o arroz integral cozido, misture delicadamente e ajuste o sal. Cozinhe por mais 3 minutos para integrar os sabores. Sirva quente com pimenta-de-cheiro.'
  ),
  JSON_ARRAY('Cotidiano', 'AlmoÃ§o de domingo')
),
(
  'Cuscuz de Arroz Maranhense',
  'Cuscuz feito de flocÃ£o de arroz na cuscuzeira, Ãºmido e soltinho. OpÃ§Ã£o de menor Ã­ndice glicÃªmico em relaÃ§Ã£o ao cuscuz de milho.',
  'ðŸš', 'Entrada', 55, '55 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Em tigela, misture 2 xÃ­caras de farinha de arroz (flocÃ£o de arroz) com 1 colher de chÃ¡ de sal. Misture com garfo.',
    'Regue a farinha com Ã¡gua aos poucos (cerca de 3/4 de xÃ­cara), amassando com os dedos atÃ© obter textura Ãºmida como areia molhada. Deixe hidratar por 20 minutos.',
    'Passe a massa por garfo ou peneira grossa para desfazer torrÃµes. Se desejar a versÃ£o com coco, misture 100 g de coco fresco ralado agora.',
    'Unte a cuscuzeira com um fio de azeite. Preencha com a massa sem pressionar, formando camadas soltas. Encaixe sobre panela com Ã¡gua fervente e tampe.',
    'Cozinhe no vapor por 25 a 30 minutos. Verifique com palito: ao sair limpo e a massa estar firme e coesa, estÃ¡ pronto.',
    'Desenforme o cuscuz em prato. Sirva quente com leite de coco puro ou acompanhado de queijo coalho.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Macaxeira Cozida',
  'Macaxeira simplesmente cozida em Ã¡gua temperada, regada com azeite e finalizada com coentro fresco. Base da culinÃ¡ria maranhense, naturalmente sem aÃ§Ãºcar.',
  'ðŸ ', 'Acompanhamento', 40, '40 min', 4, 'FÃ¡cil', 0, 0, 1, 0,
  JSON_ARRAY(
    'Descasque 800 g de macaxeira, remova o fio central e corte em pedaÃ§os de aproximadamente 6 cm.',
    'Lave bem os pedaÃ§os em Ã¡gua corrente para remover o excesso de amido.',
    'Coloque em panela com 1,5 litro de Ã¡gua e 1 colher de sopa de sal. Leve ao fogo alto atÃ© ferver.',
    'Abaixe para fogo mÃ©dio e cozinhe por 25 a 35 minutos, atÃ© que um garfo entre facilmente sem resistÃªncia.',
    'Escorra a Ã¡gua e transfira a macaxeira para prato de servir. Regue imediatamente com azeite enquanto ainda estÃ¡ quente.',
    'Finalize com coentro fresco picado e gotas de limÃ£o. Sirva quente como acompanhamento de peixe, frango ou frutos do mar.'
  ),
  JSON_ARRAY('Cotidiano', 'Final de semana')
),
(
  'Maxixe Refogado com Alho',
  'Maxixe em rodelas refogado no azeite com alho, cebola, tomate e coentro. Preparo rÃ¡pido, leve e cheio de sabor da roÃ§a maranhense.',
  'ðŸ¥’', 'Acompanhamento', 25, '25 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Raspe levemente a superfÃ­cie do maxixe com faca para remover os espinhos. Lave bem e corte em rodelas de 0,5 cm.',
    'AqueÃ§a 2 colheres de sopa de azeite em frigideira mÃ©dia em fogo mÃ©dio. Refogue 1 cebola pequena picada atÃ© ficar translÃºcida.',
    'Adicione 3 dentes de alho amassados e refogue por mais 1 minuto atÃ© liberar aroma.',
    'Junte 1 tomate picado e mexa. Cozinhe por 2 minutos.',
    'Acrescente as rodelas de maxixe, tempere com sal e pimenta do reino. Adicione 3 colheres de sopa de Ã¡gua, tampe e cozinhe em fogo baixo por 10 a 15 minutos, mexendo ocasionalmente.',
    'Quando o maxixe estiver macio e levemente translÃºcido, desligue o fogo, finalize com coentro picado e sirva quente.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Quiabo Refogado Maranhense',
  'Quiabo em rodelas refogado em fogo alto com alho, tomate e coentro. O segredo Ã© secar bem o quiabo antes de refogar para minimizar a baba.',
  'ðŸŒ¿', 'Acompanhamento', 20, '20 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Lave 500 g de quiabos e seque-os muito bem com pano limpo antes de cortar â€” isso reduz a baba. Retire as pontas e corte em rodelas de 1 cm.',
    'Regue as rodelas com suco de 1/2 limÃ£o, misture e deixe repousar por 5 minutos para reduzir ainda mais a baba.',
    'AqueÃ§a 2 colheres de sopa de azeite em frigideira larga em fogo alto. Refogue 1 cebola em rodelas atÃ© comeÃ§ar a dourar.',
    'Adicione 2 dentes de alho amassados e 1 tomate picado. Refogue por 2 minutos.',
    'Acrescente o quiabo em fogo alto, mexendo rapidamente sem tampar, por 8 a 10 minutos atÃ© ficar macio e com pouca baba.',
    'Tempere com sal e pimenta do reino. Finalize com coentro picado e pimenta-de-cheiro. Sirva quente como acompanhamento de peixe ou frango.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Beiju Simples com Coco Fresco',
  'Beiju de goma de mandioca com coco fresco ralado, sem aÃ§Ãºcar. Preparado na frigideira seca, Ã© o beiju mais tradicional e natural do MaranhÃ£o.',
  'ðŸ¥¥', 'Entrada', 20, '20 min', 6, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Passe 500 g de goma de mandioca hidratada por peneira fina para deixÃ¡-la soltinha e arejada. Misture com uma pitada de sal.',
    'Incorpore 100 g de coco fresco ralado Ã  goma, misturando levemente com as pontas dos dedos atÃ© distribuir uniformemente.',
    'AqueÃ§a uma frigideira antiaderente de 20 cm em fogo baixo-mÃ©dio. NÃ£o Ã© necessÃ¡rio Ã³leo se a frigideira for boa.',
    'Espalhe uma porÃ§Ã£o da mistura (cerca de 3 colheres de sopa) na frigideira, pressionando levemente para formar um disco uniforme de 1 cm de espessura.',
    'Tampe e cozinhe por 3 a 4 minutos atÃ© as bordas comeÃ§arem a soltar. Com auxÃ­lio de um prato, vire o beiju e cozinhe o outro lado por mais 3 minutos.',
    'Retire e sirva puro ou acompanhado de queijo coalho. NÃ£o leva aÃ§Ãºcar â€” o sabor doce vem naturalmente do coco fresco.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'Mingau de Tapioca Natural',
  'Mingau de tapioca cozido somente em leite de coco e Ã¡gua, sem aÃ§Ãºcar nem leite condensado. Suave e cremoso, ideal para diabÃ©ticos.',
  'ðŸ¥£', 'Sobremesa', 25, '25 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Em tigela, hidrate 1 xÃ­cara de tapioca granulada com 200 ml de Ã¡gua fria por 10 minutos. Mexa ocasionalmente.',
    'Em panela mÃ©dia, leve ao fogo mÃ©dio 200 ml de Ã¡gua com 400 ml de leite de coco, 1 pau de canela, 2 cravos e 1 pitada de sal.',
    'Quando a mistura comeÃ§ar a ferver, acrescente a tapioca hidratada, mexendo constantemente com colher de pau.',
    'Reduza para fogo baixo e cozinhe por 8 a 10 minutos, mexendo sem parar, atÃ© a tapioca ficar completamente translÃºcida e o mingau cremoso.',
    'Retire o pau de canela e os cravos. Ajuste a consistÃªncia com um pouco mais de Ã¡gua ou leite de coco se ficar espesso demais.',
    'Sirva quente em tigelas, polvilhe canela em pÃ³ por cima e, se desejar, adicione coco fresco ralado. Sem aÃ§Ãºcar â€” Ã© o modo tradicional maranhense.'
  ),
  JSON_ARRAY('Cotidiano')
),
(
  'JuÃ§ara com Farinha de Puba',
  'Polpa de juÃ§ara (aÃ§aÃ­-do-maranhÃ£o) servida com farinha de puba fermentada e camarÃ£o seco. CombinaÃ§Ã£o Ãºnica e tradicional do MaranhÃ£o.',
  'ðŸ«', 'Entrada', 15, '15 min', 4, 'FÃ¡cil', 1, 0, 1, 0,
  JSON_ARRAY(
    'Deixe o camarÃ£o seco de molho em Ã¡gua por 1 hora para reduzir o sal. Escorra e reserve.',
    'Bata a polpa de juÃ§ara (ou frutos de juÃ§ara) no liquidificador com Ã¡gua fria gelada atÃ© obter consistÃªncia cremosa. Mantenha refrigerada.',
    'Tempere o camarÃ£o escorrido com gotas de limÃ£o. Leve ao fogo em frigideira seca por 2 minutos apenas para aquecer e firmar.',
    'Distribua a farinha de puba em cuias ou tigelas individuais â€” cerca de 3 colheres de sopa por porÃ§Ã£o. A farinha de puba tem sabor levemente azedo por ser fermentada.',
    'Despeje a polpa de juÃ§ara gelada sobre a farinha de puba. A farinha absorve a polpa criando uma combinaÃ§Ã£o de texturas Ãºnica.',
    'Coloque o camarÃ£o seco aquecido por cima. Sirva imediatamente sem adicionar aÃ§Ãºcar, mantendo o sabor natural levemente Ã¡cido e adocicado da juÃ§ara.'
  ),
  JSON_ARRAY('Cotidiano')
);


INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 75, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Ã“leo de babaÃ§u','LimÃ£o','Alho','Pimenta do reino','Cebola','Coentro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 76, id, 0 FROM ingredientes WHERE nome IN ('Peixe fresco','Vinagre','Cebola','PimentÃ£o','Alho','Tomate','Coentro','LimÃ£o','Colorau');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 76, id, 1 FROM ingredientes WHERE nome IN ('Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 77, id, 0 FROM ingredientes WHERE nome IN ('Sururu','Alho','Cebola','Tomate','PimentÃ£o','Leite de coco','Coentro','LimÃ£o','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 78, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','Cebola','Tomate','Coentro','Cebolinha','Vinagre','LimÃ£o','Leite de coco');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 79, id, 0 FROM ingredientes WHERE nome IN ('Caranguejo inteiro','LimÃ£o','Alho','Folha de louro','Coentro','Cebola');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 80, id, 0 FROM ingredientes WHERE nome IN ('CamarÃ£o fresco','LimÃ£o','Alho','Cebola','Coentro','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 81, id, 0 FROM ingredientes WHERE nome IN ('Frango','Mandioca','Alho','Cebola','Tomate','Coentro','Cebolinha','PimentÃ£o','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 82, id, 0 FROM ingredientes WHERE nome IN ('FeijÃ£o','Maxixe','Quiabo','Alho','Cebola','Tomate','Coentro','Cebolinha','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 83, id, 0 FROM ingredientes WHERE nome IN ('Arroz integral','Vinagreira','CamarÃ£o seco','Gergelim branco','Cebola','Alho','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 84, id, 0 FROM ingredientes WHERE nome IN ('Farinha de arroz');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 84, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 85, id, 0 FROM ingredientes WHERE nome IN ('Mandioca','Coentro','LimÃ£o');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 85, id, 1 FROM ingredientes WHERE nome IN ('Manteiga');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 86, id, 0 FROM ingredientes WHERE nome IN ('Maxixe','Alho','Cebola','Tomate','Coentro','Pimenta do reino');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 87, id, 0 FROM ingredientes WHERE nome IN ('Quiabo','Alho','Cebola','Tomate','Coentro','LimÃ£o','Pimenta do reino','Pimenta-de-cheiro');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 88, id, 0 FROM ingredientes WHERE nome IN ('Goma de mandioca','Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 89, id, 0 FROM ingredientes WHERE nome IN ('Tapioca granulada','Leite de coco','Canela','Cravo');
INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 89, id, 1 FROM ingredientes WHERE nome IN ('Coco ralado');

INSERT IGNORE INTO receita_ingredientes (receita_id, ingrediente_id, opcional)
SELECT 90, id, 0 FROM ingredientes WHERE nome IN ('JuÃ§ara','Farinha de puba','CamarÃ£o seco','LimÃ£o');

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
