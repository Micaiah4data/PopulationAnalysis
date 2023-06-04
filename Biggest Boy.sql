select*
from [Diabetes]..['countries-table$']

--First POV

select country, rank, Cca3, Netchange
from [Diabetes]..['countries-table$']

-- Second POV

select country, area, LandAreaKm
from [Diabetes]..['countries-table$']

--Thrid POV

select country, growthrate , WorldPercentage, Density
from [Diabetes]..['countries-table$']

--Fourth POV

select  country, place, pop1980, pop2000, pop2010, pop2022, pop2023
from [Diabetes]..['countries-table$']

--Fifth POV

select  country, area,  min(pop1980) as Leastpop1980
from [Diabetes]..['countries-table$']
group by country, area

select  country, area,  min(pop2000) as Leastpop2000
from [Diabetes]..['countries-table$']
group by country, area


select  country, area,  min(pop2010) as LeastPop2010
from [Diabetes]..['countries-table$']
group by country, area


select  country, area,   min(pop2022) as LeastPop2022 
from [Diabetes]..['countries-table$']
group by country, area

select  country, area,   min (pop2023) as LeastPOP2023
from [Diabetes]..['countries-table$']
group by country, area

select country, area, min ((pop1980*pop2000*pop2010*pop2022*pop2023))/5 as AvGLeastPopIn43Years
from [Diabetes]..['countries-table$']
group by country, area

select country, area, min ((pop1980*pop2000*pop2010*pop2022*pop2023))/5 as AvGLeastPopIn43Years
from [Diabetes]..['countries-table$']
where country like '%Nigeria%'
group by country, area

--sixth POV

select country, area, max ((pop1980*pop2000*pop2010*pop2022*pop2023))/5 as AvGHIghestPopIn43Years
from [Diabetes]..['countries-table$']
group by country, area
order by AvGHIghestPopIn43Years desc

select country, area, max ((pop1980*pop2000*pop2010*pop2022*pop2023))/5 as AvGMaxPopIn43Years
from [Diabetes]..['countries-table$']
where country like '%Nigeria%'
group by country, area

--seventh POV

select country, area, min ((pop2030*pop2050))/2 as AvGMinPopInTheFuture
from [Diabetes]..['countries-table$']
group by country, area

--Last POV

select country, area, max ((pop2030*pop2050))/2 as AvGMaxPopInTheFuture
from [Diabetes]..['countries-table$']
group by country, area
order by AvGMaxPopInTheFuture desc