-- ============================================
-- Script para criar e popular a tabela 'estados'
-- ============================================

-- 1. Criação da tabela
CREATE TABLE IF NOT EXISTS estados (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  sigla VARCHAR(2) NOT NULL,
  regiao ENUM('Norte', 'Nordeste', 'Sul', 'Sudeste', 'Centro-Oeste') NOT NULL,
  populacao DECIMAL(5,2) NOT NULL, -- População em milhões
  PRIMARY KEY (id),
  UNIQUE KEY (sigla),
  UNIQUE KEY (nome)
);

-- 2. Inserção dos 27 estados brasileiros
INSERT INTO estados (nome, sigla, regiao, populacao) VALUES
('Acre', 'AC', 'Norte', 0.89),
('Alagoas', 'AL', 'Nordeste', 3.35),
('Amapá', 'AP', 'Norte', 0.86),
('Amazonas', 'AM', 'Norte', 4.24),
('Bahia', 'BA', 'Nordeste', 14.98),
('Ceará', 'CE', 'Nordeste', 9.24),
('Distrito Federal', 'DF', 'Centro-Oeste', 3.09),
('Espírito Santo', 'ES', 'Sudeste', 4.06),
('Goiás', 'GO', 'Centro-Oeste', 7.21),
('Maranhão', 'MA', 'Nordeste', 7.12),
('Mato Grosso', 'MT', 'Centro-Oeste', 3.78),
('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.81),
('Minas Gerais', 'MG', 'Sudeste', 20.54),
('Pará', 'PA', 'Norte', 8.69),
('Paraíba', 'PB', 'Nordeste', 4.06),
('Paraná', 'PR', 'Sul', 11.44),
('Pernambuco', 'PE', 'Nordeste', 9.67),
('Piauí', 'PI', 'Nordeste', 3.29),
('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
('Rio Grande do Norte', 'RN', 'Nordeste', 3.56),
('Rio Grande do Sul', 'RS', 'Sul', 11.37),
('Rondônia', 'RO', 'Norte', 1.81),
('Roraima', 'RR', 'Norte', 0.65),
('Santa Catarina', 'SC', 'Sul', 7.76),
('São Paulo', 'SP', 'Sudeste', 46.65),
('Sergipe', 'SE', 'Nordeste', 2.32),
('Tocantins', 'TO', 'Norte', 1.61);