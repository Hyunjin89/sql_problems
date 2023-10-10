You have a queue of people waiting to enter a cinema. Each person has a unique ticket_id, a name, and a ticket_price. The ticket_id values range from 1 to n, where n is the total number of people in the queue. People enter the cinema in ascending order of their ticket_id, starting with 1.

Your task is to find the name of the last person who can enter the cinema without the total ticket price exceeding a given budget. The first person in the queue has a ticket price that is within the budget.

Write a SQL query to find the name of the last person who can enter the cinema without exceeding the budget. The result format should be similar to the previous example.

Here's an example input and output for this problem:

+-----------+---------+--------------+
| ticket_id | name    | ticket_price |
+-----------+---------+--------------+
| 1         | Alice   | 100          |
| 2         | Bob     | 75           |
| 3         | Carol   | 120          |
| 4         | David   | 90           |
| 5         | Emma    | 60           |
| 6         | Frank   | 110          |
| 7         | Grace   | 95           |
| 8         | Henry   | 85           |
+-----------+---------+--------------+
Budget: 400

+------+
| name |
+------+
| Frank|
+------+

