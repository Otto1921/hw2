% Author Name: [Mark Marrone]
% Email: [Marron94@students.rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Matlab]
% Date: [October 11, 2024]


%% assignment 1 Population growth 
% a) Create a row vector `population` with this data.
% b) Calculate the year-over-year growth rate and store it in a new vector `growth_rate`.
% c) Create a 2x5 matrix `pop_data` where the first row is the `population` vector and the second row is the `growth_rate` vector.
% d)use fprintf to print a formatted table showing each years population
% growth rate 
% the population was over 5 years the data was 5000, 5200, 5350, 5600, 5800

% A small town has recorded its population over the last 5 years. The data for each year is: [5000, 5200, 5350, 5600, 5800].

% a) Create a row vector `population` with this data.
%population = [5000 5200 5350 5600 5800];
% b) Calculate the year-over-year growth rate and store it in a new vector `growth_rate`.

%growth_rate = (population(2:end) - population(1:end-1)) %./ population(1:end-1);


% c) Create a 2x5 matrix `pop_data` where the first row is the `population` vector and the second row is the `growth_rate` vector.
%pop_data = [population; [0 growth_rate]]


% d) Use `fprintf` to print a formatted table showing each year's population and growth rate.

%  FOr year 1 the population was 5000 and hte growth rate was 0
%for i=1:length(population)
  
%    fprintf('the year is %d the population was %d the growth was %f \n', i, pop_data(1, i), pop_data(2, i))
%end




%% 2 simple encryption function 
%a) Create a function named `caesar_cipher` that takes two inputs:
%   - A string of lowercase letters (the message to encrypt)
%   - An integer shift value between 1 and 25
%   The function should return the encrypted message using the Caesar cipher method.

%b) In the main script:
%   - Prompt the user to enter a message and a shift value.

%shift_value= input('what message do you want encrypted? (lowecase letters)\n')

%   - Call the `caesar_cipher` function with these inputs.
%caesar_cipher= 

%   - Print the original message and the encrypted message.

% caesar_cipher =   


% Main script
% Prompt the user for input
%message = input('Enter a message (lowercase letters only): ', 's');

%shift = input('Enter the shift value (between 1 and 25): ');

% Call the Caesar cipher function
% encrypted_message =  ""; 
 %caesar_cipher(message, shift);   
    % Loop through each character in the message
%    for i = 1:length(message)
        % Get the ASCII value of the current character
%        char_value = double(message(i));
        
        % Apply the Caesar cipher shift
 %       new_char_value = char_value + shift;
        
        % Wrap around if the new character goes beyond 'z'
 %       if new_char_value > double('z')
 %           new_char_value = new_char_value - 26;
 %       end
        
        % Append the encrypted character to the result
 %       encrypted_message = append(encrypted_message, char(new_char_value));
 %   end


% Display the original and encrypted messages
%fprintf('Original message: %s\n', message);
%fprintf('encrypted message: %s\n', encrypted_message);


















%% 3) Weather data analysis %% 
% create a file named wheather_data.txt. with the following structure: 

%Date,Temperature,Humidity,Precipitation
%2024-09-01,25.5,60,0
%2024-09-02,26.0,65,5
%2024-09-03,24.5,70,10
%2024-09-04,23.0,75,15
%2024-09-05,22.5,80,20

%B) write a matlab script that: 
% - Reads the data from 'weather_data.txt' into a cell array.

weather= weather_data.txt

function data = read_from_file(weather)
   fileID = fopen(weather, 'r');
   data = fscanf(fileID, '%f', [1 Inf])';
   fclose(fileID);
end


%   - Extracts the numerical data into separate vectors for temperature, humidity, and precipitation.

%  - Calculates the average temperature, humidity, and total precipitation. 
avg_temp = mean();
max_temp = max();
min_temp = min();

%  - Saves these statistics to a new file named 'weather_summary.txt'.

%not finished



%%4 - Solar System Visualization (15 points)
%Create a visualization of the solar system's planets:

%a) Create two vectors:
%   - `planet_distances`: containing the average distance of each planet from the sun in astronomical units (AU).
%   - `planet_sizes`: containing the relative sizes of the planets (use Earth = 1 as a reference).

%b) Create a figure with two subplots:
%   - In the first subplot, create a scatter plot of planet distances vs. planet sizes. Use different colors for each planet and adjust the marker sizes to reflect the planet sizes.
%   - In the second subplot, create a bar chart of planet distances.

%c) Add appropriate titles, labels, and a legend to both subplots.
%d) Save the figure as an image file named 'solar_system_visualization.png'.





%%5 - Stock Market Analysis (15 points)
%a) Create a file named 'stock_data.txt' with daily closing prices for a fictitious stock over 30 days (one price per line).

%b) Write a MATLAB script that:
%   - Reads the stock data from 'stock_data.txt'.


%   - Calculates and prints:
%     * Average closing price


%     * Highest closing price
%     * Lowest closing price
%     * Number of days the stock price increased from the previous day
%   - Creates a line plot showing:
%     * Daily closing prices
%     * Average price as a horizontal line
%     * Highest and lowest prices as horizontal lines
%   - Adds appropriate labels, title, and legend to the plot.
%   - Saves the plot as an image file named 'stock_analysis.png'.
%   - Writes a summary of the analysis to a new file named 'stock_summary.txt'.

%not finished