function uniform_distribution(N)
    % Generate N random numbers between 0 and 1
    random_numbers = rand(1, N);
    
    % Divide the random numbers into 10 equally sized intervals
    intervals = linspace(0, 1, 11); % divide [0,1] into 10 intervals
    
    % Count the number of random numbers in each interval
    counts = histc(random_numbers, intervals);
    
    % Generate a bar graph
    bar(0:0.1:0.9, counts(1:10), 1);
    
    % Set axis labels and title
    xlabel('Intervals');
    ylabel('Frequency');
    title('Uniform Distribution');
    
    % Set x-axis ticks to interval midpoints
    xticks(0.05:0.1:0.95);
    
    % Display the bar graph
    grid on;
    axis tight;
end

% Example usage:
% uniform_distribution(1000);
