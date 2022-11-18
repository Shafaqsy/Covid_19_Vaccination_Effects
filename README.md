
# Covid_19_Vaccination_Effects


[Google Slides](https://docs.google.com/presentation/d/14EUGGccU_-Y0KGT0b7jSyuWudXkL0MYvW0zuBWmmtB0/edit?usp=sharing)

[Tableau](https://public.tableau.com/app/profile/maryam.rahmani/viz/finalprojectcovid-19/relation?publish=yes)

### Selected topic
Covid 19 Vaccination Effects.
### Reason why selected the topic?
During the past three years almost everyone around the globe has been exposed to the big trauma of Covid-19 in some ways. Many people have died because of the little knowledge available of this virus at the beginning of discovery. Since this subject is very known to everyone and it is important to see the result after getting vaccination. we want to see if there's a consistance relationship with covid vaccine and number of cases of covid death.



### Description of the source of data

https://data.chhs.ca.gov/dataset/vaccine-progress-dashboard/resource/130d7ba2-b6eb-438d-a412-741bde207e1c

https://data.chhs.ca.gov/dataset/covid-19-time-series-metrics-by-county-and-state/res[…]d3-b48cdbc4be7a?view_id=be65bada-5066-47cf-8781-04c58dbbc5b4

### Questions we hope to answer with the data
 
 1- What is the impact of COVID-19 vaccination rates on mortality rates in california? 

2- What is the impact of COVID-19 vaccination rates on new case numbers in california?

### Create a mockup of a machine learning model.
We are going to use simple regression, multiple regression and random forest classification.
covid vaccination as independant variable.
mortality rate and new cases as dependant variable
### Create a mockup of a database.
First, we'll clean the data using python. We are goning to use postgress as database. We will write some query and creat tables.

##  Technologies, languages, tools, and algorithms used throughout the project 
### Decide which technologies will be used.

Python

Pandas

Machine Learning Model (linear regression)

Tableau to isualize our results

Postgress

Jupyter Notebook

Visual Studio Code

Gitbash

 ## Result of analysis
 The ARIMA model was able to predict a 14 day forcast for cases and mortality with surprisingly low error.
 ### Testing 1st Order Differencing Test vs ARIMA Prediction
 ![ARIMA(14day)Mortalityprediction](https://user-images.githubusercontent.com/107658895/201571922-37add657-8d13-45e7-9d64-4d5c11ac700c.png)
![ARIMA(14day)Caseprediction](https://user-images.githubusercontent.com/107658895/201572687-7ae9f95e-a9dc-4f01-91ff-e2952f1a463c.png)
 ### Actual Real World Predictions and Forecast
![ARIMA(14day)oosCaseprediction](https://user-images.githubusercontent.com/107658895/202086295-a3feb725-eba7-49e6-a5ee-1978c7437ba6.png)
![ARIMA(14day)oosDeathprediction](https://user-images.githubusercontent.com/107658895/202086321-510d33df-1588-46ad-9b33-95697b43d75f.png)


##  Recommendation for future analysis
Since COVID pandemic is so recent, it might not be the most "accurate" model for now to develop. We managed to obtain such low error results with an advanced ARIMA model with small 2 year dataset. We're sure as time progresses that a model like this will continue imporving as more data comes in. How this model was developed was for plug and play purposes. In more months to come it'd be interesting to see how accuately it can continueally predict the cases and deaths to come as people continue to get vaccinated. 

## Anything the team would have done differently 
If there was anything we would have done differently, we would've looked at trying to build a multivariate dataset trained with deep learning to predict cases and death by vaccinations depending on comorbidities. This would be the next step in enhancing the model since there has been several recent studies that show a much higher correlation when this is the case compared to a healthy individual. We hope to see an inclusive dataset like this come out to try this model. 

## Description of the data exploration phase of the project.
we decided to look for data that can measure the effects of the vaccine on case numbers and deaths. we found the data on the California Health and Human Services website. There are two sets of data that we are using from. One is the covid statistic data which includes deaths and case number and the second data is for vaccination.

## Description of the analysis phase of the project
While there was a considerable amount data regarding each individual COVID vaccine and each county, we ultimately chose to use the data for the whole state of California and the combined number of vaccines total to measure the overall effect on the state of California. Preliminary results suggest an inverse relationship between the number of deaths and the total number of vaccine doeses distributed. 

## Outline of the project (this may include images, but should be easy to follow and digest)
We will clean the data and eliminate the rows and columns that are irrelevant to our questions. Next, we will find a machine-learning model which bests fits our data; we will likely make multiple models and decide upon the best one.

## Description of preliminary data preprocessing

https://github.com/Shafaqsy/Covid_19_Vaccination_Effects/tree/sandmanN7_branch/FinalCleaning

## Description of preliminary feature engineering and preliminary feature selection, including their decision-making process 

We excluded all but 5 columns from the original data sets and many rows as well. The main reason is that we neither do not want to measure the effect of the  individual COVID shots nor measure the individual counties and age groups, but the total number of people aged 5 and older, the number of doses and cumunaltive doses they get/have and the effect of these numbers on the case numbers and number of deaths in the state overall. Also, prior correlation suggested stronger relationships between these variables. Data was cleaned and sent to SQL in order to merge. Also as a side note, due to the large number of columns and rows in the intial sets of data, only the exploration and analysis for the variables we found to be most correlated will be posted, as posting all of them would be too difficult and likely confusing for most trying to read the data points.

## Description of how data was split into training and testing sets

<img width="334" alt="target and feature" src="https://user-images.githubusercontent.com/107155888/200739585-ca9f46dc-d7da-4f84-81b8-0cf31eb669eb.png">


## Explanation of model choice, including limitations and benefits

We will be testing a random forest classifier and an ARIMA model. Random forset classifier may not be feasible due to lack of classifications. We will also test an ARIMA model, which will show the effect of time on multiple variables. ARIMA can handle multiple variables and account for time, limitations may be due to having the wrong or too many variables, and model may not account for real-world biases.

## Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
Random forest turned out a zero accuracy score. Random forest only works on classification problems so we decided to switch to an ARIMA model after some cousel from the TA since we were tackling this as a timeseries problem.

## Description of how they have trained the model thus far, and any additional training that will take place
In a timeseries ARIMA model, before we actually train the model, we have to split the data set into a training and testing section. We do this because we first train the model on the data and keep the testing section hidden from the model. Once model is ready, we ask it to make predictions on the test data and see how well it performs. We reserved the last 14 days of the dataset for testing.

##  Description and explanation of model’s confusion matrix, including final accuracy score 
Beyond visual analysis, we can use various error measures and metrics to evaluate the performance of our ARIMA model in Python. first, we need some test samples to compare our predicted samples. We can split our time-series data into train and test samples and infer the test set.
Since the objective of our model was to forecast the mortality and cases rates, there were a few different evaluation metrics we used to measure the performance of our time-series forecasting model. The models "accuracy" was determined by the following:
- Mean Absolute Error
- Mean Absolute Percentage Error
- Mean Squared Error
- Root Mean Squared Error



![image](https://user-images.githubusercontent.com/107658895/202085599-dbd7f422-8c34-445a-9153-6d226fccfc65.png)

These parameters number would tell us the performance of our predicted value compared to the ground truth. The ability of a time series forecasting model to predict the future is defined by its performance. This is frequently at the expense of being able to explain why a particular prediction was made, confidence intervals, and even a greater grasp of the problem’s underlying causes.

# Storyboard on Google Slide(s) ✓ Description of the tool(s) that will be used to create final dashboard ✓ Description of interactive element(s) 

We used Tableau for the visualization, the link to access it is on top of the page. we can clearly see the releationship between the total number of doeses and cases or deaths, the more doses we used we see that the number of deaths decreased.

