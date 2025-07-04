DROP TABLE IF EXISTS estados;

CREATE TABLE estados (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Sul', 'Sudeste', 'Centro-Oeste') NOT NULL,
    populacao DECIMAL(5, 2) NOT NULL, -- População em milhões
    PRIMARY KEY (id),
    UNIQUE KEY (sigla),
    UNIQUE KEY (nome)
);

INSERT INTO estados (nome, sigla, regiao, populacao) VALUES
('Acre', 'AC', 'Norte', 0.91),
('Alagoas', 'AL', 'Nordeste', 3.35),
('Amapá', 'AP', 'Norte', 0.88),
('Amazonas', 'AM', 'Norte', 4.00),
('Bahia', 'BA', 'Nordeste', 14.87),
('Ceará', 'CE', 'Nordeste', 9.18),
('Distrito Federal', 'DF', 'Centro-Oeste', 3.05),
('Espírito Santo', 'ES', 'Sudeste', 4.02),
('Goiás', 'GO', 'Centro-Oeste', 7.21),
('Maranhão', 'MA', 'Nordeste', 7.08),
('Mato Grosso', 'MT', 'Centro-Oeste', 3.57),
('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.84),
('Minas Gerais', 'MG', 'Sudeste', 21.17),
('Pará', 'PA', 'Norte', 8.69),
('Paraíba', 'PB', 'Nordeste', 4.04),
('Paraná', 'PR', 'Sul', 11.43),
('Pernambuco', 'PE', 'Nordeste', 9.62),
('Piauí', 'PI', 'Nordeste', 3.28),
('Rio de Janeiro', 'RJ', 'Sudeste', 17.46),
('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
('Rio Grande do Sul', 'RS', 'Sul', 11.33),
('Rondônia', 'RO', 'Norte', 1.82),
('Roraima', 'RR', 'Norte', 0.65),
('Santa Catarina', 'SC', 'Sul', 7.70),
('São Paulo', 'SP', 'Sudeste', 46.29),
('Sergipe', 'SE', 'Nordeste', 2.32),
('Tocantins', 'TO', 'Norte', 1.59);