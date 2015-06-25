DELETE FROM profiles;
DELETE FROM applockconfig;
DELETE FROM protectedapps;
DELETE FROM callfilterconfig;

INSERT OR REPLACE INTO profiles SELECT MAX(id), 'A', 1, 'Private', 367, 'Default','Default','Default','Default','Default','Default' FROM profiles WHERE profile =  'Private';
INSERT OR REPLACE INTO profiles SELECT MAX(id), 'B', 0, 'Business', 511,'Business','Business','Business','Business','Business','Business' FROM profiles WHERE profile =  'Business';
INSERT OR REPLACE INTO profiles SELECT MAX(id), 'C', 0, 'OtherA', 199,'OtherA','OtherA','OtherA','OtherA','OtherA','OtherA' FROM profiles WHERE profile =  'OtherA';
INSERT OR REPLACE INTO profiles SELECT MAX(id), 'D', 0, 'OtherB', 48, 'OtherB','OtherB','OtherB','OtherB','OtherB','OtherB' FROM profiles WHERE profile =  'OtherB';

INSERT OR REPLACE INTO scanconfig SELECT MAX(id), 'Default',  15, 1,  7, 2, 1, 1, 1, 1, '1', 1 FROM scanconfig WHERE configuration = 'Default';
INSERT OR REPLACE INTO scanconfig SELECT MAX(id), 'G Data',  7, 1,  3, 2, 1, 1, 0, 1, '3', 0 FROM scanconfig WHERE configuration = 'Business';
INSERT OR REPLACE INTO scanconfig SELECT MAX(id), 'Kiosk',   10, 1, 14, 1, 0, 0, 1, 1, '7', 0 FROM scanconfig WHERE configuration = 'OtherA';
INSERT OR REPLACE INTO scanconfig SELECT MAX(id), 'Business Trip',    0, 0,  1, 1, 0, 0, 0, 0, '1', 1 FROM scanconfig WHERE configuration = 'OtherB'; 

INSERT OR REPLACE INTO applockconfig SELECT MAX(id), 'Default',  511, 1, 0, 0, '0TWeDjekDC1GAz6zqa2DqA==', '', '1', '', 'XgslvMt8S3vlSGevq+6WlA==' FROM applockconfig WHERE configuration = 'Default';
INSERT OR REPLACE INTO applockconfig SELECT MAX(id), 'Business', 259, 1, 1, 0, 'Vn9IDmP7v8/BMOcYrlX7pA==', '', '1', '', 'i1SpZKFc/zlJQI7YiQ2qBQ==' FROM applockconfig WHERE configuration = 'Business';
INSERT OR REPLACE INTO applockconfig SELECT MAX(id), 'OtherA',     3, 1, 0, 1, '/Myf8Wq/lwGtzn5zVtA4mA==', '', '1', '', 'X1Gkgi0hgV0uunQeZwqPPQ==' FROM applockconfig WHERE configuration = 'OtherA';
INSERT OR REPLACE INTO applockconfig SELECT MAX(id), 'OtherB',     0, 1, 1, 1, 'Ymv1o7IiMEl3fSqPQUdV0g==', '', '1', '', 'N65b4I4o3eyFiUxBm/+aiQ==' FROM applockconfig WHERE configuration = 'OtherB'; 

INSERT OR REPLACE INTO antitheftconfig SELECT MAX(id), 'Default', 32767, 1, 1, 0, 1, 0, 0, 0, 0, '0TWeDjekDC1GAz6zqa2DqA==', '01766513916', 'nobody@gdata.de' FROM antitheftconfig WHERE configuration = 'Default';
INSERT OR REPLACE INTO antitheftconfig SELECT MAX(id), 'Business',  135, 1, 1, 0, 0, 1, 0, 0, 0, 'Vn9IDmP7v8/BMOcYrlX7pA==', '01766513916', 'nobody@gdata.de' FROM antitheftconfig WHERE configuration = 'Business';
INSERT OR REPLACE INTO antitheftconfig SELECT MAX(id), 'OtherA',      0, 1, 1, 0, 1, 1, 0, 0, 0, '/Myf8Wq/lwGtzn5zVtA4mA==', '01766513916', 'nobody@gdata.de' FROM antitheftconfig WHERE configuration = 'OtherA';
INSERT OR REPLACE INTO antitheftconfig SELECT MAX(id), 'OtherB',      0, 1, 1, 0, 0, 1, 1, 1, 0, 'Ymv1o7IiMEl3fSqPQUdV0g==', '01736513916', 'nobody@gdata.de' FROM antitheftconfig WHERE configuration = 'OtherB';  

INSERT OR REPLACE INTO antiphishingconfig SELECT MAX(id), 'Default',  0, 'reg:.*','cat:malware', 1, 1 FROM antiphishingconfig WHERE configuration = 'Default';
INSERT OR REPLACE INTO antiphishingconfig SELECT MAX(id), 'Business', 1, 'reg:.*','cat:malware', 0, 1 FROM antiphishingconfig WHERE configuration = 'Business';
INSERT OR REPLACE INTO antiphishingconfig SELECT MAX(id), 'OtherA',   0, 'reg:.*','cat:malware', 1, 0 FROM antiphishingconfig WHERE configuration = 'OtherA';
INSERT OR REPLACE INTO antiphishingconfig SELECT MAX(id), 'OtherB',   1, 'reg:.*','cat:malware', 0, 0 FROM antiphishingconfig WHERE configuration = 'OtherB'; 


INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Business','MobileSecurity','de.gdata.mobilesecurity/.intents.Main','',15,1,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Business','Einstellungen','com.android.settings/.Settings','',16,9,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Business','Rechner','com.android.calculator2/.Calculator','',3,9,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Business','Musik','com.android.music/.MusicBrowserActivity','',0,8,1,0);

INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Default','MobileSecurity','de.gdata.mobilesecurity/.intents.Main',null,3,8,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Default','Einstellungen','com.android.settings/.Settings',null,0,8,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Default','Rechner','com.android.calculator2/.Calculator',null,0,4,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('Default','Musik','com.android.music/.MusicBrowserActivity',null,3,8,1,0);

INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherA','MobileSecurity','de.gdata.mobilesecurity/.intents.Main','',19,10,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherA','Einstellungen','com.android.settings/.Settings','',3,2,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherA','Rechner','com.android.calculator2/.Calculator','',3,4,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherA','Musik','com.android.music/.MusicBrowserActivity','',0,5,1,0);

INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherB','MobileSecurity','de.gdata.mobilesecurity/.intents.Main','',19,10,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherB','Einstellungen','com.android.settings/.Settings','',3,5,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherB','Rechner','com.android.calculator2/.Calculator','',3,1,1,0);
INSERT INTO protectedapps (configuration,name,identifier,packageurl,permissions,lockmode,installmode,status) VALUES ('OtherB','Musik','com.android.music/.MusicBrowserActivity','',0,5,1,0);

INSERT INTO callfilterconfig (configuration,permissions,incoming,outgoing,unknown) VALUES ('Default', 0,'phone|white','black',      0);
INSERT INTO callfilterconfig (configuration,permissions,incoming,outgoing,unknown) VALUES ('Business',0,'phone|black','phone|white',1);
INSERT INTO callfilterconfig (configuration,permissions,incoming,outgoing,unknown) VALUES ('OtherA',  0,'phone',      'black',      0);
INSERT INTO callfilterconfig (configuration,permissions,incoming,outgoing,unknown) VALUES ('OtherB',  0,'white',      '',           1);

DELETE FROM incomingwhitelist;
DELETE FROM outgoingwhitelist;
DELETE FROM incomingblacklist;
DELETE FROM outgoingblacklist;

INSERT INTO incomingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Default','Lee Short','1371122','1371122',3,15,'HH:mm:ss',null,null);
INSERT INTO incomingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Default','Lee Long','13711112222','13711112222',3,15,'HH:mm:ss',null,null);
INSERT INTO incomingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Default','Lee','86 137 111 222','86137111222',3,15,'HH:mm:ss',null,null);
INSERT INTO outgoingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Default','Harry Hamburg','04011112222','04011112222',3,15,'HH:mm:ss',null,null);

INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Harry Hamburg','04011112222','04011112222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Lee','86 137 111 222','86137111222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Lee Long','13711112222','13711112222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Lee Short','1371122','1371122',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Luigi Salvatore','4433311112222','4433311112222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Secret Number','#31#0231666999','0231666999',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Suse','+49(0)234-111-222','490234111222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Sven TwinNumber','023-412-3456789','0234123456789',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('Business','Sven TwinNumber','016-212-3456789','0162123456789',3,15,'HH:mm:ss',null,null,null);
INSERT INTO outgoingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Business','Lee Short','1371122','1371122',3,15,'HH:mm:ss',null,null);
INSERT INTO outgoingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Business','Lee Long','13711112222','13711112222',3,16,'HH:mm:ss',null,null);
INSERT INTO outgoingwhitelist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime) VALUES ('Business','Lee','86 137 111 222','86137111222',3,0,'HH:mm:ss',null,null);

INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherA','Suse','+49(0)234-111-222','490234111222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherA','Sven TwinNumber','023-412-3456789','0234123456789',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherA','Sven TwinNumber','016-212-3456789','0162123456789',3,15,'HH:mm:ss',null,null,null);

INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherB','Luigi Salvatore','4433311112222','4433311112222',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherB','Secret Number','#31#0231666999','0231666999',3,15,'HH:mm:ss',null,null,null);
INSERT INTO incomingblacklist (configuration,name,displaynumber,phonenumber,messagetypes,permissions,timepattern,starttime,endtime,replytext) VALUES ('OtherB','Suse','+49(0)234-111-222','490234111222',3,15,'HH:mm:ss',null,null,null);

