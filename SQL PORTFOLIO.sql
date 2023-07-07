select *
from CovidDeaths
order by 3,4

------select *
----from CovidVaccinations
----order by 3,4

select location,date, total_cases,new_cases, total_deaths, population
from CovidDeaths
order by 1,2


select location,date, total_cases,total_deaths,(total_deaths/total_cases) *100 as DeathPercentage
from CovidDeaths
where location like '%india%'
order by 1,2

-----
select location,date, total_cases,population,(total_cases/population) *100 as CasePercentage
from CovidDeaths
--where location like '%india%'
order by 1,2


--
select location , population, MAX(total_cases)AS HIGHESTINFC,MAX(total_cases/population) *100 as INFCPercentage
from CovidDeaths 
GROUP BY location,population
order by INFCPercentage DESC



---
select location , MAX(total_deaths)AS HIGHESTDEATH
from CovidDeaths 
WHERE continent IS NOT NULL
GROUP BY location
order by HIGHESTDEATH DESC



----
select location , MAX(total_deaths)AS HIGHESTDEATH
from CovidDeaths 
WHERE continent IS  NULL 
GROUP BY location
order by HIGHESTDEATH DESC

-----------
select SUM(new_cases) AS TOTALCASES,SUM(CAST(new_deaths AS int)) AS TOTALDEATH,SUM(CAST(new_deaths AS int))/SUM (new_cases)*100 AS DEATHPERCENTAGE
from CovidDeaths 
WHERE continent IS NOT  NULL 
--group by date
order by 1,2


