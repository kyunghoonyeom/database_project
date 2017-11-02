CREATE TABLE USER(
	username VARCHAR(100),
	password VARCHAR(100) NOT NULL,
	isAdmin BOOLEAN NOT NULL DEFAULT 0,
    isPassenger BOOLEAN NOT NULL DEFAULT 1,
	PRIMARY KEY (username)
) ENGINE = InnoDB;

CREATE TABLE PASSENGER(
	Pusername VARCHAR(100),
	Email VARCHAR(255) NOT NULL,
	PRIMARY KEY (Pusername),
	UNIQUE (Email),
	CONSTRAINT passuser_fk FOREIGN KEY (Pusername) REFERENCES USER(Username)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE BREEZECARD(
	Bnumber CHAR(16),
	Value DECIMAL(6, 2) NOT NULL DEFAULT 0,
	Pname VARCHAR(100),
	PRIMARY KEY (Bnumber),
	CHECK (Value >= 0 AND Value <= 1000),
	CONSTRAINT breezepass_fk FOREIGN KEY(Pname) REFERENCES PASSENGER(Pusername)
		ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE STATION(
	StopID VARCHAR(6),
	EnterFare DECIMAL(4, 2) NOT NULL,
	ClosedStatus BOOLEAN NOT NULL,
	isBusstop BOOLEAN NOT NULL,
	isTrainstop BOOLEAN NOT NULL,
 	PRIMARY KEY (StopID),
	CHECK(EnterFare >= .00 AND EnterFare <= 50.00)
) ENGINE = InnoDB;

CREATE TABLE TRIP(
	CurrentFare DECIMAL(4, 2) NOT NULL DEFAULT 0,
	Start_Time DATETIME,
	Bnum CHAR(16),
	SstopID VARCHAR(6) NOT NULL,
	EstopID VARCHAR(6),
	PRIMARY KEY(Start_Time, Bnum),
	CONSTRAINT bnum_fk FOREIGN KEY (Bnum) REFERENCES Breezecard(Bnumber)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT startstop_fk FOREIGN KEY(SstopID) REFERENCES STATION(StopID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT endstop_fk FOREIGN KEY(EstopID) REFERENCES STATION(StopID)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE BUS_STATION(
	BstopID VARCHAR(6) PRIMARY KEY,
	Bname VARCHAR(100) NOT NULL,
	Intersection VARCHAR(100),
	UNIQUE(Bname),
	CONSTRAINT bus_fk FOREIGN KEY(BstopID) REFERENCES STATION(StopID)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE TRAIN_STATION(
	TstopID VARCHAR(6) PRIMARY KEY,
	Tname VARCHAR(100) NOT NULL,
	UNIQUE(Tname),
	CONSTRAINT train_fk FOREIGN KEY(TstopID) REFERENCES STATION(StopID)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE CONFLICT(
	P_name VARCHAR(100),
	B_num CHAR(16),
	Date_Time DATETIME NOT NULL,
	PRIMARY KEY(P_name, B_num),
	CONSTRAINT p_name_fk FOREIGN KEY(P_name) REFERENCES PASSENGER(Pusername)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT b_num_fk FOREIGN KEY(B_num) REFERENCES BREEZECARD(Bnumber)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;