-- Questão 1:
-- Utilizando 1 query, obtenha a quantidade de experiencias (experiences)
-- atuais , ou seja, com “endDate” diferente de NULL

select count(*) as current_experiences
from experiences
where endDate is not NULL;

-- Questão 2:
-- Utilizando 1 query, obtenha a quantidade de graduações (educations) por usuário, 
-- incluindo o seu id.

select "userId", count("userId")
from educations
group by "userId"
order by "userId";

-- Questão 3:
-- Utilizando 1 query, obtenha a quantidade de depoimentos (testimonials)
-- que o usuário com id 435 efetuou, incluindo o seu nome.

select count(t.id), u.name
from testimonials t join users u ON t.userId = u.id
where testimonials.userId = 435;

-- Questão 4:
-- Utilizando 1 query, obtenha o maior salário das vagas (jobs) ativas (active sendo true)
-- e o nome das posições (roles) dessas vagas ordenadas de forma ascendente

select max(j.salary) as maximum_salary, r.name as role
from jobs j join roles r ON j.roleId = r.id
where j.active = true
group by roles.name
order by roles.name asc;

