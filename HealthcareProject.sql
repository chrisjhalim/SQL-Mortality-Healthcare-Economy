-- GDP per Capita vs. Healthcare Expenditure
Select * FROM healthvsgdp 
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL;

-- GDP Per Capita Ordered per Year per Country
Select entity, year, gdp_per_capita FROM healthvsgdp
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL
ORDER BY year;

-- Healthcare Expenditure Per Capita per Year per Country
Select entity, year, health_expenditure_per_capita FROM healthvsgdp
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL
ORDER BY year;

-- GDP to Healthcare Expenditure Ratio per Year per Country (How many percentage of GDP per Capita per year is the Healthcare Expenditure per Capita for Each Country and Each Year?)
Select entity, year, gdp_per_capita, health_expenditure_per_capita, (health_expenditure_per_capita/gdp_per_capita)*100 as ratio_health_gdp FROM healthvsgdp
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL
ORDER BY year;

-- GDP per Capita per Continent
Select continent, year, gdp_per_capita FROM healthvsgdp
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL
ORDER BY year;

-- Healthcare Expenditure per Capita per Continent
Select continent, year, health_expenditure_per_capita FROM healthvsgdp
where continent IS NOT NULL AND gdp_per_capita IS NOT NULL AND health_expenditure_per_capita IS NOT NULL
ORDER BY year;

-- Healthcare Expenditure vs. Children Mortality
Select * FROM healthvsmort 
where continent IS NOT NULL AND mortality_rate IS NOT NULL AND health_expenditure_per_capita IS NOT NULL;
