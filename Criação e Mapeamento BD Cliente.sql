-- Criar o banco de dados se não existir
CREATE DATABASE IF NOT EXISTS ClienteDB;

-- Selecionar o banco de dados
USE ClienteDB;

-- Criar a tabela de clientes se não existir
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15),
    data_cadastro DATE
);



INSERT INTO clientes (nome, email, telefone, data_cadastro) VALUES
('João Silva', 'joao.silva@example.com', '11999999999', '2024-01-10'),
('Maria Oliveira', 'maria.oliveira@example.com', '11988888888', '2024-02-15'),
('Carlos Souza', 'carlos.souza@example.com', NULL, '2024-03-01'),
('Ana Costa', 'ana.costa@example.com', '11977777777', '2024-03-20'),
('Pedro Santos', 'pedro.santos@example.com', NULL, '2024-04-05'),
('Fernanda Lima', 'fernanda.lima@example.com', '11966666666', '2024-05-10'),
('Lucas Mendes', 'lucas.mendes@example.com', '11955555555', '2024-05-15'),
('Camila Rocha', 'camila.rocha@example.com', NULL, '2024-06-01'),
('Thiago Pereira', 'thiago.pereira@example.com', '11944444444', '2024-06-20'),
('Beatriz Nunes', 'beatriz.nunes@example.com', '11933333333', '2024-07-10'),
('Gabriel Almeida', 'gabriel.almeida@example.com', NULL, '2024-08-05'),
('Juliana Souza', 'juliana.souza@example.com', '11922222222', '2024-08-15'),
('Renato Farias', 'renato.farias@example.com', '11911111111', '2024-09-01'),
('Sofia Martins', 'sofia.martins@example.com', '11900000000', '2024-09-20'),
('Eduardo Dias', 'eduardo.dias@example.com', NULL, '2024-10-10'),
('Carla Ramos', 'carla.ramos@example.com', '11888888888', '2024-11-01'),
('Daniel Costa', 'daniel.costa@example.com', '11877777777', '2024-11-05'),
('Laura Ferreira', 'laura.ferreira@example.com', NULL, '2024-11-10'),
('Marcelo Cunha', 'marcelo.cunha@example.com', '11866666666', '2024-11-15'),
('Patrícia Lopes', 'patricia.lopes@example.com', '11855555555', '2024-11-20');
