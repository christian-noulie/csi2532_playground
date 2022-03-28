
-- exo 1 
CREATE TABLE  BOOK (
bookid integer ,
bookname varchar(20),
authordid integer,
amount Numeric (7,2),
rating integer,
booktype varchar (25),
CONSTRAINT book_key PRIMARY KEY (bookid),
CONSTRAINT reference_key FOREIGN KEY (authordid)  REFERENCES AUTHOR
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT rate CHECK ( rating  > 1 AND  rating <= 10  ),
CONSTRAINT check_price CHECK ( amount > 0 ),
CONSTRAINT book CHECK ( booktype  in ("Fiction-adulte", "Non-fiction-adulte", 
"Fiction-jeunesse","Non-Fiction-jeunesse"))
);

-- ex0 2 

CREATE TABLE   AUTHOR (

authorname  VARCHAR (20),
);
CREATE ASSERTION check_value CHECK 
 ( (SELECT COUNT(*) FROM BOOK  ) + (SELECT COUNT(*) FROM AUTHOR )  <= 10000

);


 -- exo 3 

 CREATE TRIGGER check_livre 
 BEFORE UPDATE  ON BOOK
 FOR EACH ROW
 EXCECUTE PROCEDURE check_book_rating() ;


 -- ex0 4  
  
  ALTER TABLE  AUTHOR 
  ADD author_sum_rating INTEGER 
  CONSTRAINT sum_rating DEFAULT (0)

 










 













