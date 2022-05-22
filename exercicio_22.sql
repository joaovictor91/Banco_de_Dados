#a)
select  m.nome "Nome do Municipio", z.num "Zona do número", s.num "Seção numero" #projeção
from municipio m, zona z, secao s
where m.cod=z.cod_m and z.num=s.num_z #seleção
order by m.nome, z.num; #ordenaçãp

#b)
select m.nome "Nome do Municipio", count(z.num) "Quantidade de zonas"
from municipio m, zona z
where m.cod=z.cod_m
GROUP BY m.nome
ORDER BY COUNT(m.nome);

#c)
select z.num "Zona do número", count(s.num) "Seção quantidades"
from municipio m, zona z, secao s
where m.cod=z.cod_m and s.num_z=z.num and m.nome="Presidente Prudente"
group by m.nome;

#d)
select  m.nome "Nome do Municipio"
from municipio m
where m.nome like "%Pres%";

#e)
select  m.nome "Nome do Municipio", c.nome "Candidato nome"
from municipio m, candidato c
where m.cod=c.cod_m and c.cargo="Prefeito"
order by m.nome;

#f)
select  c.nome "Candidato nome", p.nome "Partido nome"
from  candidato c, partido p
where  c.cargo="Vereador" and c.cod_p=p.cod;

#g)
select c.nome "Candidato Nome", count(v.cod) "Quantidade de votos"
from candidato c, voto v
where c.cargo="Prefeito"  and c.cod=v.cod_c
group by c.nome;

#h)
select p.sigla "Sigla do Partido", count(v.cod) "Quantidade de votos"
from partido p, voto v, candidato c
where c.cod=v.cod_c and p.cod=c.cod_p 
group by p.sigla;


#i)
select  count(v.cod) "Quantidade de votos"
from  voto v;


#j)
select c.nome "Candidato Nome", count(v.cod) "Quantidade de votos"
from candidato c, voto v
where c.cod=v.cod_c
group by c.cod
order by c.cod desc;

#k)
select  e.nome "Eleitor nome", m .nome"Nome do município", z.num "Número da Zona", s.num "Número da Seção"
from  eleitor e, municipio m, zona z, secao s
where e.num_s=s.num and m.cod=z.cod_m and s.num_z=z.num
order by m.cod;