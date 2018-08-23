create database Whatapps;

	create table Users ( 
		userId int --primary key
		PhoneNumber int(20), -- unique 
		CountryCode int ,
		UserName varchar(20),
		ProfilePic varchar(20), 
		Status varchar(50),
		Active varchar(5),
			primary key (userId),
		 	UNIQUE (PhoneNumber)
		);

	create table FriendLists (
		FriendListsId int ,   --primary key
		FriendPhoneNumber int(20), 
		userId int(20),  --foreign key
		Block varchar(5)
			primary key (FriendListId),
			FOREIGN KEY (userId) REFERENCES Users(userId)

		);
	create table Messages (
		MessageID int(20), -- primary key
		Message varchar(1000),
		MessageStatus varchar(20),
		userId int , --foreign key
		OtherUserId int , --foreign key
		MessageTime varchar(10),
				primary key (MessageId),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (OtherUserId) REFERENCES Users(userId)				
		);



	create table ChatRooms (
		ChatRoomId int  -- primary key
		MessageID int(20), --foreign key
		userId int , --foreign key 
		ArchivedChats int ,
		ReadStatus int ,
				primary key (ChatRoomId),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (MessageID) REFERENCES Messages(MessageID),
			
		);
	