select covid_data.date, covid_data.cases, covid_data.deaths, vaccination_data.total_doses, vaccination_data.cumulative_total_doses
from covid_data
inner join vaccination_data
on covid_data.date = vaccination_data.date;
