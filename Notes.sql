
/*
Case:
	Three entity --> need to resolve the many to many. Relational database management systems can’t house M:M relationships.

	To investigate:
		How does FK constraints operate?
	
Notes:
	Sequencing is NOT in the test.

	No Boolean in Oracle... use "Char".

	On the last attribute listed, don't put a comma at the end.
	
	
	
	*/

CREATE TABLE Event
(
Event_ID    NUMBER NOT NULL,
Event_Name    VARCHAR2(10) NOT NULL,
Event_Date     DATE NOT NULL,
Event_Time          DATE NOT NULL,
Event_Ph_Dr_Loc       VARCHAR2(12) NOT NULL,

  
CONSTRAINT PK_Event PRIMARY KEY (Event_ID)
);


CREATE TABLE Event_Organiser_History
(
Event_Org_Hist_ID NUMBER(10) NOT NULL,
Event_ID NUMBER,
Note VARCHAR2(6),


CONSTRAINT PK_Event_Organiser_History PRIMARY KEY (Event_Org_Hist_ID),
CONSTRAINT FK_Event_ID FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);
