
/*-- Dropping existing tables named 'coviddeaths' amd 'covidvaccines'

Drop table coviddeaths;
Drop table covidvaccines;
*/

/* -- Delete from tables
delete from coviddeaths;
delete from covidvaccines;
*/

/* -- Creating a new table coviddeaths
CREATE TABLE coviddeaths (
  iso_code VARCHAR(10),
  continent VARCHAR(50),
  location VARCHAR(100),
  date DATE,
  population BIGINT,
  total_cases BIGINT,
  new_cases BIGINT,
  new_cases_smoothed BIGINT,
  total_deaths BIGINT,
  new_deaths BIGINT,
  new_deaths_smoothed BIGINT,
  total_cases_per_million BIGINT,
  new_cases_per_million BIGINT,
  new_cases_smoothed_per_million BIGINT,
  total_deaths_per_million BIGINT,
  new_deaths_per_million BIGINT,
  new_deaths_smoothed_per_million BIGINT,
  reproduction_rate BIGINT,
  icu_patients BIGINT,
  icu_patients_per_million BIGINT,
  hosp_patients BIGINT,
  hosp_patients_per_million BIGINT,
  weekly_icu_admissions BIGINT,
  weekly_icu_admissions_per_million BIGINT,
  weekly_hosp_admissions BIGINT,
  weekly_hosp_admissions_per_million BIGINT

);
*/

/*-- Creating a new table CovidVaccines
CREATE TABLE CovidVaccines (
  iso_code VARCHAR(10),
  continent VARCHAR(50),
  location VARCHAR(100),
  date DATE,
  total_tests BIGINT,
  new_tests BIGINT,
  total_tests_per_thousand BIGINT,
  new_tests_per_thousand BIGINT,
  new_tests_smoothed BIGINT,
  new_tests_smoothed_per_thousand BIGINT,
  positive_rate BIGINT,
  tests_per_case BIGINT,
  tests_units VARCHAR(50),
  total_vaccinations BIGINT,
  people_vaccinated BIGINT,
  people_fully_vaccinated BIGINT,
  total_boosters BIGINT,
  new_vaccinations BIGINT,
  new_vaccinations_smoothed BIGINT,
  total_vaccinations_per_hundred BIGINT,
  people_vaccinated_per_hundred BIGINT,
  people_fully_vaccinated_per_hundred BIGINT,
  total_boosters_per_hundred BIGINT,
  new_vaccinations_smoothed_per_million BIGINT,
  new_people_vaccinated_smoothed BIGINT,
  new_people_vaccinated_smoothed_per_hundred BIGINT,
  stringency_index BIGINT,
  population_density BIGINT,
  median_age BIGINT,
  aged_65_older BIGINT,
  aged_70_older BIGINT,
  gdp_per_capita DECIMAL(20,2),
  extreme_poverty BIGINT,
  cardiovasc_death_rate BIGINT,
  diabetes_prevalence BIGINT,
  female_smokers BIGINT,
  male_smokers BIGINT,
  handwashing_facilities BIGINT,
  hospital_beds_per_thousand BIGINT,
  life_expectancy BIGINT,
  human_development_index BIGINT,
  excess_mortality_cumulative_absolute BIGINT,
  excess_mortality_cumulative BIGINT,
  excess_mortality BIGINT,
  excess_mortality_cumulative_per_million BIGINT
);
*/

/*-- Load data from CovidDeaths.csv file 

LOAD DATA LOCAL INFILE 'C:/Users/Viet Nguyen/Documents/ibm_data_science/SQL_for_data_science/SQL_Portfolio project/CovidDeaths.csv'
INTO TABLE coviddeaths
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@iso_code, @continent, @location, @date, @population, @total_cases, @new_cases, @new_cases_smoothed, @total_deaths, @new_deaths, @new_deaths_smoothed, @total_cases_per_million, @new_cases_per_million, @new_cases_smoothed_per_million, @total_deaths_per_million, @new_deaths_per_million, @new_deaths_smoothed_per_million, @reproduction_rate, @icu_patients, @icu_patients_per_million, @hosp_patients, @hosp_patients_per_million, @weekly_icu_admissions, @weekly_icu_admissions_per_million, @weekly_hosp_admissions, @weekly_hosp_admissions_per_million)
SET iso_code = NULLIF(@iso_code,''),
    continent = NULLIF(@continent,''),
    location = NULLIF(@location,''),
    date = str_to_date(@date, '%d/%m/%Y'),
    population = NULLIF(@population,''),
    total_cases = NULLIF(@total_cases,''),
    new_cases = NULLIF(@new_cases,''),
    new_cases_smoothed = NULLIF(@new_cases_smoothed,''),
    total_deaths = NULLIF(@total_deaths,''),
    new_deaths = NULLIF(@new_deaths,''),
    new_deaths_smoothed = NULLIF(@new_deaths_smoothed,''),
    total_cases_per_million = NULLIF(@total_cases_per_million,''),
    new_cases_per_million = NULLIF(@new_cases_per_million,''),
    new_cases_smoothed_per_million = NULLIF(@new_cases_smoothed_per_million,''),
    total_deaths_per_million = NULLIF(@total_deaths_per_million,''),
    new_deaths_per_million = NULLIF(@new_deaths_per_million,''),
    new_deaths_smoothed_per_million = NULLIF(@new_deaths_smoothed_per_million,''),
    reproduction_rate = NULLIF(@reproduction_rate,''),
    icu_patients = NULLIF(@icu_patients,''),
    icu_patients_per_million = NULLIF(@icu_patients_per_million,''),
    hosp_patients = NULLIF(@hosp_patients,''),
    hosp_patients_per_million = NULLIF(@hosp_patients_per_million,''),
    weekly_icu_admissions = NULLIF(@weekly_icu_admissions,''),
    weekly_icu_admissions_per_million = NULLIF(@weekly_icu_admissions_per_million,''),
    weekly_hosp_admissions = NULLIF(@weekly_hosp_admissions,''),
    weekly_hosp_admissions_per_million = NULLIF(@weekly_hosp_admissions_per_million,'');
  */  

/*-- Loading data from CovidVaccines

LOAD DATA LOCAL INFILE 'C:/Users/Viet Nguyen/Documents/ibm_data_science/SQL_for_data_science/SQL_Portfolio project/CovidVaccinations.csv'
INTO TABLE covidvaccines
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@iso_code, @continent, @location, @date, @total_tests, @new_tests, @total_tests_per_thousand, @new_tests_per_thousand, @new_tests_smoothed, @new_tests_smoothed_per_thousand, @positive_rate, @tests_per_case, @tests_units, @total_vaccinations, @people_vaccinated, @people_fully_vaccinated, @total_boosters, @new_vaccinations, @new_vaccinations_smoothed, @total_vaccinations_per_hundred, @people_vaccinated_per_hundred, @people_fully_vaccinated_per_hundred, @total_boosters_per_hundred, @new_vaccinations_smoothed_per_million, @new_people_vaccinated_smoothed, @new_people_vaccinated_smoothed_per_hundred, @stringency_index, @population_density, @median_age, @aged_65_older, @aged_70_older, @gdp_per_capita, @extreme_poverty, @cardiovasc_death_rate, @diabetes_prevalence, @female_smokers, @male_smokers, @handwashing_facilities, @hospital_beds_per_thousand, @life_expectancy, @human_development_index, @excess_mortality_cumulative_absolute, @excess_mortality_cumulative, @excess_mortality, @excess_mortality_cumulative_per_million)
SET iso_code = NULLIF(@iso_code, ''),
	continent = NULLIF(@continent, ''),
	location = NULLIF(@location, ''),
	date = STR_TO_DATE(@date, '%d/%m/%Y'),
	total_tests = NULLIF(@total_tests, ''),
	new_tests = NULLIF(@new_tests, ''),
	total_tests_per_thousand = NULLIF(@total_tests_per_thousand, ''),
	new_tests_per_thousand = NULLIF(@new_tests_per_thousand, ''),
	new_tests_smoothed = NULLIF(@new_tests_smoothed, ''),
	new_tests_smoothed_per_thousand = NULLIF(@new_tests_smoothed_per_thousand, ''),
	positive_rate = NULLIF(@positive_rate, ''),
	tests_per_case = NULLIF(@tests_per_case, ''),
	tests_units = NULLIF(@tests_units, ''),
	total_vaccinations = NULLIF(@total_vaccinations, ''),
	people_vaccinated = NULLIF(@people_vaccinated, ''),
	people_fully_vaccinated = NULLIF(@people_fully_vaccinated, ''),
	total_boosters = NULLIF(@total_boosters, ''),
	new_vaccinations = NULLIF(@new_vaccinations, ''),
	new_vaccinations_smoothed = NULLIF(@new_vaccinations_smoothed, ''),
	total_vaccinations_per_hundred = NULLIF(@total_vaccinations_per_hundred, ''),
	people_vaccinated_per_hundred = NULLIF(@people_vaccinated_per_hundred, ''),
	people_fully_vaccinated_per_hundred = NULLIF(@people_fully_vaccinated_per_hundred, ''),
	total_boosters_per_hundred = NULLIF(@total_boosters_per_hundred, ''),
	new_vaccinations_smoothed_per_million = NULLIF(@new_vaccinations_smoothed_per_million, ''),
	new_people_vaccinated_smoothed = NULLIF(@new_people_vaccinated_smoothed, ''),
	new_people_vaccinated_smoothed_per_hundred = NULLIF(@new_people_vaccinated_smoothed_per_hundred, ''),
	stringency_index = NULLIF(@stringency_index, ''),
	population_density = NULLIF(@population_density, ''),
	median_age = NULLIF(@median_age, ''),
	aged_65_older = NULLIF(@aged_65_older, ''),
	aged_70_older = NULLIF(@aged_70_older, ''),
	gdp_per_capita = NULLIF(@gdp_per_capita, ''),
	extreme_poverty = NULLIF(@extreme_poverty, ''),
	cardiovasc_death_rate = NULLIF(@cardiovasc_death_rate, ''),
	diabetes_prevalence = NULLIF(@diabetes_prevalence, ''),
	female_smokers = NULLIF(@female_smokers, ''),
	male_smokers = NULLIF(@male_smokers, ''),
	handwashing_facilities = NULLIF(@handwashing_facilities, ''),
	hospital_beds_per_thousand = NULLIF(@hospital_beds_per_thousand, ''),
	life_expectancy = NULLIF(@life_expectancy, ''),
	human_development_index = NULLIF(@human_development_index, ''),
	excess_mortality_cumulative_absolute = NULLIF(@excess_mortality_cumulative_absolute, ''),
	excess_mortality_cumulative = NULLIF (@excess_mortality_cumulative, ''),
	excess_mortality = NULLIF (@excess_mortality, ''),
	excess_mortality_cumulative_per_million = NULLIF (@excess_mortality_cumulative_per_million, '');
*/

/* 
Testing our data
*/
-- Selecting and testing coviddeath 
Select * from coviddeaths;

-- Selecting and testing covidvaccines
select * from covidvaccines;

-- Selecting covidvaccines between two dates to match the result with the CSV.file (It does)
SELECT *
FROM covidvaccines
WHERE date BETWEEN STR_TO_DATE('2021/01/01', '%Y/%m/%d') AND STR_TO_DATE('2021/03/31', '%Y/%m/%d')
  AND iso_code = 'Col'
  Order by date;
  
-- Selecting coviddeaths between two dates to match the result with the CSV.file (It does)
SELECT *
FROM coviddeaths
WHERE date BETWEEN STR_TO_DATE('2021/01/01', '%Y/%m/%d') AND STR_TO_DATE('2021/03/31', '%Y/%m/%d')
  AND iso_code = 'Col'
  Order by date;
  
-- selecting the wanted data
Select Location, date, Total_cases, new_cases, total_deaths, population
From coviddeaths
order by 1,2;

-- Total cases vs total deaths in Denmark
-- Peak percentage of likelyhood of dying if infected
Select Location, date, Total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From coviddeaths
Where location like '%Denmark%'
order by deathpercentage desc;

-- Looking at total cases vs population, by showing what percentage of the population was infected
Select Location, date, Total_cases, population, (total_cases/population)*100 as InfectedPercentage
From coviddeaths
Where location like '%Denmark%'
order by 1,2;


/*
Working with Infection numbers grouped by country
*/

-- Showing countries with highest infected count
Select location, Max(total_cases) as TotalInfected
From coviddeaths
Where continent is not null
Group by location 
Order by  TotalInfected desc;

-- Creating view
create view InfectionCount as
Select location, Max(total_cases) as TotalInfected
From coviddeaths
Where continent is not null
Group by location 
Order by  TotalInfected desc;

-- Looking at countries with highest infection ratio compared to population and sorting by highest infected percentage
Select Location, max(Total_cases) as MaxInfectionCount, population, MAX((total_cases/population))*100 as InfectedPercentage
From coviddeaths
Where continent is not null
Group by location, population
order by InfectedPercentage desc;

-- Creating view
create view InfectionRate as
Select Location, max(Total_cases) as MaxInfectionCount, population, MAX((total_cases/population))*100 as InfectedPercentage
From coviddeaths
Where continent is not null
Group by location, population
order by InfectedPercentage desc;


/* 
Working with Death numbers grouped by country
*/

-- Showing countries with highest death count
Select location, max(total_deaths) as  TotalDeathCount
From coviddeaths
Where continent is not null
Group by location 
Order by  TotalDeathCount desc;

-- Creating view
create view DeathCount as
Select location, max(total_deaths) as  TotalDeathCount
From coviddeaths
Where continent is not null
Group by location 
Order by  TotalDeathCount desc;


-- Showing countries with highest death ratio by population
Select Location, max(Total_deaths) as MaxDeathCount, population, MAX((total_deaths/population))*100 as DeathPercentage
From coviddeaths
Where continent is not null
Group by location, population
order by DeathPercentage desc;

-- Creating view
create view Deathrate as
Select Location, max(Total_deaths) as MaxDeathCount, population, MAX((total_deaths/population))*100 as DeathPercentage
From coviddeaths
Where continent is not null
Group by location, population
order by DeathPercentage desc;

-- Showing countries with highest death to infected ratio
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
WHERE continent IS NOT NULL
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

-- Creating view
create view InfectionDeathrate as
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
WHERE continent IS NOT NULL
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

/*
Working with Infection numbers grouped by continent
*/
-- Showing continent with highest infected count
Select location, Max(total_cases) as TotalInfected
From coviddeaths
Where continent is null and location not like '%income%'
Group by location 
Order by  Totalinfected desc;

-- Creating view
create view continentinfectioncount as
Select location, Max(total_cases) as TotalInfected
From coviddeaths
Where continent is null and location not like '%income%'
Group by location 
Order by  Totalinfected desc;

-- Looking at continent with highest infection ratio compared to population and sorting by highest infected percentage
Select Location, max(Total_cases) as MaxInfectionCount, population, MAX((total_cases/population))*100 as InfectedPercentage
From coviddeaths
Where continent is null and location not like '%income%'
Group by location, population
order by InfectedPercentage desc;

-- Creating view
create view continentinfectionrate as
Select Location, max(Total_cases) as MaxInfectionCount, population, MAX((total_cases/population))*100 as InfectedPercentage
From coviddeaths
Where continent is null and location not like '%income%'
Group by location, population
order by InfectedPercentage desc;

/*
Working with Death numbers grouped by continent
*/
-- Selecting total death count by continent
Select location, max(total_deaths) as  TotalDeathCount
From coviddeaths
Where continent is null and location not like '%income%'
Group by location 
Order by  TotalDeathCount desc;

-- Creating view
create view continentdeathcount as
Select location, max(total_deaths) as  TotalDeathCount
From coviddeaths
Where continent is null and location not like '%income%'
Group by location 
Order by  TotalDeathCount desc;


-- Showing continent with highest death ratio by population
Select Location, max(Total_deaths) as MaxDeathCount, population, MAX((total_deaths/population))*100 as DeathPercentage
From coviddeaths
Where continent is null and location not like '%income%'
Group by location, population
order by DeathPercentage desc;

-- Creating view
create view continentdeathrate as
Select Location, max(Total_deaths) as MaxDeathCount, population, MAX((total_deaths/population))*100 as DeathPercentage
From coviddeaths
Where continent is null and location not like '%income%'
Group by location, population
order by DeathPercentage desc;

-- Showing continent with highest death to infected ratio
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
Where continent is null and location not like '%income%'
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

-- Creating view
create view continentinfectiondeathrate as
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
Where continent is null and location not like '%income%'
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

/*
Working with Infection numbers grouped by income
*/

-- Showing continent with highest infected count by income
Select location, Max(total_cases) as TotalInfected
From coviddeaths
Where continent is null and location like '%income%'
Group by location 
Order by  Totalinfected desc;

-- Looking at continent with highest infection ratio compared to population and sorting by highest infected percentage
Select Location, max(Total_cases) as MaxInfectionCount, population, MAX((total_cases/population))*100 as InfectedPercentage
From coviddeaths
Where continent is null and location like '%income%'
Group by location, population
order by InfectedPercentage desc;

/*
Working with death numbers grouped by income
*/

-- Selecting total death count by income
Select location, max(total_deaths) as  TotalDeathCount
From coviddeaths
Where continent is null and location like '%income%'
Group by location 
Order by  TotalDeathCount desc;

-- Showing income with highest death ratio by population
Select Location, max(Total_deaths) as MaxDeathCount, population, MAX((total_deaths/population))*100 as DeathPercentage
From coviddeaths
Where continent is null and location like '%income%'
Group by location, population
order by DeathPercentage desc;

-- Showing income with highest death to infected ratio
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
Where continent is null and location like '%income%'
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

/* 
Global numbers
*/

-- Showing continent with highest death to infected ratio
SELECT location, MAX(total_deaths) AS MaxDeathCount, population, max(total_cases) AS TotalCases,
(MAX(total_deaths) / max(total_cases))*100 AS DeathToInfectedPercentage
FROM coviddeaths
Where continent is null and location not like '%income%'
GROUP BY location, population
ORDER BY DeathToInfectedPercentage DESC;

-- Showing Total deathrate worldwide
SELECT 
  Location, 
  max(Total_Cases) AS Total_Cases, 
  Max(Total_Deaths) AS Total_Deaths,
  (Max(Total_Deaths)/ max(Total_Cases))*100 as Deathrate
FROM CovidDeaths 
WHERE Location = 'World';

-- Creating view
Create view WorldData as
SELECT 
  Location, 
  max(Total_Cases) AS Total_Cases, 
  Max(Total_Deaths) AS Total_Deaths,
  (Max(Total_Deaths)/ max(Total_Cases))*100 as Deathrate
FROM CovidDeaths 
WHERE Location = 'World';

/*
Working with joined tables
*/
-- Looking at total population vs vaccinations
Select  dea.continent, dea.location, dea.date, vac.new_vaccinations,
sum(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.date) as SummedVaccinations
From coviddeaths as dea
join covidvaccines as vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null 
order by 2,3;

/*
Creating a temp table from SummedVaccinations 
*/

-- Dropping existing tables with matching name
Drop table if exists summed_vaccinations;
CREATE temporary table summed_vaccinations (
  continent VARCHAR(255),
  location VARCHAR(255),
  population bigint, 
  date DATE,
  new_vaccinations BIGINT,
  SummedVaccinations BIGINT
)
-- Inserting prior population vs vaccination table 
Select  dea.continent, dea.location, dea.population, dea.date, vac.new_vaccinations,
sum(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.date) as SummedVaccinations
From coviddeaths as dea
join covidvaccines as vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null;

-- Testing new temp table
Select * from summed_vaccinations
where new_vaccinations is not null;


-- Selecting vaccination ratio by country
Select *, (SummedVaccinations/population)*100
from summed_vaccinations;













