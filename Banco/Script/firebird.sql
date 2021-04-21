
CREATE TABLE  usuario (
	id_usr	int,
	usuario	VARCHAR(100) NOT NULL,
	login	VARCHAR(30) NOT NULL,
	pass	VARCHAR(100) NOT NULL,
	id_grp	int NOT NULL,
	PRIMARY KEY(id_usr )
);
CREATE TABLE  grupo (
	id_grp	int,
	grupo	VARCHAR(30) NOT NULL,
	PRIMARY KEY(id_grp)
);
COMMIT;
