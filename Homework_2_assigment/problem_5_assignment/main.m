%%5 - Stock Market Analysis (15 points)
%a) Create a file named 'stock_data.txt' with daily closing prices for a fictitious stock over 30 days (one price per line).

%b) Write a MATLAB script that:
%   - Reads the stock data from 'stock_data.txt'.
stock_prices=100 + (200-100).*rand(30,1);



%- Reads the stock data from 'stock_data.txt'. 
fileID = fopen('stock_data.txt', 'r');  % Open the file for reading
stock_prices = fscanf(fileID, '%f');  % Read the data into a variable
fclose(fileID);  % Close the file
  
%- Calculates and prints:
   %  * Average closing price
   %  * Highest closing price
   %  * Lowest closing price
   average_price = mean(stock_prices);
   highest_price = max(stock_prices);
   lowest_price = min(stock_prices);

  %  * Number of days the stock price increased from the previous day
   price_increase_count = sum(diff(stock_prices) > 0);  
                            % 'diff' calculates day-to-day difference
  fprintf('Average Closing Price: %.2f\n', average_price)
  fprintf('Highest Closing Price: %.2f\n', highest_price)
  fprintf('Lowest Closing Price: %.2f\n', lowest_price)
  fprintf('Number of days the stock price increased: %d\n', price_increase_count')

   % - Creates a line plot showing:
   %  * Daily closing prices
   %  * Average price as a horizontal line
   %  * Highest and lowest prices as horizontal lines
figure;
plot(stock_prices, 'b', 'LineWidth', 2);  % Plot stock prices in blue
hold on;  % Hold the plot to add more lines
yline(average_price, '--g', 'Average Price', 'LineWidth', 2);  % Plot average price as green dashed line
yline(highest_price, '--r', 'Highest Price', 'LineWidth', 2);  % Plot highest price as red dashed line
yline(lowest_price, '--m', 'Lowest Price', 'LineWidth', 2);  % Plot lowest price as magenta dashed line
hold off;

  % - Adds appropriate labels, title, and legend to the plot.
xlabel('Day');
ylabel('Closing Price');
title('Stock Market Analysis');
legend('Daily Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');

  % - Saves the plot as an image file named 'stock_analysis.png'.
saveas(gcf, 'stock_analysis.png');

  % - Writes a summary of the analysis to a new file named 'stock_summary.txt'.



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
