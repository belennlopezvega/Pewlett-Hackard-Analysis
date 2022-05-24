# Pewlett Hackard Analysis

## Analysis Overview

The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program as we are anticipating a "silver tsunami" due to the high number of current employees reaching retirement age. We are using SQL for this analysis, our results are below. 

## Results

### The 4 major points/discoveries of our analysis are below along with supporting images: 

#### Retirement Titles
* Many of our employees born between 1952 and 1955 have had multiple positions during their time at Pewlett Hackard as seen in the retirement_titles tables. 
![This is an image](https://github.com/belennlopezvega/Pewlett-Hackard-Analysis/blob/main/images/%20retirement_titles_image.png)

#### Unique Titles
* As seen in the unique_titles table, many of our current employees born between 1952 and 1955 are in Senior positions, or Engineers. Those are high value positions that we will have to fill as employees start retiring. 
![This is an image](https://github.com/belennlopezvega/Pewlett-Hackard-Analysis/blob/main/images/unique_titles_image.png)

#### Retiring Titles
* To go off of the last point and looking at the retiring_titles table, most of our upcoming retirees are Senior Engineers, there are approximately 25,916. Senior Staff follows closely behind, then there's a drop in number to 9,285 Engineers nearing retirement, and after Staff, Tecnique Leader, Assistant Engineer, and Managers follows, respectively. 
![This is an image](https://github.com/belennlopezvega/Pewlett-Hackard-Analysis/blob/main/images/retiring_titles_image.png)

#### Mentorship Eligilibity
* There are 1,549 people eligible for the mentorship program according to the mentorship_eligibility table. 


## Summary 

Looking at our results, we will be needing to fill approximately 72,458 total roles after the "silver tsunami". We only have 1,549 employees that are qualified and retirement-ready to mentor the next generation so there wouldn't be enough employees to mentor our incoming employees. 

#### Recommendations
To get a better understanding as to what the next steps should be, I recommend finding the number of employees that are retiring the latest in the "silver tsunami" to see if they're eligible for the mentorship program. If they aren't we can prepare them to become mentors as they'll be around for a little longer than those retiring within the next few months. Another query we can run that'll give us more insight is to determine how many current employees we have that would be prepared to take on those Senior Engineer and Senior Staff roles so that we can prioritize mentoring them to step into those roles are they are already in the company. 
