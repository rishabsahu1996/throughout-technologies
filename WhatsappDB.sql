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
		senderId int , --foreign key
		MessageTime varchar(10),
				primary key (MessageId),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (senderId) REFERENCES Users(userId)				
		);

	create table Groups (
		GroupID int(20), -- primary key
		GroupName varchar(20),
		GroupCreatorID int,
		GroupPPic varchar(20),
		userId int , --foreign 
				primary key (GroupID),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (GroupCreatorId) REFERENCES Users(userId)				
		);	

	create table GroupDetails(
		GDetailsID int(20), -- primary key
		GroupID int;        --foreign 
		MemberID varchar(20), --foreign 
		AdminStatus varchar(20),
		userId int ,         --foreign 
				primary key (GDetailsID),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (MemberId) REFERENCES Users(userId),
				FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)			
		);	


	create table ChatRooms (
		ChatRoomId int  -- primary key
		MessageID int(20), --foreign key
		userId int , --foreign key 
		FriendListId int, --foreign key
		ArchivedChats int ,
		ReadStatus int ,
				primary key (ChatRoomId),
				FOREIGN KEY (userId) REFERENCES Users(userId),
				FOREIGN KEY (MessageID) REFERENCES Messages(MessageID),
				FOREIGN KEY (FriendListId) REFERENCES FriendLists(FriendListId)
		);
	