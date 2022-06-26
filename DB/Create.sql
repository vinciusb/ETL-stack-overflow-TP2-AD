CREATE TABLE PESSOA(
	Id_Pessoa INTEGER PRIMARY KEY,
	Country text NOT NULL,
	US_State text,
	UK_Country text,
	EdLevel integer NOT NULL,
	Age text,
	Gender text,
	Trans text,
	Sexuality text,
	Ethnicity text,
	Accessibility text,
	MentalHealth text
);

CREATE TABLE TRABALHO(
	Id_Trabalho INTEGER PRIMARY KEY,
	MainBranch text,
	Employment text,
	OrgSize text,
	Currency text,
	CompTotal BIGINT,
	CompFreq text
);

CREATE TABLE STACK_OVERFLOW(
	Id_StackOverflow INTEGER PRIMARY KEY,
	VisitFreq text,
	Account text,
	PartFreq text,
	Comm text,
	OtherComms text,
	Id_stuck integer,

	FOREIGN KEY(Id_stuck) REFERENCES STUCK(Id_stuck)
);

CREATE TABLE STUCK(
	Id_stuck INTEGER PRIMARY KEY,
	video boolean,
	panic boolean,
	game boolean,
	meditate boolean,
	coworker boolean,
	stack_overflow boolean,
	work boolean,
	walk boolean,
	google boolean
);

CREATE TABLE PROGRAMADOR(
	Id_Programador INTEGER PRIMARY KEY,
	Age1stCode text,
	LearnCode text,
	YearsCode text,
	YearsCodePro text,
	DevType text,
	OpSys text,
	Id_languages integer,

	FOREIGN KEY(Id_languages) REFERENCES LANGUAGES(Id_languages)
);

CREATE TABLE LANGUAGES(
	Id_languages INTEGER PRIMARY KEY,
	JS boolean,
	HTML_CSS boolean,
	PYTHON boolean,
	_SQL boolean,
	JAVA boolean,
	NODE_JS boolean,
	TYPE_SCIPT boolean,
	CS boolean,
	BASH boolean,
	CPP boolean,
	PHP boolean,
	C boolean
);

CREATE TABLE FATO_USO_STACK_OVERFLOW(
	Id_Pessoa INTEGER,
	Id_Trabalho INTEGER,
	Id_StackOverflow INTEGER,
	Id_Programador INTEGER,

	PRIMARY KEY (Id_Pessoa, Id_Trabalho, Id_StackOverflow, Id_Programador),
	
	FOREIGN KEY(Id_Pessoa) REFERENCES PESSOA(Id_Pessoa),
	FOREIGN KEY(Id_Trabalho) REFERENCES TRABALHO(Id_Trabalho),
	FOREIGN KEY(Id_StackOverflow) REFERENCES STACK_OVERFLOW(Id_StackOverflow),
	FOREIGN KEY(Id_Programador) REFERENCES PROGRAMADOR(Id_Programador)
);