CREATE TABLE IF NOT EXISTS admin_users (
  id            INT          AUTO_INCREMENT PRIMARY KEY,
  email         VARCHAR(150) NOT NULL UNIQUE,
  senha_hash    VARCHAR(255) NOT NULL,
  nome          VARCHAR(100),
  created_at    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS sugestoes (
  id             INT          AUTO_INCREMENT PRIMARY KEY,
  nome           VARCHAR(150) NOT NULL,
  descricao      TEXT,
  ingredientes   TEXT         NOT NULL,
  modo_preparo   TEXT         NOT NULL,
  cpf_autor      VARCHAR(20),
  email_autor    VARCHAR(150),
  status         ENUM('pendente','aceita','rejeitada') DEFAULT 'pendente',
  receita_id     INT          NULL,
  created_at     TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  respondida_em  TIMESTAMP    NULL,
  FOREIGN KEY (receita_id) REFERENCES receitas(id) ON DELETE SET NULL
);