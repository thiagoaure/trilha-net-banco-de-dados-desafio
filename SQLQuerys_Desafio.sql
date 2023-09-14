--- 1
SELECT nome, ano FROM Filmes;

--- 2
SELECT nome, ano FROM Filmes ORDER BY ano ASC;

--- 3
SELECT nome, ano, duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--- 4
SELECT * FROM Filmes WHERE ano = 1997;

--- 5
SELECT * FROM Filmes WHERE ano > 2000;

--- 6
SELECT * FROM Filmes WHERE Duracao BETWEEN 100 AND 150 ORDER BY Duracao ASC;

--- 7
SELECT ano, COUNT(*) Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;

--- 8
SELECT primeiroNome, ultimoNome FROM Atores WHERE Genero = 'M';

--- 9
SELECT primeiroNome, ultimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--- 10
SELECT F.Nome, G.Genero FROM FilmesGenero FG 
INNER JOIN Filmes F ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero;

--- 11
SELECT F.Nome, G.Genero FROM FilmesGenero FG 
INNER JOIN Filmes F ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero WHERE G.Genero = 'Mistério';

--- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
INNER JOIN Atores A ON A.Id = EF.IdAtor
INNER JOIN Filmes F ON F.Id = EF.IdFilme 
