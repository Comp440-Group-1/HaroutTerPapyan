INSERT INTO Platform
VALUES (1, 'Windows'), (2, 'Linux');

INSERT INTO Product
VALUES (1, 'EHR System');

INSERT INTO Release
VALUES (1,1,1), (2,1,1), (3,1,2), (4,1,1), (5,1,2);

INSERT INTO CustomerRelease
VALUES (1,1,1,'1/1/2000'), (2,1,1,'1/1/2000'), (3,1,2,'5/1/2000'), (4,1,1,'5/1/2000'), (5,1,2,'6/13/2000');

INSERT INTO ProductVersion
Values (1.1), (1.2), (2.1), (2.2);

INSERT INTO Feature
VALUES (1.1,'login module'), (1.2,'login module'), (2.1,'patient authentication'), (2.2,'patient e-bil');

INSERT INTO VersionFeature
VALUES (1,1.1), (2,1.2), (3,2.1), (4,2.2);

INSERT INTO ReleaseVersion
VALUES (1.1,1.1,1,1), (1.2,1.1,1,2), (2.1,2.1,1,1), (2.2,2.1,1,2), (2.2,2.2,1,2);

INSERT INTO FileDownload
VALUES (1,'EHR System');

INSERT INTO Customer
VALUES (1,'Peter', 'Smith'), (2,'Maria', 'Bounte'), (3,'David', 'Sommerset'), (4,'Maria', 'Bounte');

INSERT INTO Phone
VALUES (1,'1-123-485-8973', 'work'), (2,'1-28-397863896', 'work'), (3,'179-397-87968', 'mobile'), (4,'1-178-763-98764', 'mobile');

INSERT INTO Company
VALUES (1,'ABC records', '123 Privet Street Los Angeles CA 91601'), (2,'ZYX Corp', '348 Jinx Road London England'), (3, '99 Store', '');

INSERT INTO Email
VALUES (1,'p.smith@abc.com'), (2,'maria@zyx.com'), (3,'david.sommerset@99cents.store'), (4,'maria.bounte@99cents.store');

INSERT INTO Subscription
VALUES (1,1,1,1,'trhb','password'), (2,2,2,2,'provider','pw123'), (3,3,3,3,'log','pw4455'), (4,4,3,4,'hhsk','fdsa3245');

INSERT INTO CustomerDownload
VALUES (1,1,1,1,1,1,2.1,1,1,1,'6/1/2000'), (2,2,2,2,1,1,2.1,1,1,1,'3/1/2000'), (3,3,3,3,1,1,2.2,1,1,1,'7/1/2000'), (4,4,3,4,1,1,2.2,1,1,1,'9/1/2000');

INSERT INTO DevRelease
VALUES (1,1,1,'1','patient login','1/1/2015'), (1,1,2,'2','patient e-bill','2/6/2015'), (1,1,1,'3','patient authorization','3/5/2016');