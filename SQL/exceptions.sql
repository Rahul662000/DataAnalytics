--  exceptions in sql

create table tutorials(
	id int primary key,
    author varchar(40),
    city varchar(40)
);

INSERT INTO tutorials (id, author, city) VALUES 
(1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'Emily Johnson', 'Chicago'),
(4, 'Michael Brown', 'Houston'),
(5, 'Chris Evans', 'Boston');

DELIMITER //

CREATE PROCEDURE ExampleProc()
BEGIN
    -- Declare a flag to indicate the end of the cursor
    DECLARE done INT DEFAULT 0;
    
    -- Declare variables to store values fetched from the cursor
    DECLARE tutorialID INT;
    DECLARE tutorialAuthor, tutorialCity VARCHAR(20);
    
    -- Declare a cursor to select data from the 'tutorials' table
    DECLARE cur CURSOR FOR 
    SELECT id, author, city FROM tutorials;
    
    -- Declare a handler to set 'done' to 1 when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    -- Open the cursor to start reading data from the 'tutorials' table
    OPEN cur;
    
    -- Start a loop to fetch data from the cursor row by row
    label: LOOP
        -- Fetch the current row into the declared variables
        FETCH cur INTO tutorialID, tutorialAuthor, tutorialCity;
        
        -- If no more rows are found, exit the loop
        IF done = 1 THEN 
            LEAVE label;
        END IF;
        
        -- Insert the fetched values into the 'customerA' table
        INSERT INTO customerA VALUES (tutorialID, tutorialAuthor, tutorialCity);
    END LOOP;
    
    -- Close the cursor to release resources
    CLOSE cur;
END //

DELIMITER ;
        
call exampleproc;

select * from customera;