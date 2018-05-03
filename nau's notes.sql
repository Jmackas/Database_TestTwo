
/*
Steps:

identify table name and attribute names by using the table creation template (at the end of this announcement)
identify NOT NULL or NULL for each attribute
identify DEFAULT value in each attribute if necessary
identify the primary key constraint
identify the foreign key constraint
identify the unique key constraint
identify the check constraint
Table Creation Template

*/

CREATE TABLE TableName

( AttributeName DataType NOT NULL DEFAULT  ,

  CONSTRAINT PrimaryKeyConstraintName PRIMARY KEY (AttributeName which is primary key),

  CONSTRAINT ForeignKeyConstraintName

    FOREIGN KEY ( AttributeName which is foreign key )

    REFERENCES ParentTableName(AttributeName in Parent Table)

  CONSTRAINT UniqueKeyConstraintName UNIQUE (AttributeName)
  CONSTRAINT CheckConstraintName CHECK (Condition)
);

/* Example: */

CREATE TABLE employees

( employee_number number(10) NOT NULL,

  employee_name varchar2(50) NOT NULL,

  department_id number(10),

  salary number(6),

  age number(2),

  CONSTRAINT employees_pk PRIMARY KEY (employee_number),

  CONSTRAINT fk_departments

    FOREIGN KEY (department_id)

    REFERENCES departments(department_id)

  CONSTRAINT employee _unique UNIQUE (employee_number)
  CONSTRAINT Check_Age CHECK (Age BETWEEN 18 AND 75)
);
