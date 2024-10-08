CREATE TABLE worker (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) BETWEEN 2 AND 1000),
    BIRTHDAY DATE NOT NULL CHECK (EXTRACT(YEAR FROM BIRTHDAY) > 1900),
    LEVEL VARCHAR(10) NOT NULL CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    SALARY INT NOT NULL CHECK (SALARY BETWEEN 100 AND 100000)
);

CREATE TABLE client (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) BETWEEN 2 AND 1000)
);

CREATE TABLE project (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) BETWEEN 2 AND 1000),--завдання 5 не працюе без цього
    CLIENT_ID INT REFERENCES client(ID),
    START_DATE DATE NOT NULL,
    FINISH_DATE DATE NOT NULL,
    CHECK (FINISH_DATE > START_DATE)
);

CREATE TABLE project_worker (
    PROJECT_ID INT REFERENCES project(ID),
    WORKER_ID INT REFERENCES worker(ID),
    PRIMARY KEY (PROJECT_ID, WORKER_ID)
);