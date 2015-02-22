USE arma3life;
ALTER TABLE players MODIFY COLUMN adminlevel ENUM('0','1','2','3','4','5') NOT NULL DEFAULT '0';