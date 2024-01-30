the_trip = input('your_trip: ', 's');
your_mils = input('your_mils: ');
switch the_trip
    case 'car'
        cost = your_mils * 10;
        disp(['The cost of the trip is: ', num2str(cost)]);
    case 'train'
        cost = your_mils * 11;
        disp(['The cost of the trip is: ', num2str(cost)]);
    case 'bus'
        cost = your_mils * 12;
        disp(['The cost of the trip is: ', num2str(cost)]);
    case 'airplane'
        cost = your_mils * 20;
        disp(['The cost of the trip is: ', num2str(cost)]);
    otherwise
        disp('Unavailable trip');
end