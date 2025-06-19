-- Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID,  
    CustomerID, 
    ProductID,  
    ReviewDate, 
    Rating,  
    -- Cleans up the ReviewText by replacing double spaces with single spaces to ensure the text is more readable and standardized
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    dbo.customer_reviews;  -- Specifies the source table from which to select the data
