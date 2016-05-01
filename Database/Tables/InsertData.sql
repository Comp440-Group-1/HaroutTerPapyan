INSERT INTO Platform
VALUES (1, 'Linux'), (2, 'Windows'), (3, 'OSX');

INSERT INTO Product
VALUES (1, 'HealthConnect');

INSERT INTO Release
VALUES (1,1,1), (2,3,2), (3,2,3), (4,3,4);

INSERT INTO CustomerRelease
VALUES (1,1,1,'1/1/2015');

INSERT INTO ProductVersion
Values (1.1), (1.2), (2.1), (2.2);

INSERT INTO Feature
VALUES (1.1,'database'), (1.2,'patient info'), (2.1,'billing module'), (2.2,'ui update');

INSERT INTO VersionFeature
VALUES (1.1,1), (1.1,2), (1.2,2), (2.1,1), (2.2,2);

INSERT INTO ReleaseVersion
VALUES (1.1,1.1,1,1), (1.2,1.1,1,2), (2.1,2.1,1,1), (2.2,2.1,1,1);

INSERT INTO FileDownload
VALUES (1,'HealthConnect'), (2,'KPHC');

INSERT INTO Customer
VALUES (1,'John', 'Smith'), (2,'Jane', 'Doe');

INSERT INTO Phone
VALUES (1,'1-818-555-5555', 'mobile'), (2,'1-323-555-5555', 'work');

INSERT INTO Company
VALUES (1,'UCLA', '123 UC Lane 95513 CA'), (2,'KP', '345 KP Dr 95546 CA');

INSERT INTO Email
VALUES (1,'ucla@ucla.com'), (2,'kp.kp.org');

INSERT INTO Subscription
VALUES (1,1,1,1,'trhb','password'), (2,2,2,2,'provider','pw123');