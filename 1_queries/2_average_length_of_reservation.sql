
-- Our product managers want a query to see the average duration of a reservation.
-- Get the average duration of all reservations.

SELECT avg(end_date - start_date) as avg_duration
FROM reservations;