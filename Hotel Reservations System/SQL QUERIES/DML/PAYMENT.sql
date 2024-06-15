USE Hotels_Reservation;
GO

CREATE OR ALTER PROCEDURE INSERTION_PAYMENT
(
  @PAYMENT_ID INT,
  @AMOUNT FLOAT,
  @PAY_DATE DATETIME,
  @PAYMENT_METHOD VARCHAR(50)
)
AS
INSERT INTO [Booking].[Payment]
VALUES 
(
  @PAYMENT_ID,
  @AMOUNT,
  @PAY_DATE,
  @PAYMENT_METHOD
)

GO

EXEC INSERTION_PAYMENT
@PAYMENT_ID = 1,
@AMOUNT = 512.15,
@PAY_DATE = '2024-06-08 16:09:53.143',
@PAYMENT_METHOD = 'CASH'

EXEC INSERTION_PAYMENT
@PAYMENT_ID = 2,
@AMOUNT = 402.15,
@PAY_DATE = '2024-06-10 16:09:53.143',
@PAYMENT_METHOD = 'VEZA'


EXEC INSERTION_PAYMENT
@PAYMENT_ID = 3,
@AMOUNT = 300.15,
@PAY_DATE = '2024-06-10 16:09:53.143',
@PAYMENT_METHOD = 'CASH'


EXEC INSERTION_PAYMENT
@PAYMENT_ID = 4,
@AMOUNT = 587.5,
@PAY_DATE = '2024-06-10 16:09:53.143',
@PAYMENT_METHOD = 'VEZA'


EXEC INSERTION_PAYMENT
@PAYMENT_ID = 5,
@AMOUNT = 1000,
@PAY_DATE = '2024-06-10 16:09:53.143',
@PAYMENT_METHOD = 'CASH'


EXEC INSERTION_PAYMENT
@PAYMENT_ID = 6,
@AMOUNT = 478.15,
@PAY_DATE = '2024-06-10 16:09:53.143',
@PAYMENT_METHOD = 'VEZA'
SELECT (GETDATE())
