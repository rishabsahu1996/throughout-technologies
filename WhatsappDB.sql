create database Whatapps;

	create table Users ( 
		userId int, 
		PhoneNumber int(20), 
		CountryCode int ,
		UserName varchar(20),
		ProfilePic varchar(20), 
		Status varchar(50),
		Active varchar(5),
			primary key (userId),
		 	UNIQUE (PhoneNumber)
		);

insert into Users values(11 , 7894561230 , 91 , "Jone" ,"JonePic" ,"Only Whatapps !!!", "yes");
insert into Users values(12 , 7849562131 , 91 , "Ben" ,"BenPic" ,"hi ben !!!", "yes");
insert into Users values(14 , 7995461230 , 91 , "hony" ,"honyPic" ,"Happy Birthday !!!", "yes");
insert into Users values(15 , 7894563030 , 91 , "tom" ,"TomPic" ,"Holiday !!!", "yes");
insert into Users values(16 , 7794544230 , 91 , "mark" ,"markPic" ,"Only calls !!!", "yes");


ALTER TABLE FriendLists
MODIFY COLUMN FriendPhoneNumber varchar(20);



create table FriendLists (
FriendListId int ,   
FriendPhoneNumber int(20), 
userId int(20),  
Block varchar(5),
primary key (FriendListId),
FOREIGN KEY (userId) REFERENCES Users(userId)
);



insert into FriendLists values(1865 , 7995461230 , 14 , "no");
insert into FriendLists values(1895 , 7794544230 , 16 , "no");

create table Messages (
MessageID int(20),
Message varchar(1000),
MessageStatus varchar(20),
userId int ,
OtherUserId int ,
MessageTime varchar(10),
primary key (MessageId),
FOREIGN KEY (userId) REFERENCES Users(userId),
FOREIGN KEY (OtherUserId) REFERENCES Users(userId)				
);


insert into Messages values(1234 ,"hi",  , "Jone" ,"JonePic" ,"Only Whatapps !!!", "yes");

create table ChatRooms (
ChatRoomId int,
MessageID int(20),
userId int ,
ArchivedChats int ,
ReadStatus int ,
primary key (ChatRoomId),
FOREIGN KEY (userId) REFERENCES Users(userId),
FOREIGN KEY (MessageID) REFERENCES Messages(MessageID)	
);
	

