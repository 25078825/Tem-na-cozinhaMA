CREATE TABLE IF NOT EXISTS receitas (
  id              INT          AUTO_INCREMENT PRIMARY KEY,
  nome            VARCHAR(150) NOT NULL,
  descricao       TEXT,
  emoji           VARCHAR(10),
  categoria       VARCHAR(80),
  tempo_minutos   INT,
  tempo           VARCHAR(30),
  porcoes         INT,
  dificuldade     ENUM('Fácil','Média','Difícil') DEFAULT 'Fácil',
  rapida          TINYINT(1)   DEFAULT 0,
  tipica_festa    TINYINT(1)   DEFAULT 0,
  destaque        TINYINT(1)   DEFAULT 0,
  modo_preparo    JSON,
  ocasioes        JSON,
  created_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ingredientes (
  id    INT          AUTO_INCREMENT PRIMARY KEY,
  nome  VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS receita_ingredientes (
  id             INT  AUTO_INCREMENT PRIMARY KEY,
  receita_id     INT  NOT NULL,
  ingrediente_id INT  NOT NULL,
  opcional       TINYINT(1) DEFAULT 0,
  FOREIGN KEY (receita_id)     REFERENCES receitas(id)     ON DELETE CASCADE,
  FOREIGN KEY (ingrediente_id) REFERENCES ingredientes(id) ON DELETE CASCADE,
  UNIQUE KEY unico_receita_ingrediente (receita_id, ingrediente_id, opcional)
);