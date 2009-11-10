create table tbl_Project(
 [ID] autoincrement(1,1)  not null,
 [projectName] varchar(40) not null,
 [projectIntro] text not null,
 [customerType] char(20) null,
 [imagePath] varchar(128) not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_Certification(
 [ID] autoincrement(1,1) not null,
 [certiName] varchar(40) not null,
 [certiIntro] text null,
 [imagePath] varchar(128) not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_Documentation(
 [ID] autoincrement(1,1) not null,
 [doName] varchar(40) not null,
 [doNumber] varchar(20) not null,
 [doType] varchar(20) not null,
 [doDescription] text null,
 [doPath] varchar(128) not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_CustomerMessage(
 [ID] autoincrement(1,1) not null,
 [Name] char(20) not null,
 [Email] varchar(50) not null,
 [Tel] varchar(20) null,
 [QQ] varchar(20) null,
 [Content] text not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_CompanyIntro(
 [ID] autoincrement(1,1) not null,
 [imagePath] varchar(128) not null,
 [introduction] text not null,
 [business] text not null,
 [HR] text not null,
 [Services] text not null,
 [Prospects] text not null,
 primary key(ID)
);

create table tbl_Manager_Culture_Structure(
 [ID] autoincrement(1,1) not null,
 [imagePath] varchar(128) not null,
 [introduction] text not null,
 [mark] int not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_MarketingImage(
 [ID] autoincrement(1,1) not null,
 [imagePath] varchar(128) not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_SalesDepartment(
 [ID] autoincrement(1,1) not null,
 [area] varchar(20) not null,
 [departmentName] varchar(40) not null,
 [address] varchar(255) not null,
 [tel] varchar(20) not null,
 primary key(ID)
);

create table tbl_Customer(
 [ID] autoincrement(1,1) not null,
 [customerName] varchar(40) not null,
 [introduction] text not null,
 [address] varchar(255) not null,
 [contact] varchar(255) not null,
 [imagePath] varchar(128) not null,
 [addTime] datetime not null,
 primary key(ID)
);

create table tbl_News(
 [ID] autoincrement(1,1) not null,
 [title] varchar(128) not null,
 [newsType] varchar(40) not null,
 [content] text not null,
 [author] varchar(40) null,
 [addTime] datetime not null,
 [changeTime] datetime not null,
 [clickNum] int not null,
 primary key(ID)
);

create table tbl_Employment(
 [ID] autoincrement(1,1) not null,
 [title] varchar(128) not null,
 [department] varchar(40) not null,
 [content] text not null,
 [author] varchar(40) null,
 [addTime] datetime not null,
 [changeTime] datetime not null,
 primary key(ID)
);

create table tbl_Admin(
 [ID] autoincrement(1,1) not null,
 [account] varchar(40) not null,
 [password] varchar(40) not null,
 [email] varchar(50) not null,
 [tel] varchar(20) null,
 primary key(ID)
);
