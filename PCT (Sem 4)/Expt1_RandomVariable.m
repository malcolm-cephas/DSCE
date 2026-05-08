% Experiment No: 1
% Declare a random variable for marks attained by 50 students in communication subject. 
% Plot PDF, CDF and calculate mean, variance and standard deviation of the RV 

% Generate random marks for 50 students 
numStudents = 50; 
rangeMin = 0; 
rangeMax = 50; 
marks = randi([rangeMin, rangeMax], numStudents, 1); 
 
% Calculate PDF 
pdf = histcounts(marks, rangeMin:rangeMax, 'Normalization', 'probability'); 
 
% Calculate CDF 
cdf = cumsum(pdf); 
 
% Calculate mean 
meanValue = mean(marks); 
 
% Calculate variance 
varianceValue = var(marks); 
 
% Calculate standard deviation 
stdDeviation = std(marks); 

% Display the results 
disp('Marks:'); 
disp(marks'); 
disp('PDF:'); 
disp(pdf); 
disp('CDF:'); 
disp(cdf); 
disp('Mean:'); 
disp(meanValue); 
disp('Variance:'); 
disp(varianceValue); 
disp('Standard Deviation:'); 
disp(stdDeviation); 
bar(pdf) 
xlabel('Marks');
ylabel('Probability');
title('PDF of Student Marks');
