-- Without an index:
SELECT * FROM Books WHERE Author = 'Virginia Woolf';


-- Now, let's say you create an index on the Author column:
CREATE INDEX idx_author ON Books(Author);

-- With an index:
SELECT * FROM Books WHERE Author = 'Virginia Woolf';
