--Notas acima da média do curso

SELECT nome
FROM Alunos
WHERE aluno_id IN (
    SELECT aluno_id
    FROM Inscricoes
    WHERE nota > (
        SELECT AVG(nota)
        FROM Inscricoes
        WHERE curso_id = Inscricoes.curso_id
    )
);

--Cursos com mais de uma inscrição
SELECT nome_curso
FROM Cursos
WHERE curso_id IN (
    SELECT curso_id
    FROM Inscricoes
    GROUP BY curso_id
    HAVING COUNT(aluno_id) > 1
);

--Nota Média de Cada Aluno:
SELECT nome, (
    SELECT AVG(nota)
    FROM Inscricoes
    WHERE Inscricoes.aluno_id = Alunos.aluno_id
) AS media_notas
FROM Alunos;

--Alunos com Notas Acima de 80 em Todos os Cursos:

SELECT nome
FROM Alunos
WHERE aluno_id NOT IN (
    SELECT aluno_id
    FROM Inscricoes
    WHERE nota <= 80
);



