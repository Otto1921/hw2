%% 3) Weather data analysis %% 
% create a file named wheather_data.txt. with the following structure: 

%Date,Temperature,Humidity,Precipitation


%B) write a matlab script that: 
% - Reads the data from 'weather_data.txt' into a cell array.


data = readcell ('weather_data.txt', 'Delimiter', ',');
% extracts data as a cell arrary and the, delmitier specifies what each
% column is seperated by individually 


%   - Extracts the numerical data into separate vectors for temperature, humidity, and precipitation.
temperature = cell2mat(data(2:end, 2));   % extracts the cel column of temperature so it skips the first row, and goes to the second column which is why 2: end 2 is there

humidity= cell2mat(data(2:end ,3)); % extracts humidity 

precipitation= cell2mat(data(2:end, 4)); % extracts precipation

%  - Calculates the average temperature, humidity, and total precipitation. 
avg_temp = mean(temperature);
avg_hum = mean(humidity);
total_precip = sum(precipitation);

%  - Saves these statistics to a new file named 'weather_summary.txt'.




fileID=fopen ('weather_summary.txt', 'w');

% creates a new file for the data 
fprintf(fileID, 'Average Temperature: %.2f\n', avg_temp);

fprintf(fileID, 'Average Humidity: %.2f\n', avg_hum);

fprintf(fileID, 'Total precipitation: %.2f\n', total_precip);
fclose(fileID); % closes after writing 