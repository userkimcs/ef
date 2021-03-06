USE [HPDB]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
GO
INSERT [dbo].[AspNetUsers] ([UserId], [Role], [IsVerified], [IsPaid], [IsBanned], [Name], [BirthDay], [Job], [Place], [Avatar], [CreatedDate], [LastActive], [Language], [LoginProvider], [DisplayName], [AccessKey], [LastAccess], [IsBlocked], [BlockCounter], [CurrentExp], [ContinousCounter], [LastDiligentDate], [ExpDate], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e6dbee7c-26fc-47fa-ad90-f361ce343b60', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A54D015B217A AS DateTime), CAST(0x0000A54D015B217A AS DateTime), 0, NULL, N'Phát', N'a54e6d35', CAST(0x0000A54D015B37C6 AS DateTime), 0, 0, 100, 0, NULL, 0, N'patrickivn@gmail.com', 0, N'AOUETCMZXGHjpZDWWRhOajAJTQ3en6iyZggLolSApUCw8XTOxgWHArlwoMk4qbH6TQ==', N'2ddf8909-0b27-4343-95a0-02d3b2f46ed0', NULL, 0, 0, NULL, 0, 0, N'patrickivn@gmail.com')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e6dbee7c-26fc-47fa-ad90-f361ce343b60', N'1')
GO
INSERT [dbo].[Courses] ([CourseId], [CourseName], [StartDate], [EndDate], [Abstract], [CreatedDate], [TotalLikes], [Image], [NumberOfWords], [NumberOfPhrases], [NumberOfGrammars], [NumberOfPronunciations], [CreatedUserId]) VALUES (N'grammar', N'Ngu phap', NULL, NULL, N'Lop ngu phap', NULL, 0, NULL, 0, 0, 0, 0, N'e6dbee7c-26fc-47fa-ad90-f361ce343b60')
GO
INSERT [dbo].[Courses] ([CourseId], [CourseName], [StartDate], [EndDate], [Abstract], [CreatedDate], [TotalLikes], [Image], [NumberOfWords], [NumberOfPhrases], [NumberOfGrammars], [NumberOfPronunciations], [CreatedUserId]) VALUES (N'words', N'Tu vung', NULL, NULL, N'Lop tu vung', NULL, 0, NULL, 50, 0, 0, 0, N'e6dbee7c-26fc-47fa-ad90-f361ce343b60')
GO
INSERT [dbo].[Classes] ([ClassId], [ClassName], [StartDate], [EndDate], [Abstract], [Image], [CreatedDate], [TotalLikes], [TotalLearns], [NumberOfWords], [NumberOfPhrases], [NumberOfGrammars], [NumberOfPronunciations], [NumberOfWeeks], [IsMaintained], [CreatedByUserId], [CourseId], [Order], [Complexity], [Test]) VALUES (N'flyer', N'Flyer (nâng cao)', NULL, NULL, N'Lop flyer', N'/dist/img/class-img/voca/flyer-class.jpg', NULL, 0, 0, 50, 0, 0, 0, 0, 1, N'e6dbee7c-26fc-47fa-ad90-f361ce343b60', N'words', 3, 3, 0)
GO
INSERT [dbo].[Classes] ([ClassId], [ClassName], [StartDate], [EndDate], [Abstract], [Image], [CreatedDate], [TotalLikes], [TotalLearns], [NumberOfWords], [NumberOfPhrases], [NumberOfGrammars], [NumberOfPronunciations], [NumberOfWeeks], [IsMaintained], [CreatedByUserId], [CourseId], [Order], [Complexity], [Test]) VALUES (N'mover', N'Mover (phổ thông)', NULL, NULL, N'Lop mover', N'/dist/img/class-img/voca/mover-class.jpg', NULL, 0, 0, 50, 0, 0, 0, 0, 1, N'e6dbee7c-26fc-47fa-ad90-f361ce343b60', N'words', 2, 2, 0)
GO
INSERT [dbo].[Classes] ([ClassId], [ClassName], [StartDate], [EndDate], [Abstract], [Image], [CreatedDate], [TotalLikes], [TotalLearns], [NumberOfWords], [NumberOfPhrases], [NumberOfGrammars], [NumberOfPronunciations], [NumberOfWeeks], [IsMaintained], [CreatedByUserId], [CourseId], [Order], [Complexity], [Test]) VALUES (N'starter', N'Starter (cơ bản)', NULL, NULL, N'Lớp Starter gồm những từ vựng đơn giản giúp bạn bước đầu làm quen với cách học mới của Galaxy Gate.', N'/dist/img/class-img/voca/starter-class.jpg', NULL, 0, 0, 50, 0, 0, 0, 0, 0, N'e6dbee7c-26fc-47fa-ad90-f361ce343b60', N'words', 1, 1, 0)
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1', N'about', N'/dist/hp/img/formal.JPG', N'/əˈbaʊt/', N'về (cái gì/ai)', N'/dist/hp/audio/about.MP3', 0, 0, 0, CAST(0x0000A54F00BD087E AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'10', N'apple', N'/dist/hp/img/apple.JPG', N'/ˈæpl/', N'trái táo', N'/dist/hp/audio/apple.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5B4 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'100', N'fish', N'/dist/hp/img/fish.JPG', N'/fɪʃ/', N'con cá', N'/dist/hp/audio/fish.MP3', 0, 0, 0, CAST(0x0000A54F00BCF905 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'101', N'five', N'/dist/hp/img/five.JPG', N'/faɪv/', N'số năm', N'/dist/hp/audio/five.MP3', 0, 0, 0, CAST(0x0000A54F00BCF90D AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'102', N'fly', N'/dist/hp/img/fly.JPG', N'/flaɪ/', N'bay', N'/dist/hp/audio/fly.MP3', 0, 0, 0, CAST(0x0000A54F00BCF915 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'103', N'food', N'/dist/hp/img/food.JPG', N'/fuːd/', N'thức ăn', N'/dist/hp/audio/food.MP3', 0, 0, 0, CAST(0x0000A54F00BCF91E AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'104', N'foot', N'/dist/hp/img/foot.JPG', N'/fʊt/', N'bàn chân', N'/dist/hp/audio/foot.MP3', 0, 0, 0, CAST(0x0000A54F00BCF928 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'105', N'for', N'/dist/hp/img/for.JPG', N'/fɔːr/', N'cho', N'/dist/hp/audio/for.MP3', 0, 0, 0, CAST(0x0000A54F00BCF930 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'106', N'four', N'/dist/hp/img/four.JPG', N'/fɔːr/', N'số bốn', N'/dist/hp/audio/four.MP3', 0, 0, 0, CAST(0x0000A54F00BCF939 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'107', N'free', N'/dist/hp/img/free.JPG', N'/friː/', N'tự do', N'/dist/hp/audio/free.MP3', 0, 0, 0, CAST(0x0000A54F00BCF943 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'108', N'friend', N'/dist/hp/img/friend.JPG', N'/frend/', N'bạn bè', N'/dist/hp/audio/friend.MP3', 0, 0, 0, CAST(0x0000A54F00BCF94B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'109', N'from', N'/dist/hp/img/from.JPG', N'/frɑːm/ /frəm/', N'từ', N'/dist/hp/audio/from.MP3', 0, 0, 0, CAST(0x0000A54F00BCF954 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'11', N'arm', N'/dist/hp/img/arm.JPG', N'/ɑːrm/', N'cánh tay', N'/dist/hp/audio/arm.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5BE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'110', N'fruit', N'/dist/hp/img/fruit.JPG', N'/fruːt/', N'trái cây', N'/dist/hp/audio/fruit.MP3', 0, 0, 0, CAST(0x0000A54F00BCF960 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'111', N'full', N'/dist/hp/img/full.JPG', N'/fʊl/', N'đầy đủ', N'/dist/hp/audio/full.MP3', 0, 0, 0, CAST(0x0000A54F00BCF969 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'112', N'fun', N'/dist/hp/img/fun.JPG', N'/fʌn/', N'trò vui', N'/dist/hp/audio/fun.MP3', 0, 0, 0, CAST(0x0000A54F00BCF973 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'113', N'game', N'/dist/hp/img/game.JPG', N'/ɡeɪm/', N'trò chơi', N'/dist/hp/audio/game.MP3', 0, 0, 0, CAST(0x0000A54F00BCF97D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'114', N'get', N'/dist/hp/img/get.JPG', N'/ɡet/', N'nhận được', N'/dist/hp/audio/get.MP3', 0, 0, 0, CAST(0x0000A54F00BCF985 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'115', N'go', N'/dist/hp/img/go.JPG', N'/goʊ/', N'đi', N'/dist/hp/audio/go.MP3', 0, 0, 0, CAST(0x0000A54F00BCF98E AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'116', N'good', N'/dist/hp/img/good.JPG', N'/ɡʊd/', N'tốt, giỏi', N'/dist/hp/audio/good.MP3', 0, 0, 0, CAST(0x0000A54F00BCF998 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'117', N'gray', N'/dist/hp/img/gray.JPG', N'/ɡreɪ/', N'màu xám', N'/dist/hp/audio/gray.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9A1 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'118', N'great', N'/dist/hp/img/great.JPG', N'/ɡreɪt/', N'vĩ đại, lớn', N'/dist/hp/audio/great.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9A9 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'119', N'green', N'/dist/hp/img/green.JPG', N'/ɡriːn/', N'xanh', N'/dist/hp/audio/green.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9B1 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'12', N'art', N'/dist/hp/img/art.JPG', N'/ɑːrt/', N'mỹ thuật', N'/dist/hp/audio/art.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5C8 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'120', N'group', N'/dist/hp/img/group.JPG', N'/ɡruːp/', N'nhóm', N'/dist/hp/audio/group.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9BB AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'121', N'gun', N'/dist/hp/img/gun.JPG', N'/ɡʌn/', N'cây súng', N'/dist/hp/audio/gun.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9C3 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'122', N'girl', N'/dist/hp/img/girl.JPG', N'/gɝːl/', N'con gái', N'/dist/hp/audio/girl.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9CC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'123', N'give', N'/dist/hp/img/give.JPG', N'/ɡɪv/', N'cho, biếu, tặng', N'/dist/hp/audio/give.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9D4 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'124', N'hair', N'/dist/hp/img/hair.JPG', N'/her/', N'tóc', N'/dist/hp/audio/hair.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9DC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'125', N'hand', N'/dist/hp/img/hand.JPG', N'/hænd/', N'bàn tay', N'/dist/hp/audio/hand.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9E5 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'126', N'happy', N'/dist/hp/img/happy.JPG', N'/ˈhæpi/', N'hạnh phúc', N'/dist/hp/audio/happy.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9EE AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'127', N'hard', N'/dist/hp/img/hard.JPG', N'/hɑːrd/', N'khó, cứng', N'/dist/hp/audio/hard.MP3', 0, 0, 0, CAST(0x0000A54F00BCF9F7 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'128', N'hat', N'/dist/hp/img/hat.JPG', N'/hæt/', N'cái mũ', N'/dist/hp/audio/hat.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA00 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'129', N'have', N'/dist/hp/img/have.JPG', N'/həv//əv//hæv/', N'có', N'/dist/hp/audio/have.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA08 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'13', N'as', N'/dist/hp/img/as.JPG', N'/əz/ /æz/', N'như', N'/dist/hp/audio/as.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5D1 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'130', N'head', N'/dist/hp/img/head.JPG', N'/hed/', N'đầu', N'/dist/hp/audio/head.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA11 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'131', N'hear', N'/dist/hp/img/hear.JPG', N'/hɪr/', N'nghe', N'/dist/hp/audio/hear.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA1A AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'132', N'heart', N'/dist/hp/img/heart.JPG', N'/hɑːrt/', N'trái tim', N'/dist/hp/audio/heart.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA2C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'133', N'help', N'/dist/hp/img/help.JPG', N'/help/', N'giúp đỡ', N'/dist/hp/audio/help.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA35 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'134', N'her', N'/dist/hp/img/her.JPG', N'/hɝː/', N'cô ấy, bà ấy, của cô ấy', N'/dist/hp/audio/her.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA3F AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'135', N'here', N'/dist/hp/img/here.JPG', N'/hɪr/', N'ở đây, chỗ này', N'/dist/hp/audio/here.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA4A AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'136', N'high', N'/dist/hp/img/high.JPG', N'/haɪ/', N'cao', N'/dist/hp/audio/high.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA54 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'137', N'him', N'/dist/hp/img/him.JPG', N'/hɪm//ɪm/', N'anh ta, ông ta, nó', N'/dist/hp/audio/him.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA5F AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'138', N'his', N'/dist/hp/img/his.JPG', N'/hɪz/ /ɪz//i/', N'của anh ta', N'/dist/hp/audio/his.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA6A AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'139', N'home', N'/dist/hp/img/home.JPG', N'/hoʊm/', N'nhà', N'/dist/hp/audio/home.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA72 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'14', N'ask', N'/dist/hp/img/ask.JPG', N'/æsk/', N'hỏi', N'/dist/hp/audio/ask.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5DC AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'140', N'horse', N'/dist/hp/img/horse.JPG', N'/hɔːrs/', N'con ngựa', N'/dist/hp/audio/horse.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA7C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'141', N'hot', N'/dist/hp/img/hot.JPG', N'/hɑːt/', N'nóng', N'/dist/hp/audio/hot.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA86 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'142', N'hour', N'/dist/hp/img/hour.JPG', N'/aʊr/', N'giờ, tiếng đồng hồ', N'/dist/hp/audio/hour.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA8F AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'143', N'house', N'/dist/hp/img/house.JPG', N'/haʊs/', N'ngôi nhà', N'/dist/hp/audio/house.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA97 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'144', N'how', N'/dist/hp/img/how.JPG', N'/haʊ/', N'như thế nào', N'/dist/hp/audio/how.MP3', 0, 0, 0, CAST(0x0000A54F00BCFA9F AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'145', N'ice', N'/dist/hp/img/ice.JPG', N'/aɪs/', N'băng, nước đá', N'/dist/hp/audio/ice.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAA9 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'146', N'if', N'/dist/hp/img/if.JPG', N'/ɪf/', N'nếu', N'/dist/hp/audio/if.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAB2 AS DateTime), 1, N'conj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'147', N'in', N'/dist/hp/img/in.JPG', N'/ɪn/', N'trong', N'/dist/hp/audio/in.MP3', 0, 0, 0, CAST(0x0000A54F00BCFABB AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'148', N'job', N'/dist/hp/img/job.JPG', N'/dʒɑːb/', N'công việc', N'/dist/hp/audio/job.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAC3 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'149', N'jump', N'/dist/hp/img/jump.JPG', N'/dʒʌmp/', N'nhảy', N'/dist/hp/audio/jump.MP3', 0, 0, 0, CAST(0x0000A54F00BCFACC AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'15', N'at', N'/dist/hp/img/at.JPG', N'/ət//æt/', N'ở, vào lúc', N'/dist/hp/audio/at.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5E5 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'150', N'keep', N'/dist/hp/img/keep.JPG', N'/kiːp/', N'giữ', N'/dist/hp/audio/keep.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAD5 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1500', N'certainly', N'/dist/hp/img/certainly.JPG', N'/ˈsɜːrtnli/', N'chắc chắn', N'/dist/hp/audio/certainly.MP3', 0, 0, 0, CAST(0x0000A54F00BD03D4 AS DateTime), 2, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1501', N'certificate', N'/dist/hp/img/certificate.JPG', N'/sərˈtɪfɪkət/', N'giấy chứng nhận', N'/dist/hp/audio/certificate.MP3', 0, 0, 0, CAST(0x0000A54F00BD03DD AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1502', N'chain', N'/dist/hp/img/chain.JPG', N'/tʃeɪn/', N'chuỗi', N'/dist/hp/audio/chain.MP3', 0, 0, 0, CAST(0x0000A54F00BD03E6 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1503', N'chairman', N'/dist/hp/img/chairman.JPG', N'/ˈtʃermən/', N'chủ tịch', N'/dist/hp/audio/chairman.MP3', 0, 0, 0, CAST(0x0000A54F00BD03F0 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1504', N'cheat', N'/dist/hp/img/cheat.JPG', N'/tʃiːt/', N'gian lận', N'/dist/hp/audio/cheat.MP3', 0, 0, 0, CAST(0x0000A54F00BD03F9 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1505', N'cheek', N'/dist/hp/img/cheek.JPG', N'/tʃiːk/', N'má', N'/dist/hp/audio/cheek.MP3', 0, 0, 0, CAST(0x0000A54F00BD0401 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1506', N'cheerful', N'/dist/hp/img/cheerful.JPG', N'/ˈtʃɪrfl/', N'hào hứng', N'/dist/hp/audio/cheerful.MP3', 0, 0, 0, CAST(0x0000A54F00BD040B AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1507', N'chemical', N'/dist/hp/img/chemical.JPG', N'/ˈkemɪkl/', N'thuộc hóa học', N'/dist/hp/audio/chemical.MP3', 0, 0, 0, CAST(0x0000A54F00BD0415 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1508', N'chemist', N'/dist/hp/img/chemist.JPG', N'/ˈkemɪst/', N'nhà hóa học', N'/dist/hp/audio/chemist.MP3', 0, 0, 0, CAST(0x0000A54F00BD041E AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1509', N'chest', N'/dist/hp/img/chest.JPG', N'/tʃest/', N'ngực', N'/dist/hp/audio/chest.MP3', 0, 0, 0, CAST(0x0000A54F00BD0427 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'151', N'key', N'/dist/hp/img/key.JPG', N'/kiː/', N'chìa khóa', N'/dist/hp/audio/key.MP3', 0, 0, 0, CAST(0x0000A54F00BCFADE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1510', N'chew', N'/dist/hp/img/chew.JPG', N'/tʃuː/', N'nhai', N'/dist/hp/audio/chew.MP3', 0, 0, 0, CAST(0x0000A54F00BD0430 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1511', N'classic', N'/dist/hp/img/classic.JPG', N'/ˈklæsɪk/', N'kinh điển', N'/dist/hp/audio/classic.MP3', 0, 0, 0, CAST(0x0000A54F00BD0439 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1512', N'climate', N'/dist/hp/img/climate.JPG', N'/ˈklaɪmət/', N'khí hậu', N'/dist/hp/audio/climate.MP3', 0, 0, 0, CAST(0x0000A54F00BD0441 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1513', N'closed', N'/dist/hp/img/closed.JPG', N'/kloʊzd/', N'khép kín', N'/dist/hp/audio/closed.MP3', 0, 0, 0, CAST(0x0000A54F00BD044A AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1514', N'closet', N'/dist/hp/img/closet.JPG', N'/ˈklɑːzət/', N'tủ', N'/dist/hp/audio/closet.MP3', 0, 0, 0, CAST(0x0000A54F00BD0453 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1515', N'collection', N'/dist/hp/img/collection.JPG', N'/kəˈlekʃn/', N'bộ sưu tập', N'/dist/hp/audio/collection.MP3', 0, 0, 0, CAST(0x0000A54F00BD045C AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1516', N'combination', N'/dist/hp/img/combination.JPG', N'/ˌkɑːmbɪneɪʃən/', N'sự kết hợp', N'/dist/hp/audio/combination.MP3', 0, 0, 0, CAST(0x0000A54F00BD0466 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1517', N'combine', N'/dist/hp/img/combine.JPG', N'/kəmˈbaɪn/', N'kết hợp', N'/dist/hp/audio/combine.MP3', 0, 0, 0, CAST(0x0000A54F00BD046E AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1518', N'comedy', N'/dist/hp/img/comedy.JPG', N'/ˈkɑːmədi/', N'hài kịch', N'/dist/hp/audio/comedy.MP3', 0, 0, 0, CAST(0x0000A54F00BD0477 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1519', N'committee', N'/dist/hp/img/committee.JPG', N'/kəˈmɪti/', N'ủy ban', N'/dist/hp/audio/committee.MP3', 0, 0, 0, CAST(0x0000A54F00BD0480 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'152', N'kill', N'/dist/hp/img/kill.JPG', N'/kɪl/', N'giết', N'/dist/hp/audio/kill.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAE7 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1520', N'communicate', N'/dist/hp/img/communicate.JPG', N'/kəˈmjuːnɪkeɪt/', N'giao tiếp', N'/dist/hp/audio/communicate.MP3', 0, 0, 0, CAST(0x0000A54F00BD048A AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1521', N'communication', N'/dist/hp/img/communication.JPG', N'/kəˌmjuːnɪˈkeɪʃn/', N'sự giao tiếp', N'/dist/hp/audio/communication.MP3', 0, 0, 0, CAST(0x0000A54F00BD0493 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1522', N'competition', N'/dist/hp/img/competition.JPG', N'/ˌkɑːmpəˈtɪʃn/', N'sự canh tranh', N'/dist/hp/audio/competition.MP3', 0, 0, 0, CAST(0x0000A54F00BD049C AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1523', N'complain', N'/dist/hp/img/complain.JPG', N'/kəmˈpleɪn/', N'than phiền', N'/dist/hp/audio/complain.MP3', 0, 0, 0, CAST(0x0000A54F00BD04A4 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1524', N'complex', N'/dist/hp/img/complex.JPG', N'/ˈkɑːmpleks/', N'phức tạp', N'/dist/hp/audio/complex.MP3', 0, 0, 0, CAST(0x0000A54F00BD04AC AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1525', N'complicated', N'/dist/hp/img/complicated.JPG', N'/ˈkɑːmplɪkeɪtɪd/', N'phức tạp (khó hiểu)', N'/dist/hp/audio/complicated.MP3', 0, 0, 0, CAST(0x0000A54F00BD04B5 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1526', N'concern', N'/dist/hp/img/concern.JPG', N'/kənˈsɜːrn/', N'lo lắng', N'/dist/hp/audio/concern.MP3', 0, 0, 0, CAST(0x0000A54F00BD04BE AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1527', N'conclude', N'/dist/hp/img/conclude.JPG', N'/kənˈkluːd/', N'kết luận', N'/dist/hp/audio/conclude.MP3', 0, 0, 0, CAST(0x0000A54F00BD04C7 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1528', N'conclusion', N'/dist/hp/img/conclusion.JPG', N'/kənˈkluːʒn/', N'phần kết', N'/dist/hp/audio/conclusion.MP3', 0, 0, 0, CAST(0x0000A54F00BD04CF AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1529', N'confident', N'/dist/hp/img/confident.JPG', N'/ˈkɑːnfɪdənt/', N'tự tin', N'/dist/hp/audio/confident.MP3', 0, 0, 0, CAST(0x0000A54F00BD04D8 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'153', N'kind', N'/dist/hp/img/kind.JPG', N'/kaɪnd/', N'tử tế', N'/dist/hp/audio/kind.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAEF AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1530', N'confirm', N'/dist/hp/img/confirm.JPG', N'/kənˈfɜːrm/', N'xác nhận', N'/dist/hp/audio/confirm.MP3', 0, 0, 0, CAST(0x0000A54F00BD04E2 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1531', N'congratulation', N'/dist/hp/img/congratulation.JPG', N'/kənˌgrætjʊˈleɪʃ ə n/', N'lời chúc mừng', N'/dist/hp/audio/congratulation.MP3', 0, 0, 0, CAST(0x0000A54F00BD04EA AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1532', N'construction', N'/dist/hp/img/construction.JPG', N'/kənˈstrʌkʃn/', N'xây dựng', N'/dist/hp/audio/construction.MP3', 0, 0, 0, CAST(0x0000A54F00BD04F3 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1533', N'consumer', N'/dist/hp/img/consumer.JPG', N'/kənˈsuːmər/', N'người tiêu dùng', N'/dist/hp/audio/consumer.MP3', 0, 0, 0, CAST(0x0000A54F00BD04FC AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1534', N'container', N'/dist/hp/img/container.JPG', N'/kənˈteɪnər/', N'đồ đựng/chứa', N'/dist/hp/audio/container.MP3', 0, 0, 0, CAST(0x0000A54F00BD0504 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1535', N'content', N'/dist/hp/img/content.JPG', N'/ˈkɑːntent/', N'mục lục', N'/dist/hp/audio/content.MP3', 0, 0, 0, CAST(0x0000A54F00BD050D AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1536', N'contest', N'/dist/hp/img/contest.JPG', N'/ˈkɑːntest/', N'cuộc thi', N'/dist/hp/audio/contest.MP3', 0, 0, 0, CAST(0x0000A54F00BD0515 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1537', N'continuous', N'/dist/hp/img/continuous.JPG', N'/kənˈtɪnjuəs/', N'liên tục', N'/dist/hp/audio/continuous.MP3', 0, 0, 0, CAST(0x0000A54F00BD051E AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1538', N'convenient', N'/dist/hp/img/convenient.JPG', N'/kənˈviːniənt/', N'thuận tiện', N'/dist/hp/audio/convenient.MP3', 0, 0, 0, CAST(0x0000A54F00BD0527 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1539', N'conversation', N'/dist/hp/img/conversation.JPG', N'/ˌkɑːnvərˈseɪʃn/', N'cuộc nói chuyện', N'/dist/hp/audio/conversation.MP3', 0, 0, 0, CAST(0x0000A54F00BD052F AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'154', N'king', N'/dist/hp/img/king.JPG', N'/kɪŋ/', N'vua', N'/dist/hp/audio/king.MP3', 0, 0, 0, CAST(0x0000A54F00BCFAF8 AS DateTime), 1, N'n ', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1540', N'cough', N'/dist/hp/img/cough.JPG', N'/kɔːf/', N'ho', N'/dist/hp/audio/cough.MP3', 0, 0, 0, CAST(0x0000A54F00BD0538 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1541', N'counter', N'/dist/hp/img/counter.JPG', N'/ˈkaʊntər/', N'quầy thu tiền', N'/dist/hp/audio/counter.MP3', 0, 0, 0, CAST(0x0000A54F00BD0541 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1542', N'courage', N'/dist/hp/img/courage.JPG', N'/ˈkɜːrɪdʒ/', N'lòng dũng cảm', N'/dist/hp/audio/courage.MP3', 0, 0, 0, CAST(0x0000A54F00BD054B AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1543', N'cousin', N'/dist/hp/img/cousin.JPG', N'/ˈkʌzn/', N'anh em họ', N'/dist/hp/audio/cousin.MP3', 0, 0, 0, CAST(0x0000A54F00BD0554 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1544', N'crime', N'/dist/hp/img/crime.JPG', N'/kraɪm/', N'tội phạm', N'/dist/hp/audio/crime.MP3', 0, 0, 0, CAST(0x0000A54F00BD055E AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1545', N'criminal', N'/dist/hp/img/criminal.JPG', N'/ˈkrɪmɪnl/', N'thuộc tội phạm', N'/dist/hp/audio/criminal.MP3', 0, 0, 0, CAST(0x0000A54F00BD0568 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1546', N'crown', N'/dist/hp/img/crown.JPG', N'/kraʊn/', N'vương miện', N'/dist/hp/audio/crown.MP3', 0, 0, 0, CAST(0x0000A54F00BD0570 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1547', N'cultural', N'/dist/hp/img/cultural.JPG', N'/ˈkʌltʃərəl/', N'thuộc văn hóa', N'/dist/hp/audio/cultural.MP3', 0, 0, 0, CAST(0x0000A54F00BD0579 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1548', N'cupboard', N'/dist/hp/img/cupboard.JPG', N'/ˈkʌbərd/', N'tủ', N'/dist/hp/audio/cupboard.MP3', 0, 0, 0, CAST(0x0000A54F00BD0582 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1549', N'curly', N'/dist/hp/img/curly.JPG', N'/ˈkɜːrli/', N'quăn', N'/dist/hp/audio/curly.MP3', 0, 0, 0, CAST(0x0000A54F00BD058D AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'155', N'know', N'/dist/hp/img/know.JPG', N'/noʊ/', N'biết', N'/dist/hp/audio/know.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB01 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1550', N'custom', N'/dist/hp/img/custom.JPG', N'/ˈkʌstəm/', N'phong tục', N'/dist/hp/audio/custom.MP3', 0, 0, 0, CAST(0x0000A54F00BD0596 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1551', N'cycle', N'/dist/hp/img/cycle.JPG', N'/ˈsaɪkl/', N'chu kỳ', N'/dist/hp/audio/cycle.MP3', 0, 0, 0, CAST(0x0000A54F00BD059F AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1552', N'debt', N'/dist/hp/img/debt.JPG', N'/det/', N'nợ', N'/dist/hp/audio/debt.MP3', 0, 0, 0, CAST(0x0000A54F00BD05A8 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1553', N'decade', N'/dist/hp/img/decade.JPG', N'/ˈdekeɪd/', N'thập kỉ', N'/dist/hp/audio/decade.MP3', 0, 0, 0, CAST(0x0000A54F00BD05B1 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1554', N'decorate', N'/dist/hp/img/decorate.JPG', N'/ˈdekəreɪt/', N'trang trí', N'/dist/hp/audio/decorate.MP3', 0, 0, 0, CAST(0x0000A54F00BD05BA AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1555', N'decoration', N'/dist/hp/img/decoration.JPG', N'/ˌdekəˈreɪʃn/', N'sự trang trí', N'/dist/hp/audio/decoration.MP3', 0, 0, 0, CAST(0x0000A54F00BD05C3 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1556', N'definition', N'/dist/hp/img/definition.JPG', N'/ˌdefɪˈnɪʃn/', N'sự định nghĩa', N'/dist/hp/audio/definition.MP3', 0, 0, 0, CAST(0x0000A54F00BD05CD AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1557', N'deliver', N'/dist/hp/img/deliver.JPG', N'/dɪˈlɪvər/', N'giao', N'/dist/hp/audio/deliver.MP3', 0, 0, 0, CAST(0x0000A54F00BD05D7 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1558', N'demand', N'/dist/hp/img/demand.JPG', N'/dɪˈmænd/', N'nhu cầu', N'/dist/hp/audio/demand.MP3', 0, 0, 0, CAST(0x0000A54F00BD05E0 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1559', N'departure', N'/dist/hp/img/departure.JPG', N'/dɪˈpɑːrtʃər/', N'sự khởi hành', N'/dist/hp/audio/departure.MP3', 0, 0, 0, CAST(0x0000A54F00BD05E8 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'156', N'lady', N'/dist/hp/img/lady.JPG', N'/ˈleɪdi/', N'phụ nữ', N'/dist/hp/audio/lady.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB0B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1560', N'depend', N'/dist/hp/img/depend.JPG', N'/dɪˈpend/', N'phụ thuộc', N'/dist/hp/audio/depend.MP3', 0, 0, 0, CAST(0x0000A54F00BD05F1 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1561', N'description', N'/dist/hp/img/description.JPG', N'/dɪˈskrɪpʃn/', N'sự mô tả', N'/dist/hp/audio/description.MP3', 0, 0, 0, CAST(0x0000A54F00BD05FA AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1562', N'desire', N'/dist/hp/img/desire.JPG', N'/dɪˈzaɪər/', N'sự mong muốn', N'/dist/hp/audio/desire.MP3', 0, 0, 0, CAST(0x0000A54F00BD0603 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1563', N'destroy', N'/dist/hp/img/destroy.JPG', N'/dɪˈstrɔɪ/', N'phá huỷ', N'/dist/hp/audio/destroy.MP3', 0, 0, 0, CAST(0x0000A54F00BD060D AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1564', N'detail', N'/dist/hp/img/detail.JPG', N'/ˈdiːteɪl/', N'chi tiết', N'/dist/hp/audio/detail.MP3', 0, 0, 0, CAST(0x0000A54F00BD0616 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1565', N'development', N'/dist/hp/img/development.JPG', N'/dɪˈveləpmənt/', N'sự phát triển', N'/dist/hp/audio/development.MP3', 0, 0, 0, CAST(0x0000A54F00BD0620 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1566', N'diet', N'/dist/hp/img/diet.JPG', N'/ˈdaɪət/', N'chế độ ăn kiêng', N'/dist/hp/audio/diet.MP3', 0, 0, 0, CAST(0x0000A54F00BD062C AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1567', N'difference', N'/dist/hp/img/difference.JPG', N'/ˈdɪfrəns/', N'sự khác nhau', N'/dist/hp/audio/difference.MP3', 0, 0, 0, CAST(0x0000A54F00BD0635 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1568', N'difficulty', N'/dist/hp/img/difficulty.JPG', N'/ˈdɪfɪkəlti/', N'sự khó khăn', N'/dist/hp/audio/difficulty.MP3', 0, 0, 0, CAST(0x0000A54F00BD063F AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1569', N'directly', N'/dist/hp/img/directly.JPG', N'/daɪˈrektli/', N'trực tiếp', N'/dist/hp/audio/directly.MP3', 0, 0, 0, CAST(0x0000A54F00BD0649 AS DateTime), 2, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'157', N'large', N'/dist/hp/img/large.JPG', N'/lɑːrdʒ/', N'rộng lớn', N'/dist/hp/audio/large.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB14 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1570', N'disagree', N'/dist/hp/img/disagree.JPG', N'/ˌdɪsəˈɡriː/', N'không đồng ý', N'/dist/hp/audio/disagree.MP3', 0, 0, 0, CAST(0x0000A54F00BD0653 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1571', N'disappear', N'/dist/hp/img/disappear.JPG', N'/ˌdɪsəˈpɪr/', N'biến mất', N'/dist/hp/audio/disappear.MP3', 0, 0, 0, CAST(0x0000A54F00BD065D AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1572', N'discover', N'/dist/hp/img/discover.JPG', N'/dɪˈskʌvər/', N'khám phá', N'/dist/hp/audio/discover.MP3', 0, 0, 0, CAST(0x0000A54F00BD0667 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1573', N'discovery', N'/dist/hp/img/discovery.JPG', N'/dɪˈskʌvəri/', N'sự khám phá', N'/dist/hp/audio/discovery.MP3', 0, 0, 0, CAST(0x0000A54F00BD0672 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1574', N'discussion', N'/dist/hp/img/discussion.JPG', N'/dɪˈskʌʃn/', N'sự thảo luận', N'/dist/hp/audio/discussion.MP3', 0, 0, 0, CAST(0x0000A54F00BD067E AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1575', N'dish', N'/dist/hp/img/dish.JPG', N'/dɪʃ/', N'món ăn', N'/dist/hp/audio/dish.MP3', 0, 0, 0, CAST(0x0000A54F00BD0689 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1576', N'distance', N'/dist/hp/img/distance.JPG', N'/ˈdɪstəns/', N'khoảng cách', N'/dist/hp/audio/distance.MP3', 0, 0, 0, CAST(0x0000A54F00BD0693 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1577', N'document', N'/dist/hp/img/document.JPG', N'/ˈdɑːkjumənt/', N'tài liệu', N'/dist/hp/audio/document.MP3', 0, 0, 0, CAST(0x0000A54F00BD069D AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1578', N'doubt', N'/dist/hp/img/doubt.JPG', N'/daʊt/', N'sự nghi ngờ', N'/dist/hp/audio/doubt.MP3', 0, 0, 0, CAST(0x0000A54F00BD06A7 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1579', N'drama', N'/dist/hp/img/drama.JPG', N'/ˈdrɑːmə/', N'vở kịch', N'/dist/hp/audio/drama.MP3', 0, 0, 0, CAST(0x0000A54F00BD06AF AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'158', N'late', N'/dist/hp/img/late.JPG', N'/leɪt/', N'trễ, cuối', N'/dist/hp/audio/late.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB1D AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1580', N'duty', N'/dist/hp/img/duty.JPG', N'/ˈduːti/', N'nhiệm vụ', N'/dist/hp/audio/duty.MP3', 0, 0, 0, CAST(0x0000A54F00BD06BB AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1581', N'earn', N'/dist/hp/img/earn.JPG', N'/ɜːrn/', N'kiếm được', N'/dist/hp/audio/earn.MP3', 0, 0, 0, CAST(0x0000A54F00BD06C4 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1582', N'economy', N'/dist/hp/img/economy.JPG', N'/ɪˈkɑːnəmi/', N'kinh tế', N'/dist/hp/audio/economy.MP3', 0, 0, 0, CAST(0x0000A54F00BD06CD AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1583', N'edition', N'/dist/hp/img/edition.JPG', N'/ɪˈdɪʃən/', N'số bản in', N'/dist/hp/audio/edition.MP3', 0, 0, 0, CAST(0x0000A54F00BD06D6 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1584', N'editor', N'/dist/hp/img/editor.JPG', N'/ˈedɪtər/', N'biên tập viên', N'/dist/hp/audio/editor.MP3', 0, 0, 0, CAST(0x0000A54F00BD06E0 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1585', N'educate', N'/dist/hp/img/educate.JPG', N'/ˈed.jʊ.keɪt/', N'giáo dục', N'/dist/hp/audio/educate.MP3', 0, 0, 0, CAST(0x0000A54F00BD06E9 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1586', N'effective', N'/dist/hp/img/effective.JPG', N'/ɪˈfektɪv/', N'có hiệu quả', N'/dist/hp/audio/effective.MP3', 0, 0, 0, CAST(0x0000A54F00BD06F3 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1587', N'effort', N'/dist/hp/img/effort.JPG', N'/ˈefərt/', N'sự nỗ lực', N'/dist/hp/audio/effort.MP3', 0, 0, 0, CAST(0x0000A54F00BD06FC AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1588', N'elevator', N'/dist/hp/img/elevator.JPG', N'/ˈelɪveɪtər/', N'thang máy', N'/dist/hp/audio/elevator.MP3', 0, 0, 0, CAST(0x0000A54F00BD0705 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1589', N'emergency', N'/dist/hp/img/emergency.JPG', N'/iˈmɜːdʒənsi/', N'tình trạng khẩn cấp', N'/dist/hp/audio/emergency.MP3', 0, 0, 0, CAST(0x0000A54F00BD070F AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'159', N'learn', N'/dist/hp/img/learn.JPG', N'/lɝːn/', N'học tập', N'/dist/hp/audio/learn.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB26 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1590', N'emotion', N'/dist/hp/img/emotion.JPG', N'/ɪˈmoʊʃn/', N'cảm xúc', N'/dist/hp/audio/emotion.MP3', 0, 0, 0, CAST(0x0000A54F00BD0717 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1591', N'unemployed', N'/dist/hp/img/unemployed.JPG', N'/ˌʌnɪmˈplɔɪd/', N'thất nghiệp', N'/dist/hp/audio/unemployed.MP3', 0, 0, 0, CAST(0x0000A54F00BD0720 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1592', N'employee', N'/dist/hp/img/employee.JPG', N'/ɪmˈplɔɪiː/', N'nhân công', N'/dist/hp/audio/employee.MP3', 0, 0, 0, CAST(0x0000A54F00BD072A AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1593', N'employer', N'/dist/hp/img/employer.JPG', N'/ɪmˈplɔɪər/', N'chủ', N'/dist/hp/audio/employer.MP3', 0, 0, 0, CAST(0x0000A54F00BD0733 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1594', N'enable', N'/dist/hp/img/enable.JPG', N'/ɪˈneɪbl/', N'làm cho có thể', N'/dist/hp/audio/enable.MP3', 0, 0, 0, CAST(0x0000A54F00BD073E AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1595', N'encourage', N'/dist/hp/img/encourage.JPG', N'/ɪnˈkɜːrɪdʒ/', N'khuyến khích', N'/dist/hp/audio/encourage.MP3', 0, 0, 0, CAST(0x0000A54F00BD0748 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1596', N'engage', N'/dist/hp/img/engage.JPG', N'/ɪnˈɡeɪdʒ/', N'hẹn ước', N'/dist/hp/audio/engage.MP3', 0, 0, 0, CAST(0x0000A54F00BD0751 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1597', N'ensure', N'/dist/hp/img/ensure.JPG', N'/ɪnˈʃʊr/', N'bảo đảm', N'/dist/hp/audio/ensure.MP3', 0, 0, 0, CAST(0x0000A54F00BD075A AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1598', N'entire', N'/dist/hp/img/entire.JPG', N'/ɪnˈtaɪər/', N'toàn bộ', N'/dist/hp/audio/entire.MP3', 0, 0, 0, CAST(0x0000A54F00BD0763 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1599', N'entry', N'/dist/hp/img/entry.JPG', N'/ˈentri/', N'cửa vào', N'/dist/hp/audio/entry.MP3', 0, 0, 0, CAST(0x0000A54F00BD076E AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'16', N'baby', N'/dist/hp/img/baby.JPG', N'/ˈbeɪbi/', N'đứa bé mới sinh', N'/dist/hp/audio/baby.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5ED AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'160', N'left', N'/dist/hp/img/left.JPG', N'/left/', N'bên trái', N'/dist/hp/audio/left.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB30 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1600', N'envelope', N'/dist/hp/img/envelope.JPG', N'/ˈenvəloʊp/', N'bì thư', N'/dist/hp/audio/envelope.MP3', 0, 0, 0, CAST(0x0000A54F00BD0778 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1601', N'equipment', N'/dist/hp/img/equipment.JPG', N'/ɪˈkwɪpmənt/', N'thiết bị', N'/dist/hp/audio/equipment.MP3', 0, 0, 0, CAST(0x0000A54F00BD0781 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1602', N'escape', N'/dist/hp/img/escape.JPG', N'/ɪˈskeɪp/', N'trốn thoát', N'/dist/hp/audio/escape.MP3', 0, 0, 0, CAST(0x0000A54F00BD078A AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1603', N'essential', N'/dist/hp/img/essential.JPG', N'/ɪˈsenʃl/', N'cần thiết', N'/dist/hp/audio/essential.MP3', 0, 0, 0, CAST(0x0000A54F00BD0794 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1604', N'establish', N'/dist/hp/img/establish.JPG', N'/ɪˈstæblɪʃ/', N'thành lập', N'/dist/hp/audio/establish.MP3', 0, 0, 0, CAST(0x0000A54F00BD079D AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1605', N'evidence', N'/dist/hp/img/evidence.JPG', N'/ˈevɪdəns/', N'bằng chứng', N'/dist/hp/audio/evidence.MP3', 0, 0, 0, CAST(0x0000A54F00BD07A7 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1606', N'exchange', N'/dist/hp/img/exchange.JPG', N'/ɪksˈtʃeɪndʒ/', N'trao đổi', N'/dist/hp/audio/exchange.MP3', 0, 0, 0, CAST(0x0000A54F00BD07B1 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1607', N'exist', N'/dist/hp/img/exist.JPG', N'/ɪɡˈzɪst/', N'tồn tại', N'/dist/hp/audio/exist.MP3', 0, 0, 0, CAST(0x0000A54F00BD07BB AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1608', N'expand', N'/dist/hp/img/expand.JPG', N'/ɪkˈspænd/', N'mở rộng', N'/dist/hp/audio/expand.MP3', 0, 0, 0, CAST(0x0000A54F00BD07C3 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1609', N'unexpected', N'/dist/hp/img/unexpected.JPG', N'/ˌʌnɪkˈspektɪd/', N'không ngờ', N'/dist/hp/audio/unexpected.MP3', 0, 0, 0, CAST(0x0000A54F00BD07CC AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'161', N'leg', N'/dist/hp/img/leg.JPG', N'/leɡ/', N'chân, cẳng', N'/dist/hp/audio/leg.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB3A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1610', N'expectation', N'/dist/hp/img/expectation.JPG', N'/ˌekspekˈteɪʃn/', N'sự kỳ vọng', N'/dist/hp/audio/expectation.MP3', 0, 0, 0, CAST(0x0000A54F00BD07D5 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1611', N'expert', N'/dist/hp/img/expert.JPG', N'/ˈekspɜːrt/', N'chuyên gia', N'/dist/hp/audio/expert.MP3', 0, 0, 0, CAST(0x0000A54F00BD07DE AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1612', N'explain', N'/dist/hp/img/explain.JPG', N'/ɪkˈspleɪn/', N'giải thích', N'/dist/hp/audio/explain.MP3', 0, 0, 0, CAST(0x0000A54F00BD07E6 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1613', N'explore', N'/dist/hp/img/explore.JPG', N'/ɪkˈsplɔːr/', N'thám hiểm', N'/dist/hp/audio/explore.MP3', 0, 0, 0, CAST(0x0000A54F00BD07F0 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1614', N'export', N'/dist/hp/img/export.JPG', N'/ɪkˈspɔːrt/', N'xuất khẩu', N'/dist/hp/audio/export.MP3', 0, 0, 0, CAST(0x0000A54F00BD07FA AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1615', N'extra', N'/dist/hp/img/extra.JPG', N'/ˈekstrə/', N'thêm', N'/dist/hp/audio/extra.MP3', 0, 0, 0, CAST(0x0000A54F00BD0802 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1616', N'facility', N'/dist/hp/img/facility.JPG', N'/fəˈsɪləti/', N'những tiện nghi', N'/dist/hp/audio/facility.MP3', 0, 0, 0, CAST(0x0000A54F00BD080A AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1617', N'factor', N'/dist/hp/img/factor.JPG', N'/ˈfæktər/', N'nhân tố', N'/dist/hp/audio/factor.MP3', 0, 0, 0, CAST(0x0000A54F00BD0813 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1618', N'failure', N'/dist/hp/img/failure.JPG', N'/ˈfeɪljər/', N'sự thất bại', N'/dist/hp/audio/failure.MP3', 0, 0, 0, CAST(0x0000A54F00BD081C AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1619', N'familiar', N'/dist/hp/img/familiar.JPG', N'/fəˈmɪliər/', N'quen thuộc', N'/dist/hp/audio/familiar.MP3', 0, 0, 0, CAST(0x0000A54F00BD0824 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'162', N'let', N'/dist/hp/img/let.JPG', N'/let/', N'hãy, để', N'/dist/hp/audio/let.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB43 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1620', N'further', N'/dist/hp/img/further.JPG', N'/ˈfɜːrðər/', N'xa hơn nữa', N'/dist/hp/audio/further.MP3', 0, 0, 0, CAST(0x0000A54F00BD082D AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1621', N'feature', N'/dist/hp/img/feature.JPG', N'/ˈfiːtʃər/', N'đặc điểm', N'/dist/hp/audio/feature.MP3', 0, 0, 0, CAST(0x0000A54F00BD0835 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1622', N'fence', N'/dist/hp/img/fence.JPG', N'/fens/', N'hàng rào', N'/dist/hp/audio/fence.MP3', 0, 0, 0, CAST(0x0000A54F00BD083F AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1623', N'financial', N'/dist/hp/img/financial.JPG', N'/faɪˈnænʃl/', N'thuộc tài chính', N'/dist/hp/audio/financial.MP3', 0, 0, 0, CAST(0x0000A54F00BD0849 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1624', N'firm', N'/dist/hp/img/firm.JPG', N'/fɜːrm/', N'công ty', N'/dist/hp/audio/firm.MP3', 0, 0, 0, CAST(0x0000A54F00BD0851 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1625', N'flash', N'/dist/hp/img/flash.JPG', N'/flæʃ/', N'vụt qua', N'/dist/hp/audio/flash.MP3', 0, 0, 0, CAST(0x0000A54F00BD0859 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1626', N'flight', N'/dist/hp/img/flight.JPG', N'/flaɪt/', N'chuyến bay', N'/dist/hp/audio/flight.MP3', 0, 0, 0, CAST(0x0000A54F00BD0863 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1627', N'focus', N'/dist/hp/img/focus.JPG', N'/ˈfoʊkəs/', N'tập trung', N'/dist/hp/audio/focus.MP3', 0, 0, 0, CAST(0x0000A54F00BD086C AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1628', N'foreign', N'/dist/hp/img/foreign.JPG', N'/ˈfɔːrən/', N'thuộc nước ngoài', N'/dist/hp/audio/foreign.MP3', 0, 0, 0, CAST(0x0000A54F00BD0875 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1629', N'formal', N'/dist/hp/img/formal.JPG', N'/ˈfɔːrməl/', N'trang trọng', N'/dist/hp/audio/formal.MP3', 0, 0, 0, CAST(0x0000A54F00BD087E AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'163', N'level', N'/dist/hp/img/level.JPG', N'/ˈlevl/', N'trình độ', N'/dist/hp/audio/level.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB4D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1630', N'fortune', N'/dist/hp/img/fortune.JPG', N'/ˈfɔːrtʃun/', N'vận may', N'/dist/hp/audio/fortune.MP3', 0, 0, 0, CAST(0x0000A54F00BD0887 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1631', N'foundation', N'/dist/hp/img/foundation.JPG', N'/faʊnˈdeɪʃn/', N'nền móng', N'/dist/hp/audio/foundation.MP3', 0, 0, 0, CAST(0x0000A54F00BD0890 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1632', N'frequently', N'/dist/hp/img/frequently.JPG', N'/ˈfriːkwəntli/', N'thường xuyên', N'/dist/hp/audio/frequently.MP3', 0, 0, 0, CAST(0x0000A54F00BD089A AS DateTime), 2, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1633', N'frighten', N'/dist/hp/img/frighten.JPG', N'/ˈfraɪtn/', N'làm hoảng sợ', N'/dist/hp/audio/frighten.MP3', 0, 0, 0, CAST(0x0000A54F00BD08A3 AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1634', N'fry', N'/dist/hp/img/fry.JPG', N'/fraɪ/', N'chiên, rán', N'/dist/hp/audio/fry.MP3', 0, 0, 0, CAST(0x0000A54F00BD08AC AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1635', N'fuel', N'/dist/hp/img/fuel.JPG', N'/ˈfjuːəl/', N'nhiên liệu', N'/dist/hp/audio/fuel.MP3', 0, 0, 0, CAST(0x0000A54F00BD08B5 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1636', N'function', N'/dist/hp/img/function.JPG', N'/ˈfʌŋkʃn/', N'chức năng', N'/dist/hp/audio/function.MP3', 0, 0, 0, CAST(0x0000A54F00BD08BE AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1637', N'fund', N'/dist/hp/img/fund.JPG', N'/fʌn/', N'quỹ', N'/dist/hp/audio/fund.MP3', 0, 0, 0, CAST(0x0000A54F00BD08C7 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1638', N'fur', N'/dist/hp/img/fur.JPG', N'/fɜːr/', N'lông thú', N'/dist/hp/audio/fur.MP3', 0, 0, 0, CAST(0x0000A54F00BD08D0 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1639', N'gamble', N'/dist/hp/img/gamble.JPG', N'/ˈɡæmbl/', N'đánh bạc', N'/dist/hp/audio/gamble.MP3', 0, 0, 0, CAST(0x0000A54F00BD08DA AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'164', N'life', N'/dist/hp/img/life.JPG', N'/laɪf/', N'cuộc đời', N'/dist/hp/audio/life.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB56 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1640', N'gasoline', N'/dist/hp/img/gasoline.JPG', N'/ˈɡæsəliːn/', N'xăng dầu', N'/dist/hp/audio/gasoline.MP3', 0, 0, 0, CAST(0x0000A54F00BD08E2 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1641', N'generation', N'/dist/hp/img/generation.JPG', N'/ˌdʒenəˈreɪʃn/', N'thế hệ', N'/dist/hp/audio/generation.MP3', 0, 0, 0, CAST(0x0000A54F00BD08EB AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1642', N'generous', N'/dist/hp/img/generous.JPG', N'/ˈdʒenərəs/', N'hào phóng', N'/dist/hp/audio/generous.MP3', 0, 0, 0, CAST(0x0000A54F00BD08F4 AS DateTime), 2, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1643', N'geography', N'/dist/hp/img/geography.JPG', N'/dʒiˈɑːɡrəfi/', N'địa lý học', N'/dist/hp/audio/geography.MP3', 0, 0, 0, CAST(0x0000A54F00BD08FD AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1644', N'giant', N'/dist/hp/img/giant.JPG', N'/ˈdʒaɪənt/', N'người khổng lồ', N'/dist/hp/audio/giant.MP3', 0, 0, 0, CAST(0x0000A54F00BD0908 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1645', N'glove', N'/dist/hp/img/glove.JPG', N'/ɡlʌv/', N'bao tay', N'/dist/hp/audio/glove.MP3', 0, 0, 0, CAST(0x0000A54F00BD0912 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1646', N'glue', N'/dist/hp/img/glue.JPG', N'/ɡluː/', N'hồ dán', N'/dist/hp/audio/glue.MP3', 0, 0, 0, CAST(0x0000A54F00BD091B AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1647', N'goods', N'/dist/hp/img/goods.JPG', N'/ɡʊdz/', N'hàng hóa', N'/dist/hp/audio/goods.MP3', 0, 0, 0, CAST(0x0000A54F00BD0924 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1648', N'grab', N'/dist/hp/img/grab.JPG', N'/ɡræb/', N'chộp, túm', N'/dist/hp/audio/grab.MP3', 0, 0, 0, CAST(0x0000A54F00BD092E AS DateTime), 2, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'1649', N'grade', N'/dist/hp/img/grade.JPG', N'/ɡreɪd/', N'điểm', N'/dist/hp/audio/grade.MP3', 0, 0, 0, CAST(0x0000A54F00BD0938 AS DateTime), 2, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'165', N'like', N'/dist/hp/img/like.JPG', N'/laɪk/', N'thích', N'/dist/hp/audio/like.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB5F AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'166', N'listen', N'/dist/hp/img/listen.JPG', N'/ˈlɪsn/', N'lắng nghe', N'/dist/hp/audio/listen.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB68 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'167', N'live', N'/dist/hp/img/live.JPG', N'/lɪv/', N'sống, ở', N'/dist/hp/audio/live.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB70 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'168', N'long', N'/dist/hp/img/long.JPG', N'/lɑːŋ/', N'dài, lâu', N'/dist/hp/audio/long.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB7A AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'169', N'look', N'/dist/hp/img/look.JPG', N'/lʊk/', N'nhìn, ngó, xem', N'/dist/hp/audio/look.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB83 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'17', N'back', N'/dist/hp/img/back.JPG', N'/bæk/', N'lưng', N'/dist/hp/audio/back.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5F6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'170', N'love', N'/dist/hp/img/love.JPG', N'/lʌv/', N'tình yêu', N'/dist/hp/audio/love.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB8C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'171', N'make', N'/dist/hp/img/make.JPG', N'/meɪk/', N'làm ra, tạo ra', N'/dist/hp/audio/make.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB96 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'172', N'man', N'/dist/hp/img/man.JPG', N'/mæn/', N'đàn ông', N'/dist/hp/audio/man.MP3', 0, 0, 0, CAST(0x0000A54F00BCFB9F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'173', N'many', N'/dist/hp/img/many.JPG', N'/ˈmeni/', N'nhiều', N'/dist/hp/audio/many.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBA7 AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'174', N'map', N'/dist/hp/img/map.JPG', N'/mæp/', N'bản đồ', N'/dist/hp/audio/map.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBB3 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'175', N'market', N'/dist/hp/img/market.JPG', N'/ˈmɑːrkɪt /', N'chợ, thị trường', N'/dist/hp/audio/market.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBBD AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'176', N'may', N'/dist/hp/img/may.JPG', N'/meɪ/', N'có thể', N'/dist/hp/audio/may.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBC7 AS DateTime), 1, N'modal', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'177', N'me', N'/dist/hp/img/me.JPG', N'/mɪ/', N'tôi', N'/dist/hp/audio/me.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBD0 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'178', N'meat', N'/dist/hp/img/meat.JPG', N'/miːt/', N'thịt', N'/dist/hp/audio/meat.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBD9 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'179', N'meet', N'/dist/hp/img/meet.JPG', N'/miːt/', N'gặp', N'/dist/hp/audio/meet.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBE2 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'18', N'bad', N'/dist/hp/img/bad.JPG', N'/bæd/', N'xấu, tệ', N'/dist/hp/audio/bad.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5FF AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'180', N'milk', N'/dist/hp/img/milk.JPG', N'/mɪlk/', N'sữa', N'/dist/hp/audio/milk.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBEC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'181', N'minute', N'/dist/hp/img/minute.JPG', N'/ˈmɪnɪt/', N'phút', N'/dist/hp/audio/minute.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBF6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'182', N'miss', N'/dist/hp/img/miss.JPG', N'/mɪs/', N'bỏ lỡ', N'/dist/hp/audio/miss.MP3', 0, 0, 0, CAST(0x0000A54F00BCFBFE AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'183', N'money', N'/dist/hp/img/money.JPG', N'/ˈmʌni/', N'tiền', N'/dist/hp/audio/money.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC06 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'184', N'month', N'/dist/hp/img/month.JPG', N'/mʌnθ/', N'tháng', N'/dist/hp/audio/month.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC0F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'185', N'moon', N'/dist/hp/img/moon.JPG', N'/muːn/', N'mặt trăng', N'/dist/hp/audio/moon.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC1A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'186', N'morning', N'/dist/hp/img/morning.JPG', N'/ˈmɔːrnɪŋ/', N'buổi sáng', N'/dist/hp/audio/morning.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC23 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'187', N'mother', N'/dist/hp/img/mother.JPG', N'/ˈmʌðə/', N'mẹ', N'/dist/hp/audio/mother.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC2D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'188', N'mouth', N'/dist/hp/img/mouth.JPG', N'/maʊθ/', N'miệng', N'/dist/hp/audio/mouth.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC37 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'189', N'music', N'/dist/hp/img/music.JPG', N'/ˈmjuːzɪk/', N'âm nhạc', N'/dist/hp/audio/music.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC40 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'19', N'ball', N'/dist/hp/img/ball.JPG', N'/bɔːl/', N'trái banh, bóng', N'/dist/hp/audio/ball.MP3', 0, 0, 0, CAST(0x0000A54F00BCF608 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'190', N'my', N'/dist/hp/img/my.JPG', N'/maɪ/', N'của tôi', N'/dist/hp/audio/my.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC4A AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'191', N'name', N'/dist/hp/img/name.JPG', N'/neɪm/', N'tên', N'/dist/hp/audio/name.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC53 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'192', N'near', N'/dist/hp/img/near.JPG', N'/nɪr/', N'gần', N'/dist/hp/audio/near.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC5D AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'193', N'neck', N'/dist/hp/img/neck.JPG', N'/nek/', N'cổ', N'/dist/hp/audio/neck.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC66 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'194', N'never', N'/dist/hp/img/never.JPG', N'/ˈnevə/', N'không bao giờ', N'/dist/hp/audio/never.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC6F AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'195', N'new', N'/dist/hp/img/new.JPG', N'/nuː/', N'mới', N'/dist/hp/audio/new.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC78 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'196', N'next', N'/dist/hp/img/next.JPG', N'/nekst/', N'tiếp theo', N'/dist/hp/audio/next.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC81 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'197', N'night', N'/dist/hp/img/night.JPG', N'/naɪt/', N'ban đêm', N'/dist/hp/audio/night.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC8A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'198', N'nine', N'/dist/hp/img/nine.JPG', N'/naɪn/', N'số chín', N'/dist/hp/audio/nine.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC93 AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'199', N'noon', N'/dist/hp/img/noon.JPG', N'/nuːn/', N'buổi trưa', N'/dist/hp/audio/noon.MP3', 0, 0, 0, CAST(0x0000A54F00BCFC9C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2', N'add', N'/dist/hp/img/add.JPG', N'/æd/', N'thêm vào', N'/dist/hp/audio/add.MP3', 0, 0, 0, CAST(0x0000A54F00BCF56A AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'20', N'band', N'/dist/hp/img/band.JPG', N'/bænd/', N'ban nhạc', N'/dist/hp/audio/band.MP3', 0, 0, 0, CAST(0x0000A54F00BCF612 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'200', N'nose', N'/dist/hp/img/nose.JPG', N'/noʊz/', N'mũi', N'/dist/hp/audio/nose.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCA5 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'201', N'noun', N'/dist/hp/img/noun.JPG', N'/naʊn/', N'danh từ', N'/dist/hp/audio/noun.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCAE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2011', N'probable', N'/dist/hp/img/probable.JPG', N'/ˈprɑːbəbl ̩/', N'có thể', N'/dist/hp/audio/probable.MP3', 0, 0, 0, CAST(0x0000A54F00BD0941 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2012', N'whether', N'/dist/hp/img/whether.JPG', N'/ˈweðə/', N'liệu có', N'/dist/hp/audio/whether.MP3', 0, 0, 0, CAST(0x0000A54F00BD094A AS DateTime), 3, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2013', N'abandon', N'/dist/hp/img/abandon.JPG', N'/əˈbændən/', N'bỏ rơi', N'/dist/hp/audio/abandon.MP3', 0, 0, 0, CAST(0x0000A54F00BD0953 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2014', N'absolutely', N'/dist/hp/img/absolutely.JPG', N'/ˈæbsəluːtli/', N'hoàn toàn', N'/dist/hp/audio/absolutely.MP3', 0, 0, 0, CAST(0x0000A54F00BD095C AS DateTime), 3, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2015', N'academic', N'/dist/hp/img/academic.JPG', N'/ˌækəˈdemɪk/', N'thuộc học thuật', N'/dist/hp/audio/academic.MP3', 0, 0, 0, CAST(0x0000A54F00BD0965 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2016', N'accent', N'/dist/hp/img/accent.JPG', N'/ˈæksənt/', N'giọng', N'/dist/hp/audio/accent.MP3', 0, 0, 0, CAST(0x0000A54F00BD0971 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2017', N'accommodation', N'/dist/hp/img/accommodation.JPG', N'/əˌkɑːməˈdeɪʃn/', N'chỗ ở', N'/dist/hp/audio/accommodation.MP3', 0, 0, 0, CAST(0x0000A54F00BD097B AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2018', N'accurate', N'/dist/hp/img/accurate.JPG', N'/ˈækjərət/', N'chính xác', N'/dist/hp/audio/accurate.MP3', 0, 0, 0, CAST(0x0000A54F00BD0986 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2019', N'achievement', N'/dist/hp/img/achievement.JPG', N'/əˈtʃiːvmənt/', N'thành tích', N'/dist/hp/audio/achievement.MP3', 0, 0, 0, CAST(0x0000A54F00BD0998 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'202', N'now', N'/dist/hp/img/now.JPG', N'/naʊ/', N'bây giờ', N'/dist/hp/audio/now.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCB7 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2020', N'additional', N'/dist/hp/img/additional.JPG', N'/əˈdɪʃənl/', N'thêm', N'/dist/hp/audio/additional.MP3', 0, 0, 0, CAST(0x0000A54F00BD09A7 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2021', N'afford', N'/dist/hp/img/afford.JPG', N'/əˈfɔːrd/', N'đủ khả năng', N'/dist/hp/audio/afford.MP3', 0, 0, 0, CAST(0x0000A54F00BD09B7 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2022', N'afterwards', N'/dist/hp/img/afterwards.JPG', N'/ˈæftərwərdz/', N'sau này', N'/dist/hp/audio/afterwards.MP3', 0, 0, 0, CAST(0x0000A54F00BD09C3 AS DateTime), 3, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2023', N'amazing', N'/dist/hp/img/amazing.JPG', N'/əˈmeɪzɪŋ/', N'làm kinh ngạc', N'/dist/hp/audio/amazing.MP3', 0, 0, 0, CAST(0x0000A54F00BD09D2 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2024', N'ambition', N'/dist/hp/img/ambition.JPG', N'/æmˈbɪʃn/', N'hoài bão', N'/dist/hp/audio/ambition.MP3', 0, 0, 0, CAST(0x0000A54F00BD09DE AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2025', N'analyze', N'/dist/hp/img/analyze.JPG', N'/ˈænəlaɪz/', N'phân tích', N'/dist/hp/audio/analyze.MP3', 0, 0, 0, CAST(0x0000A54F00BD09EA AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2026', N'anticipate', N'/dist/hp/img/anticipate.JPG', N'/ænˈtɪsɪpeɪt/', N'lường trước', N'/dist/hp/audio/anticipate.MP3', 0, 0, 0, CAST(0x0000A54F00BD09FA AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2027', N'anxiety', N'/dist/hp/img/anxiety.JPG', N'/æŋˈzaɪəti/', N'sự lo lắng', N'/dist/hp/audio/anxiety.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A06 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2028', N'anxious', N'/dist/hp/img/anxious.JPG', N'/ˈæŋkʃəs/', N'lo lắng', N'/dist/hp/audio/anxious.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A10 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2029', N'appropriate', N'/dist/hp/img/appropriate.JPG', N'/əˈproʊpriət/', N'thích hợp, thích đáng', N'/dist/hp/audio/appropriate.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A19 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'203', N'number', N'/dist/hp/img/number.JPG', N'/ˈnʌmbər/', N'con số', N'/dist/hp/audio/number.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCC0 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2030', N'arrest', N'/dist/hp/img/arrest.JPG', N'/əˈrest/', N'bắt giữ', N'/dist/hp/audio/arrest.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A23 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2031', N'ashamed', N'/dist/hp/img/ashamed.JPG', N'/əˈʃeɪmd/', N'xấu hổ, hổ thẹn', N'/dist/hp/audio/ashamed.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A2C AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2032', N'assist', N'/dist/hp/img/assist.JPG', N'/əˈsɪst/', N'giúp đỡ', N'/dist/hp/audio/assist.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A36 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2033', N'associate', N'/dist/hp/img/associate.JPG', N'/əˈsoʊʃieɪt/', N'liên kết', N'/dist/hp/audio/associate.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A40 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2034', N'association', N'/dist/hp/img/association.JPG', N'/əˌsoʊʃiˈeɪʃn/', N'hiệp hội', N'/dist/hp/audio/association.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A4A AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2035', N'assume', N'/dist/hp/img/assume.JPG', N'/əˈsuːm/', N'cho rằng, thừa nhận', N'/dist/hp/audio/assume.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A54 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2036', N'bacteria', N'/dist/hp/img/bacteria.JPG', N'/bækˈtɪriə/', N'vi khuẩn', N'/dist/hp/audio/bacteria.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A5E AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2037', N'bake', N'/dist/hp/img/bake.JPG', N'/beɪk/', N'nướng lò, nung', N'/dist/hp/audio/bake.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A67 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2038', N'bandage', N'/dist/hp/img/bandage.JPG', N'/ˈbændɪdʒ/', N'băng gạc', N'/dist/hp/audio/bandage.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A70 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2039', N'barrier', N'/dist/hp/img/barrier.JPG', N'/ˈbæriər/', N'rào cản', N'/dist/hp/audio/barrier.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A88 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'204', N'of', N'/dist/hp/img/of.JPG', N'/əv//ɒv//ʌv/', N'của', N'/dist/hp/audio/of.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCCA AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2040', N'blade', N'/dist/hp/img/blade.JPG', N'/bleɪd/', N'lưỡi (dao, kiếm)', N'/dist/hp/audio/blade.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A91 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2041', N'blonde', N'/dist/hp/img/blonde.JPG', N'/blɑːnd/', N'vàng hoe', N'/dist/hp/audio/blonde.MP3', 0, 0, 0, CAST(0x0000A54F00BD0A9B AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2042', N'briefly', N'/dist/hp/img/briefly.JPG', N'/ˈbriːfli/', N'một cách ngắn gọn', N'/dist/hp/audio/briefly.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AA5 AS DateTime), 3, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2043', N'brilliant', N'/dist/hp/img/brilliant.JPG', N'/ˈbrɪliənt/', N'tài giỏi, rực rỡ', N'/dist/hp/audio/brilliant.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AAF AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2044', N'broadcast', N'/dist/hp/img/broadcast.JPG', N'/ˈbrɑːdkæst/', N'truyền đi, phát thanh', N'/dist/hp/audio/broadcast.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AB8 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2045', N'budget', N'/dist/hp/img/budget.JPG', N'/ˈbʌdʒɪt/', N'ngân sách', N'/dist/hp/audio/budget.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AC1 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2046', N'bunch', N'/dist/hp/img/bunch.JPG', N'/bʌntʃ/', N'búi, chùm, bó', N'/dist/hp/audio/bunch.MP3', 0, 0, 0, CAST(0x0000A54F00BD0ACA AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2047', N'bury', N'/dist/hp/img/bury.JPG', N'/ˈberi/', N'chôn cất', N'/dist/hp/audio/bury.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AD2 AS DateTime), 3, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2048', N'calm', N'/dist/hp/img/calm.JPG', N'/kɑːm/', N'êm đềm, bình tĩnh', N'/dist/hp/audio/calm.MP3', 0, 0, 0, CAST(0x0000A54F00BD0ADB AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2049', N'campaign', N'/dist/hp/img/campaign.JPG', N'/kæmˈpeɪn/', N'chiến dịch', N'/dist/hp/audio/campaign.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AE4 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'205', N'off', N'/dist/hp/img/off.JPG', N'/ɑːf/', N'đứt rời, khỏi', N'/dist/hp/audio/off.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCD5 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2050', N'cap', N'/dist/hp/img/cap.JPG', N'/kæp/', N'mũ lưỡi trai', N'/dist/hp/audio/cap.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AEC AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2051', N'capable', N'/dist/hp/img/capable.JPG', N'/ˈkeɪpəbl ̩/', N'có khả năng, có năng lực', N'/dist/hp/audio/capable.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AF5 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2052', N'capacity', N'/dist/hp/img/capacity.JPG', N'/kəˈpæsəti/', N'sức chứa, khả năng', N'/dist/hp/audio/capacity.MP3', 0, 0, 0, CAST(0x0000A54F00BD0AFE AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2053', N'challenge', N'/dist/hp/img/challenge.JPG', N'/ˈtʃælɪndʒ/', N'sự thách thức', N'/dist/hp/audio/challenge.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B08 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2054', N'characteristic', N'/dist/hp/img/characteristic.JPG', N'/ˌkerəktəˈrɪstɪk/', N'đặc trưng', N'/dist/hp/audio/characteristic.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B11 AS DateTime), 3, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2055', N'charity', N'/dist/hp/img/charity.JPG', N'/ˈtʃerɪt ̬i/', N'quỹ từ thiện', N'/dist/hp/audio/charity.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B1B AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2056', N'chin', N'/dist/hp/img/chin.JPG', N'/tʃɪn/', N'cằm', N'/dist/hp/audio/chin.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B24 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2057', N'circumstance', N'/dist/hp/img/circumstance.JPG', N'/ˈsɜːkəmstæns/', N'hoàn cảnh, tình huống', N'/dist/hp/audio/circumstance.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B37 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2058', N'citizen', N'/dist/hp/img/citizen.JPG', N'/ˈsɪtɪzn/', N'dân thành thị', N'/dist/hp/audio/citizen.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B45 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2059', N'clerk', N'/dist/hp/img/clerk.JPG', N'/klɝːk/', N'thư ký', N'/dist/hp/audio/clerk.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B54 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'206', N'oil', N'/dist/hp/img/oil.JPG', N'/ɔɪl/', N'dầu', N'/dist/hp/audio/oil.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCDF AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'2060', N'coal', N'/dist/hp/img/coal.JPG', N'/koʊl/', N'than đá', N'/dist/hp/audio/coal.MP3', 0, 0, 0, CAST(0x0000A54F00BD0B63 AS DateTime), 3, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'207', N'old', N'/dist/hp/img/old.JPG', N'/oʊld/', N'già, cũ', N'/dist/hp/audio/old.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCE7 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'208', N'on', N'/dist/hp/img/on.JPG', N'/ɑːn/', N'ở trên', N'/dist/hp/audio/on.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCF0 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'209', N'open', N'/dist/hp/img/open.JPG', N'/ˈoʊpən/', N'mở', N'/dist/hp/audio/open.MP3', 0, 0, 0, CAST(0x0000A54F00BCFCF9 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'21', N'bank', N'/dist/hp/img/bank.JPG', N'/bæŋk/', N'ngân hàng', N'/dist/hp/audio/bank.MP3', 0, 0, 0, CAST(0x0000A54F00BCF61B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'210', N'or', N'/dist/hp/img/or.JPG', N'/ɔːr/', N'hoặc; hay', N'/dist/hp/audio/or.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD03 AS DateTime), 1, N'conj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'211', N'our', N'/dist/hp/img/our.JPG', N'/aʊɚ/', N'chúng tôi', N'/dist/hp/audio/our.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD0C AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'212', N'out', N'/dist/hp/img/out.JPG', N'/aʊt/', N'ở ngoài', N'/dist/hp/audio/out.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD14 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'213', N'paper', N'/dist/hp/img/paper.JPG', N'/ˈpeɪpə/', N'giấy', N'/dist/hp/audio/paper.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD1D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'214', N'parent', N'/dist/hp/img/parent.JPG', N'/ˈperə nt/', N'cha; mẹ', N'/dist/hp/audio/parent.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD27 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'215', N'party', N'/dist/hp/img/party.JPG', N'/ˈpɑːrt ̬i/', N'bữa tiệc', N'/dist/hp/audio/party.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD30 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'216', N'people', N'/dist/hp/img/people.JPG', N'/ˈpiːpl/', N'người', N'/dist/hp/audio/people.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD39 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'217', N'person', N'/dist/hp/img/person.JPG', N'/ˈpəːsn/', N'người', N'/dist/hp/audio/person.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD43 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'218', N'picture', N'/dist/hp/img/picture.JPG', N'/ˈpɪktʃə/', N'bức tranh', N'/dist/hp/audio/picture.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD4C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'219', N'place', N'/dist/hp/img/place.JPG', N'/pleɪs/', N'nơi chốn', N'/dist/hp/audio/place.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD54 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'22', N'bar', N'/dist/hp/img/bar.JPG', N'/bɑːr/', N'thanh, thỏi', N'/dist/hp/audio/bar.MP3', 0, 0, 0, CAST(0x0000A54F00BCF627 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'220', N'play', N'/dist/hp/img/play.JPG', N'/pleɪ/', N'chơi', N'/dist/hp/audio/play.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD5E AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'221', N'please', N'/dist/hp/img/please.JPG', N'/pliːz/', N'vui lòng', N'/dist/hp/audio/please.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD67 AS DateTime), 1, N'exclamation', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'222', N'poor', N'/dist/hp/img/poor.JPG', N'/pʊr/', N'nghèo', N'/dist/hp/audio/poor.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD6F AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'223', N'put', N'/dist/hp/img/put.JPG', N'/pʊt/', N'đặt, để', N'/dist/hp/audio/put.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD78 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'224', N'quick', N'/dist/hp/img/quick.JPG', N'/kwɪk/', N'nhanh', N'/dist/hp/audio/quick.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD80 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'225', N'radio', N'/dist/hp/img/radio.JPG', N'/ˈreɪdioʊ/', N'ra-đi-ô', N'/dist/hp/audio/radio.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD8A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'226', N'rain', N'/dist/hp/img/rain.JPG', N'/reɪn/', N'mưa', N'/dist/hp/audio/rain.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD93 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'227', N'read', N'/dist/hp/img/read.JPG', N'/riːd/', N'đọc', N'/dist/hp/audio/read.MP3', 0, 0, 0, CAST(0x0000A54F00BCFD9C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'228', N'red', N'/dist/hp/img/red.JPG', N'/red/', N'màu đỏ', N'/dist/hp/audio/red.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDA5 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'229', N'repeat', N'/dist/hp/img/repeat.JPG', N'/rɪˈpiːt/', N'lặp lại', N'/dist/hp/audio/repeat.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDAE AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'23', N'basic', N'/dist/hp/img/basic.JPG', N'/ˈbeɪsɪk/', N'cơ bản', N'/dist/hp/audio/basic.MP3', 0, 0, 0, CAST(0x0000A54F00BCF630 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'230', N'rich', N'/dist/hp/img/rich.JPG', N'/rɪtʃ/', N'giàu', N'/dist/hp/audio/rich.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDB7 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'231', N'ride', N'/dist/hp/img/ride.JPG', N'/raɪd/', N'lái xe', N'/dist/hp/audio/ride.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDC1 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'232', N'right', N'/dist/hp/img/right.JPG', N'/raɪt/', N'đúng, phải', N'/dist/hp/audio/right.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDCA AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'233', N'river', N'/dist/hp/img/river.JPG', N'/ˈrɪvə/', N'dòng sông', N'/dist/hp/audio/river.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDD4 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'234', N'room', N'/dist/hp/img/room.JPG', N'/rʊm/', N'căn phòng', N'/dist/hp/audio/room.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDDD AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'235', N'rose', N'/dist/hp/img/rose.JPG', N'/roʊz/', N'hoa hồng', N'/dist/hp/audio/rose.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDE6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'236', N'rule', N'/dist/hp/img/rule.JPG', N'/ruːl/', N'nguyên tắc', N'/dist/hp/audio/rule.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDEE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'237', N'run', N'/dist/hp/img/run.JPG', N'/rʌn/', N'chạy', N'/dist/hp/audio/run.MP3', 0, 0, 0, CAST(0x0000A54F00BCFDF8 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'238', N'say', N'/dist/hp/img/say.JPG', N'/seɪ/', N'nói', N'/dist/hp/audio/say.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE00 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'239', N'score', N'/dist/hp/img/score.JPG', N'/skɔːr/', N'điểm số, tỉ số', N'/dist/hp/audio/score.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE09 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'24', N'bat', N'/dist/hp/img/bat.JPG', N'/bæt/', N'con dơi', N'/dist/hp/audio/bat.MP3', 0, 0, 0, CAST(0x0000A54F00BCF639 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'240', N'school', N'/dist/hp/img/school.JPG', N'/skuːl/', N'ngôi trường', N'/dist/hp/audio/school.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE12 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'241', N'sea', N'/dist/hp/img/sea.JPG', N'/siː/', N'biển', N'/dist/hp/audio/sea.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE1B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'242', N'seat', N'/dist/hp/img/seat.JPG', N'/siːt/', N'chỗ ngồi', N'/dist/hp/audio/seat.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE25 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'243', N'see', N'/dist/hp/img/see.JPG', N'/siː/', N'thấy', N'/dist/hp/audio/see.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE30 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'244', N'sell', N'/dist/hp/img/sell.JPG', N'/sel/', N'bán', N'/dist/hp/audio/sell.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE39 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'245', N'send', N'/dist/hp/img/send.JPG', N'/sent/', N'gửi', N'/dist/hp/audio/send.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE42 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'246', N'seven', N'/dist/hp/img/seven.JPG', N'/ˈsevn/', N'số bảy', N'/dist/hp/audio/seven.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE4C AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'247', N'she', N'/dist/hp/img/she.JPG', N'/ʃi//ʃiː/', N'cô ấy, chị ấy, bà ấy', N'/dist/hp/audio/she.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE55 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'248', N'shoe', N'/dist/hp/img/shoe.JPG', N'/ʃuː/', N'chiếc giày', N'/dist/hp/audio/shoe.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE5F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'249', N'shop', N'/dist/hp/img/shop.JPG', N'/ʃɑːp/', N'cửa hàng', N'/dist/hp/audio/shop.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE67 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'25', N'bed', N'/dist/hp/img/bed.JPG', N'/bed/', N'cái giường', N'/dist/hp/audio/bed.MP3', 0, 0, 0, CAST(0x0000A54F00BCF643 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'250', N'short', N'/dist/hp/img/short.JPG', N'/ʃɔːrt/', N'ngắn, thấp', N'/dist/hp/audio/short.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE70 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'251', N'shoulder', N'/dist/hp/img/shoulder.JPG', N'/ˈʃoʊl.dɚ/', N'vai', N'/dist/hp/audio/shoulder.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE79 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'252', N'sing', N'/dist/hp/img/sing.JPG', N'/sɪŋ/', N'hát', N'/dist/hp/audio/sing.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE82 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'253', N'sister', N'/dist/hp/img/sister.JPG', N'/ˈsɪstə/', N'chị, em gái', N'/dist/hp/audio/sister.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE8B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'254', N'sit', N'/dist/hp/img/sit.JPG', N'/sɪt/', N'ngồi', N'/dist/hp/audio/sit.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE94 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'255', N'six', N'/dist/hp/img/six.JPG', N'/sɪks/', N'số sáu', N'/dist/hp/audio/six.MP3', 0, 0, 0, CAST(0x0000A54F00BCFE9D AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'256', N'size', N'/dist/hp/img/size.JPG', N'/saɪz/', N'kích cỡ, quy mô', N'/dist/hp/audio/size.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEA6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'257', N'sky', N'/dist/hp/img/sky.JPG', N'/skaɪ/', N'bầu trời', N'/dist/hp/audio/sky.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEB0 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'258', N'sleep', N'/dist/hp/img/sleep.JPG', N'/sliːp/', N'ngủ', N'/dist/hp/audio/sleep.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEB8 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'259', N'slow', N'/dist/hp/img/slow.JPG', N'/sloʊ/', N'chậm chạp', N'/dist/hp/audio/slow.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEC2 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'26', N'begin', N'/dist/hp/img/begin.JPG', N'/bɪˈɡɪn/', N'bắt đầu', N'/dist/hp/audio/begin.MP3', 0, 0, 0, CAST(0x0000A54F00BCF64C AS DateTime), 1, N'', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'260', N'small', N'/dist/hp/img/small.JPG', N'/smɔːl/', N'nhỏ, bé', N'/dist/hp/audio/small.MP3', 0, 0, 0, CAST(0x0000A54F00BCFECC AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'261', N'snow', N'/dist/hp/img/snow.JPG', N'/snoʊ/', N'tuyết', N'/dist/hp/audio/snow.MP3', 0, 0, 0, CAST(0x0000A54F00BCFED5 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'262', N'son', N'/dist/hp/img/son.JPG', N'/sʌn/', N'con trai', N'/dist/hp/audio/son.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEDF AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'263', N'song', N'/dist/hp/img/song.JPG', N'/sɑːŋ/', N'bài hát', N'/dist/hp/audio/song.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEE8 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'264', N'speak', N'/dist/hp/img/speak.JPG', N'/spiːk/', N'nói', N'/dist/hp/audio/speak.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEF1 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'265', N'spell', N'/dist/hp/img/spell.JPG', N'/spel/', N'đánh vần', N'/dist/hp/audio/spell.MP3', 0, 0, 0, CAST(0x0000A54F00BCFEFC AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'266', N'spring', N'/dist/hp/img/spring.JPG', N'/ˈsprɪŋ/', N'mùa xuân', N'/dist/hp/audio/spring.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF06 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'267', N'stand', N'/dist/hp/img/stand.JPG', N'/stʊd/', N'đứng', N'/dist/hp/audio/stand.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF0F AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'268', N'star', N'/dist/hp/img/star.JPG', N'/stɑːr/', N'ngôi sao', N'/dist/hp/audio/star.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF1A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'269', N'start', N'/dist/hp/img/start.JPG', N'/stɑːrt/', N'bắt đầu, khởi hành', N'/dist/hp/audio/start.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF24 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'27', N'best', N'/dist/hp/img/best.JPG', N'/best/', N'tốt nhất, giỏi nhất', N'/dist/hp/audio/best.MP3', 0, 0, 0, CAST(0x0000A54F00BCF656 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'270', N'stay', N'/dist/hp/img/stay.JPG', N'/steɪ/', N'ở', N'/dist/hp/audio/stay.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF2C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'271', N'stop', N'/dist/hp/img/stop.JPG', N'/stɑːp/', N'dừng lại', N'/dist/hp/audio/stop.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF35 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'272', N'store', N'/dist/hp/img/store.JPG', N'/stɔːr/', N'cửa hàng', N'/dist/hp/audio/store.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF3F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'273', N'study', N'/dist/hp/img/study.JPG', N'/ˈstʌdi/', N'học', N'/dist/hp/audio/study.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF48 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'274', N'street', N'/dist/hp/img/street.JPG', N'/striːt/', N'con đường', N'/dist/hp/audio/street.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF51 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'275', N'strong', N'/dist/hp/img/strong.JPG', N'/strɑːŋ/', N'mạnh mẽ', N'/dist/hp/audio/strong.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF5B AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'276', N'sugar', N'/dist/hp/img/sugar.JPG', N'/ˈʃʊgə/', N'đường', N'/dist/hp/audio/sugar.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF65 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'277', N'summer', N'/dist/hp/img/summer.JPG', N'/ˈsʌmər/', N'mùa hè', N'/dist/hp/audio/summer.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF6E AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'278', N'sun', N'/dist/hp/img/sun.JPG', N'/sʌn/', N'mặt trời', N'/dist/hp/audio/sun.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF77 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'279', N'swim', N'/dist/hp/img/swim.JPG', N'/swɪm/', N'bơi', N'/dist/hp/audio/swim.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF7F AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'28', N'big', N'/dist/hp/img/big.JPG', N'/bɪɡ/', N'lớn, to, bự', N'/dist/hp/audio/big.MP3', 0, 0, 0, CAST(0x0000A54F00BCF65F AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'280', N'table', N'/dist/hp/img/table.JPG', N'/ˈteɪbl/', N'cái bàn', N'/dist/hp/audio/table.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF89 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'281', N'take', N'/dist/hp/img/take.JPG', N'/teɪk/', N'lấy', N'/dist/hp/audio/take.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF92 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'282', N'talk', N'/dist/hp/img/talk.JPG', N'/tɔːk/', N'nói chuyện', N'/dist/hp/audio/talk.MP3', 0, 0, 0, CAST(0x0000A54F00BCFF9C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'283', N'tall', N'/dist/hp/img/tall.JPG', N'/tɔːl/', N'cao', N'/dist/hp/audio/tall.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFA5 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'284', N'teach', N'/dist/hp/img/teach.JPG', N'/tiːtʃ/', N'dạy', N'/dist/hp/audio/teach.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFAD AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'285', N'team', N'/dist/hp/img/team.JPG', N'/tiːm/', N'đội, nhóm', N'/dist/hp/audio/team.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFB6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'286', N'tell', N'/dist/hp/img/tell.JPG', N'/tel/', N'nói, kể', N'/dist/hp/audio/tell.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFBF AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'287', N'ten', N'/dist/hp/img/ten.JPG', N'/ten/', N'số mười', N'/dist/hp/audio/ten.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFC8 AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'288', N'test', N'/dist/hp/img/test.JPG', N'/test/', N'bài kiểm tra', N'/dist/hp/audio/test.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFD2 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'289', N'time', N'/dist/hp/img/time.JPG', N'/taɪm/', N'thời gian', N'/dist/hp/audio/time.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFDC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'29', N'bird', N'/dist/hp/img/bird.JPG', N'/bɝːd/', N'con chim', N'/dist/hp/audio/bird.MP3', 0, 0, 0, CAST(0x0000A54F00BCF667 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'290', N'to', N'/dist/hp/img/to.JPG', N'/tə//tu/ /tuː/', N'tới, đến', N'/dist/hp/audio/to.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFE6 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'291', N'teeth', N'/dist/hp/img/teeth.JPG', N'/tiːθ/', N'răng', N'/dist/hp/audio/teeth.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFEE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'292', N'thank', N'/dist/hp/img/thank.JPG', N'/θæŋk/', N'cảm ơn', N'/dist/hp/audio/thank.MP3', 0, 0, 0, CAST(0x0000A54F00BCFFF8 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'293', N'that', N'/dist/hp/img/that.JPG', N'/ðæt/', N'đó', N'/dist/hp/audio/that.MP3', 0, 0, 0, CAST(0x0000A54F00BD0001 AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'294', N'their', N'/dist/hp/img/their.JPG', N'/ðer/', N'của họ', N'/dist/hp/audio/their.MP3', 0, 0, 0, CAST(0x0000A54F00BD000B AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'295', N'there', N'/dist/hp/img/there.JPG', N'/ðer/', N'ở đó', N'/dist/hp/audio/there.MP3', 0, 0, 0, CAST(0x0000A54F00BD0014 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'296', N'they', N'/dist/hp/img/they.JPG', N'/ðeɪ/', N'họ', N'/dist/hp/audio/they.MP3', 0, 0, 0, CAST(0x0000A54F00BD001C AS DateTime), 1, N'prop', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'297', N'thin', N'/dist/hp/img/thin.JPG', N'/θɪn/', N'gầy', N'/dist/hp/audio/thin.MP3', 0, 0, 0, CAST(0x0000A54F00BD0026 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'298', N'think', N'/dist/hp/img/think.JPG', N'/θɪŋk/', N'nghĩ', N'/dist/hp/audio/think.MP3', 0, 0, 0, CAST(0x0000A54F00BD0030 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'299', N'thing', N'/dist/hp/img/thing.JPG', N'/θɪŋ/', N'đồ, thứ, món…', N'/dist/hp/audio/thing.MP3', 0, 0, 0, CAST(0x0000A54F00BD0039 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'3', N'after', N'/dist/hp/img/after.JPG', N'/ˈæftɚ/', N'sau khi', N'/dist/hp/audio/after.MP3', 0, 0, 0, CAST(0x0000A54F00BCF574 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'30', N'black', N'/dist/hp/img/black.JPG', N'/blæk/', N'màu đen', N'/dist/hp/audio/black.MP3', 0, 0, 0, CAST(0x0000A54F00BCF671 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'300', N'this', N'/dist/hp/img/this.JPG', N'/ðɪs/', N'này', N'/dist/hp/audio/this.MP3', 0, 0, 0, CAST(0x0000A54F00BD0043 AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'301', N'those', N'/dist/hp/img/those.JPG', N'/ðoʊz/', N'đó, kia', N'/dist/hp/audio/those.MP3', 0, 0, 0, CAST(0x0000A54F00BD004C AS DateTime), 1, N'det, pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'302', N'thousand', N'/dist/hp/img/thousand.JPG', N'/ˈθaʊznd/', N'hàng nghìn', N'/dist/hp/audio/thousand.MP3', 0, 0, 0, CAST(0x0000A54F00BD0055 AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'303', N'three', N'/dist/hp/img/three.JPG', N'/θriː/', N'số ba', N'/dist/hp/audio/three.MP3', 0, 0, 0, CAST(0x0000A54F00BD005E AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'304', N'travel', N'/dist/hp/img/travel.JPG', N'/ˈtrævl/', N'du lịch', N'/dist/hp/audio/travel.MP3', 0, 0, 0, CAST(0x0000A54F00BD0066 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'305', N'tree', N'/dist/hp/img/tree.JPG', N'/triː/', N'cây cối', N'/dist/hp/audio/tree.MP3', 0, 0, 0, CAST(0x0000A54F00BD0070 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'306', N'trip', N'/dist/hp/img/trip.JPG', N'/trɪp/', N'chuyến đi', N'/dist/hp/audio/trip.MP3', 0, 0, 0, CAST(0x0000A54F00BD0078 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'307', N'try', N'/dist/hp/img/try.JPG', N'/traɪ/', N'cố gắng', N'/dist/hp/audio/try.MP3', 0, 0, 0, CAST(0x0000A54F00BD0081 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'308', N'under', N'/dist/hp/img/under.JPG', N'/ˈʌndə/', N'bên dưới', N'/dist/hp/audio/under.MP3', 0, 0, 0, CAST(0x0000A54F00BD008A AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'309', N'unit', N'/dist/hp/img/unit.JPG', N'/ˈjuːnɪt/', N'đơn vị', N'/dist/hp/audio/unit.MP3', 0, 0, 0, CAST(0x0000A54F00BD0094 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'31', N'blue', N'/dist/hp/img/blue.JPG', N'/bluː/', N'màu xanh', N'/dist/hp/audio/blue.MP3', 0, 0, 0, CAST(0x0000A54F00BCF67B AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'310', N'up', N'/dist/hp/img/up.JPG', N'/ʌp/', N'lên trên', N'/dist/hp/audio/up.MP3', 0, 0, 0, CAST(0x0000A54F00BD009D AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'311', N'us', N'/dist/hp/img/us.JPG', N'/əs//ʌs/', N'chúng tôi', N'/dist/hp/audio/us.MP3', 0, 0, 0, CAST(0x0000A54F00BD00A7 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'312', N'use', N'/dist/hp/img/use.JPG', N'/juːz/', N'sử dụng', N'/dist/hp/audio/use.MP3', 0, 0, 0, CAST(0x0000A54F00BD00AF AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'313', N'very', N'/dist/hp/img/very.JPG', N'/ˈveri/', N'rất', N'/dist/hp/audio/very.MP3', 0, 0, 0, CAST(0x0000A54F00BD00B8 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'314', N'wait', N'/dist/hp/img/wait.JPG', N'/weɪt/', N'chờ đợi', N'/dist/hp/audio/wait.MP3', 0, 0, 0, CAST(0x0000A54F00BD00C2 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'315', N'walk', N'/dist/hp/img/walk.JPG', N'/wɑːk/', N'đi bộ', N'/dist/hp/audio/walk.MP3', 0, 0, 0, CAST(0x0000A54F00BD00CB AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'316', N'wall', N'/dist/hp/img/wall.JPG', N'/wɑːl/', N'bức tường', N'/dist/hp/audio/wall.MP3', 0, 0, 0, CAST(0x0000A54F00BD00D4 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'317', N'want', N'/dist/hp/img/want.JPG', N'/wɑːnt/', N'muốn', N'/dist/hp/audio/want.MP3', 0, 0, 0, CAST(0x0000A54F00BD00DC AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'318', N'warm', N'/dist/hp/img/warm.JPG', N'/wɔːrm/', N'ấm áp', N'/dist/hp/audio/warm.MP3', 0, 0, 0, CAST(0x0000A54F00BD00E6 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'319', N'wash', N'/dist/hp/img/wash.JPG', N'/wɑːʃ/', N'rửa, giặt', N'/dist/hp/audio/wash.MP3', 0, 0, 0, CAST(0x0000A54F00BD00EF AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'32', N'board', N'/dist/hp/img/board.JPG', N'/bɔːrd/', N'bảng', N'/dist/hp/audio/board.MP3', 0, 0, 0, CAST(0x0000A54F00BCF683 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'320', N'watch', N'/dist/hp/img/watch.JPG', N'/wɑːtʃ/', N'xem', N'/dist/hp/audio/watch.MP3', 0, 0, 0, CAST(0x0000A54F00BD00F8 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'321', N'water', N'/dist/hp/img/water.JPG', N'/ˈwɑːt ̬ɚ/', N'nước', N'/dist/hp/audio/water.MP3', 0, 0, 0, CAST(0x0000A54F00BD0101 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'322', N'way', N'/dist/hp/img/way.JPG', N'/weɪ/', N'đường đi, cách', N'/dist/hp/audio/way.MP3', 0, 0, 0, CAST(0x0000A54F00BD010A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'323', N'we', N'/dist/hp/img/we.JPG', N'/wi//wiː/', N'chúng tôi', N'/dist/hp/audio/we.MP3', 0, 0, 0, CAST(0x0000A54F00BD0113 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'324', N'wear', N'/dist/hp/img/wear.JPG', N'/wer/', N'mặc', N'/dist/hp/audio/wear.MP3', 0, 0, 0, CAST(0x0000A54F00BD011C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'325', N'week', N'/dist/hp/img/week.JPG', N'/wiːk/', N'tuần', N'/dist/hp/audio/week.MP3', 0, 0, 0, CAST(0x0000A54F00BD0125 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'326', N'what', N'/dist/hp/img/what.JPG', N'/wɑːt/', N'cái gì', N'/dist/hp/audio/what.MP3', 0, 0, 0, CAST(0x0000A54F00BD012E AS DateTime), 1, N'det, pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'327', N'when', N'/dist/hp/img/when.JPG', N'/wen/', N'khi nào', N'/dist/hp/audio/when.MP3', 0, 0, 0, CAST(0x0000A54F00BD0137 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'328', N'where', N'/dist/hp/img/where.JPG', N'/wer/', N'ở đâu', N'/dist/hp/audio/where.MP3', 0, 0, 0, CAST(0x0000A54F00BD0140 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'329', N'which', N'/dist/hp/img/which.JPG', N'/wɪtʃ/', N'cái nào, người nào', N'/dist/hp/audio/which.MP3', 0, 0, 0, CAST(0x0000A54F00BD0149 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'33', N'body', N'/dist/hp/img/body.JPG', N'/ˈbɑː.di/', N'cơ thể', N'/dist/hp/audio/body.MP3', 0, 0, 0, CAST(0x0000A54F00BCF68B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'330', N'white', N'/dist/hp/img/white.JPG', N'/waɪt/', N'màu trắng', N'/dist/hp/audio/white.MP3', 0, 0, 0, CAST(0x0000A54F00BD0152 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'331', N'who', N'/dist/hp/img/who.JPG', N'/huː/', N'ai', N'/dist/hp/audio/who.MP3', 0, 0, 0, CAST(0x0000A54F00BD015D AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'332', N'whose', N'/dist/hp/img/whose.JPG', N'/huːz/', N'của ai', N'/dist/hp/audio/whose.MP3', 0, 0, 0, CAST(0x0000A54F00BD0166 AS DateTime), 1, N'pro', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'333', N'why', N'/dist/hp/img/why.JPG', N'/waɪ/', N'tại sao', N'/dist/hp/audio/why.MP3', 0, 0, 0, CAST(0x0000A54F00BD016E AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'334', N'wife', N'/dist/hp/img/wife.JPG', N'/waɪf/', N'vợ', N'/dist/hp/audio/wife.MP3', 0, 0, 0, CAST(0x0000A54F00BD0177 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'335', N'will', N'/dist/hp/img/will.JPG', N'/wɪl/', N'sẽ', N'/dist/hp/audio/will.MP3', 0, 0, 0, CAST(0x0000A54F00BD0180 AS DateTime), 1, N'modal', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'336', N'win', N'/dist/hp/img/win.JPG', N'/wɪn/', N'thắng', N'/dist/hp/audio/win.MP3', 0, 0, 0, CAST(0x0000A54F00BD0188 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'337', N'window', N'/dist/hp/img/window.JPG', N'/ˈwɪndoʊ/', N'cửa sổ', N'/dist/hp/audio/window.MP3', 0, 0, 0, CAST(0x0000A54F00BD0192 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'338', N'winter', N'/dist/hp/img/winter.JPG', N'/ˈwɪntə/', N'mùa đông', N'/dist/hp/audio/winter.MP3', 0, 0, 0, CAST(0x0000A54F00BD019B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'339', N'with', N'/dist/hp/img/with.JPG', N'/wɪð/', N'với', N'/dist/hp/audio/with.MP3', 0, 0, 0, CAST(0x0000A54F00BD01A3 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'34', N'book', N'/dist/hp/img/book.JPG', N'/bʊk/', N'cuốn sách', N'/dist/hp/audio/book.MP3', 0, 0, 0, CAST(0x0000A54F00BCF696 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'340', N'woman', N'/dist/hp/img/woman.JPG', N'/ˈwʊmən/', N'người phụ nữ', N'/dist/hp/audio/woman.MP3', 0, 0, 0, CAST(0x0000A54F00BD01AD AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'341', N'word', N'/dist/hp/img/word.JPG', N'/wɝːd/', N'từ, lời nói', N'/dist/hp/audio/word.MP3', 0, 0, 0, CAST(0x0000A54F00BD01B6 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'342', N'work', N'/dist/hp/img/work.JPG', N'/wɝːk/', N'làm việc', N'/dist/hp/audio/work.MP3', 0, 0, 0, CAST(0x0000A54F00BD01C0 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'343', N'write', N'/dist/hp/img/write.JPG', N'/raɪt/', N'viết', N'/dist/hp/audio/write.MP3', 0, 0, 0, CAST(0x0000A54F00BD01C8 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'344', N'year', N'/dist/hp/img/year.JPG', N'/jɪr/', N'năm', N'/dist/hp/audio/year.MP3', 0, 0, 0, CAST(0x0000A54F00BD01D1 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'345', N'yellow', N'/dist/hp/img/yellow.JPG', N'/ˈjeloʊ/', N'màu vàng', N'/dist/hp/audio/yellow.MP3', 0, 0, 0, CAST(0x0000A54F00BD01DA AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'346', N'yes', N'/dist/hp/img/yes.JPG', N'/jes/', N'vâng, đúng', N'/dist/hp/audio/yes.MP3', 0, 0, 0, CAST(0x0000A54F00BD01E2 AS DateTime), 1, N'exclamation', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'347', N'young', N'/dist/hp/img/young.JPG', N'/jʌŋ/', N'trẻ', N'/dist/hp/audio/young.MP3', 0, 0, 0, CAST(0x0000A54F00BD01EC AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'348', N'true', N'/dist/hp/img/true.JPG', N'/truː/', N'đúng đắn', N'/dist/hp/audio/true.MP3', 0, 0, 0, CAST(0x0000A54F00BD01F5 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'349', N'above', N'/dist/hp/img/above.JPG', N'/əˈbʌv/', N'phía trên', N'/dist/hp/audio/above.MP3', 0, 0, 0, CAST(0x0000A54F00BD01FD AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'35', N'box', N'/dist/hp/img/box.JPG', N'/bɑːks/', N'cái hộp', N'/dist/hp/audio/box.MP3', 0, 0, 0, CAST(0x0000A54F00BCF69E AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'350', N'ago', N'/dist/hp/img/ago.JPG', N'/əˈɡoʊ/', N'cách đây', N'/dist/hp/audio/ago.MP3', 0, 0, 0, CAST(0x0000A54F00BD0206 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'351', N'also', N'/dist/hp/img/also.JPG', N'/ˈɑːl.soʊ/', N'cũng, còn', N'/dist/hp/audio/also.MP3', 0, 0, 0, CAST(0x0000A54F00BD020F AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'352', N'always', N'/dist/hp/img/always.JPG', N'/ˈɔːlweɪz/', N'luôn luôn', N'/dist/hp/audio/always.MP3', 0, 0, 0, CAST(0x0000A54F00BD0218 AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'353', N'among', N'/dist/hp/img/among.JPG', N'/əˈmʌŋ/', N'ở giữa (trong 3 cái trở lên)', N'/dist/hp/audio/among.MP3', 0, 0, 0, CAST(0x0000A54F00BD0221 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'354', N'answer', N'/dist/hp/img/answer.JPG', N'/ˈæntsɚ/', N'câu trả lời', N'/dist/hp/audio/answer.MP3', 0, 0, 0, CAST(0x0000A54F00BD022A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'355', N'any', N'/dist/hp/img/any.JPG', N'/ˈeni/', N'bất cứ', N'/dist/hp/audio/any.MP3', 0, 0, 0, CAST(0x0000A54F00BD0233 AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'356', N'area', N'/dist/hp/img/area.JPG', N'/ˈeriə /', N'khu vực', N'/dist/hp/audio/area.MP3', 0, 0, 0, CAST(0x0000A54F00BD023B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'357', N'beat', N'/dist/hp/img/beat.JPG', N'/biːt/', N'đánh, đập, nện', N'/dist/hp/audio/beat.MP3', 0, 0, 0, CAST(0x0000A54F00BD0244 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'358', N'beauty', N'/dist/hp/img/beauty.JPG', N'/ˈbjuːti/', N'cái đẹp', N'/dist/hp/audio/beauty.MP3', 0, 0, 0, CAST(0x0000A54F00BD024D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'359', N'before', N'/dist/hp/img/before.JPG', N'/bɪˈfɔr/', N'phía trước', N'/dist/hp/audio/before.MP3', 0, 0, 0, CAST(0x0000A54F00BD0257 AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'36', N'boy', N'/dist/hp/img/boy.JPG', N'/bɔɪ/', N'bé trai, con trai', N'/dist/hp/audio/boy.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6A8 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'360', N'behind', N'/dist/hp/img/behind.JPG', N'/bɪˈhaɪnd/', N'phía sau', N'/dist/hp/audio/behind.MP3', 0, 0, 0, CAST(0x0000A54F00BD025F AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'361', N'bell', N'/dist/hp/img/bell.JPG', N'/bel/', N'cái chuông', N'/dist/hp/audio/bell.MP3', 0, 0, 0, CAST(0x0000A54F00BD0268 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'362', N'boat', N'/dist/hp/img/boat.JPG', N'/boʊt/', N'tàu thuyền', N'/dist/hp/audio/boat.MP3', 0, 0, 0, CAST(0x0000A54F00BD0272 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'363', N'bone', N'/dist/hp/img/bone.JPG', N'/boʊn/', N'xương', N'/dist/hp/audio/bone.MP3', 0, 0, 0, CAST(0x0000A54F00BD027B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'364', N'bottom', N'/dist/hp/img/bottom.JPG', N'/ˈbɑːt ̬əm/', N'dưới cùng', N'/dist/hp/audio/bottom.MP3', 0, 0, 0, CAST(0x0000A54F00BD0284 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'365', N'build', N'/dist/hp/img/build.JPG', N'/bɪld/', N'xây', N'/dist/hp/audio/build.MP3', 0, 0, 0, CAST(0x0000A54F00BD028D AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'366', N'burn', N'/dist/hp/img/burn.JPG', N'/bɝːn/', N'đốt cháy', N'/dist/hp/audio/burn.MP3', 0, 0, 0, CAST(0x0000A54F00BD0296 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'367', N'camp', N'/dist/hp/img/camp.JPG', N'/kæmp/', N'chỗ cắm trại', N'/dist/hp/audio/camp.MP3', 0, 0, 0, CAST(0x0000A54F00BD029F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'368', N'carry', N'/dist/hp/img/carry.JPG', N'/ˈkæri/', N'mang, vác', N'/dist/hp/audio/carry.MP3', 0, 0, 0, CAST(0x0000A54F00BD02A9 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'369', N'catch', N'/dist/hp/img/catch.JPG', N'/kætʃ/', N'bắt, tóm, chụp', N'/dist/hp/audio/catch.MP3', 0, 0, 0, CAST(0x0000A54F00BD02B2 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'37', N'bread', N'/dist/hp/img/bread.JPG', N'/bred/', N'bánh mì', N'/dist/hp/audio/bread.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6B2 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'370', N'circle', N'/dist/hp/img/circle.JPG', N'/ˈsɝːkl ̩/', N'hình tròn, chu kì', N'/dist/hp/audio/circle.MP3', 0, 0, 0, CAST(0x0000A54F00BD02BC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'371', N'clean', N'/dist/hp/img/clean.JPG', N'/kliːn/', N'sạch sẽ', N'/dist/hp/audio/clean.MP3', 0, 0, 0, CAST(0x0000A54F00BD02C5 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'372', N'clear', N'/dist/hp/img/clear.JPG', N'/klɪr/', N'rõ ràng', N'/dist/hp/audio/clear.MP3', 0, 0, 0, CAST(0x0000A54F00BD02CE AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'373', N'climb', N'/dist/hp/img/climb.JPG', N'/klaɪm/', N'trèo, leo', N'/dist/hp/audio/climb.MP3', 0, 0, 0, CAST(0x0000A54F00BD02D7 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'374', N'clothe', N'/dist/hp/img/clothe.JPG', N'/kloʊð/', N'mặc đồ cho ai', N'/dist/hp/audio/clothe.MP3', 0, 0, 0, CAST(0x0000A54F00BD02DF AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'375', N'coat', N'/dist/hp/img/coat.JPG', N'/koʊt/', N'áo choàng ngoài', N'/dist/hp/audio/coat.MP3', 0, 0, 0, CAST(0x0000A54F00BD02E8 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'376', N'corn', N'/dist/hp/img/corn.JPG', N'/kɔːrn/', N'bắp, ngô', N'/dist/hp/audio/corn.MP3', 0, 0, 0, CAST(0x0000A54F00BD02F0 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'377', N'corner', N'/dist/hp/img/corner.JPG', N'/ˈkɔːrnɚ/', N'góc (đường)', N'/dist/hp/audio/corner.MP3', 0, 0, 0, CAST(0x0000A54F00BD02FA AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'378', N'crop', N'/dist/hp/img/crop.JPG', N'/krɑːp/', N'vụ mùa, cây trồng', N'/dist/hp/audio/crop.MP3', 0, 0, 0, CAST(0x0000A54F00BD0303 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'379', N'cross', N'/dist/hp/img/cross.JPG', N'/krɑːs/', N'băng ngang', N'/dist/hp/audio/cross.MP3', 0, 0, 0, CAST(0x0000A54F00BD030C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'38', N'break', N'/dist/hp/img/break.JPG', N'/breɪk/', N'làm vỡ/hư/gãy', N'/dist/hp/audio/break.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6BC AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'380', N'change', N'/dist/hp/img/change.JPG', N'/tʃeɪndʒ/', N'thay đổi', N'/dist/hp/audio/change.MP3', 0, 0, 0, CAST(0x0000A54F00BD0314 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'381', N'check', N'/dist/hp/img/check.JPG', N'/tʃek/', N'kiểm tra', N'/dist/hp/audio/check.MP3', 0, 0, 0, CAST(0x0000A54F00BD031D AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'382', N'choose', N'/dist/hp/img/choose.JPG', N'/tʃuːz/', N'lựa chọn', N'/dist/hp/audio/choose.MP3', 0, 0, 0, CAST(0x0000A54F00BD0326 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'383', N'danger', N'/dist/hp/img/danger.JPG', N'/ˈdeɪndʒər/', N'nguy hiểm', N'/dist/hp/audio/danger.MP3', 0, 0, 0, CAST(0x0000A54F00BD032F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'384', N'dark', N'/dist/hp/img/dark.JPG', N'/dɑːrk/', N'tối, đen', N'/dist/hp/audio/dark.MP3', 0, 0, 0, CAST(0x0000A54F00BD0338 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'385', N'dead', N'/dist/hp/img/dead.JPG', N'/ded/', N'chết', N'/dist/hp/audio/dead.MP3', 0, 0, 0, CAST(0x0000A54F00BD0342 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'386', N'dear', N'/dist/hp/img/dear.JPG', N'/dɪr/', N'đáng mến', N'/dist/hp/audio/dear.MP3', 0, 0, 0, CAST(0x0000A54F00BD034A AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'387', N'desert', N'/dist/hp/img/desert.JPG', N'/ˈdezɚt/', N'sa mạc', N'/dist/hp/audio/desert.MP3', 0, 0, 0, CAST(0x0000A54F00BD0353 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'388', N'design', N'/dist/hp/img/design.JPG', N'/dɪˈzaɪn/', N'thiết kế', N'/dist/hp/audio/design.MP3', 0, 0, 0, CAST(0x0000A54F00BD035D AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'389', N'discuss', N'/dist/hp/img/discuss.JPG', N'/dɪˈskʌs/', N'thảo luận', N'/dist/hp/audio/discuss.MP3', 0, 0, 0, CAST(0x0000A54F00BD0367 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'39', N'bring', N'/dist/hp/img/bring.JPG', N'/brɪŋ/', N'mang', N'/dist/hp/audio/bring.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6C4 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'390', N'divide', N'/dist/hp/img/divide.JPG', N'/dɪˈvaɪd/', N'chia', N'/dist/hp/audio/divide.MP3', 0, 0, 0, CAST(0x0000A54F00BD036F AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'391', N'double', N'/dist/hp/img/double.JPG', N'/ˈdʌbl/', N'gấp đôi', N'/dist/hp/audio/double.MP3', 0, 0, 0, CAST(0x0000A54F00BD037A AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'392', N'draw', N'/dist/hp/img/draw.JPG', N'/drɑː/', N'vẽ', N'/dist/hp/audio/draw.MP3', 0, 0, 0, CAST(0x0000A54F00BD0383 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'393', N'dress', N'/dist/hp/img/dress.JPG', N'/dres/', N'váy', N'/dist/hp/audio/dress.MP3', 0, 0, 0, CAST(0x0000A54F00BD038C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'394', N'drive', N'/dist/hp/img/drive.JPG', N'/draɪv/', N'lái xe', N'/dist/hp/audio/drive.MP3', 0, 0, 0, CAST(0x0000A54F00BD0395 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'395', N'early', N'/dist/hp/img/early.JPG', N'/ˈɝːli/', N'sớm, đầu', N'/dist/hp/audio/early.MP3', 0, 0, 0, CAST(0x0000A54F00BD039E AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'396', N'earth', N'/dist/hp/img/earth.JPG', N'/ɝːθ/', N'Trái Đất', N'/dist/hp/audio/earth.MP3', 0, 0, 0, CAST(0x0000A54F00BD03A8 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'397', N'east', N'/dist/hp/img/east.JPG', N'/iːst/', N'phía Đông', N'/dist/hp/audio/east.MP3', 0, 0, 0, CAST(0x0000A54F00BD03B0 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'398', N'equal', N'/dist/hp/img/equal.JPG', N'/ˈiːkwəl/', N'bằng', N'/dist/hp/audio/equal.MP3', 0, 0, 0, CAST(0x0000A54F00BD03B8 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'399', N'evening', N'/dist/hp/img/evening.JPG', N'/ˈiːvnɪŋ', N'buổi tối', N'/dist/hp/audio/evening.MP3', 0, 0, 0, CAST(0x0000A54F00BD03C2 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'4', N'again', N'/dist/hp/img/again.JPG', N'/əˈɡen/', N'lại (lần nữa)', N'/dist/hp/audio/again.MP3', 0, 0, 0, CAST(0x0000A54F00BCF57E AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'40', N'brother', N'/dist/hp/img/brother.JPG', N'/ˈbrʌðə/', N'anh, em trai', N'/dist/hp/audio/brother.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6CD AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'400', N'famous', N'/dist/hp/img/famous.JPG', N'/ˈfeɪməs/', N'nổi tiếng', N'/dist/hp/audio/famous.MP3', 0, 0, 0, CAST(0x0000A54F00BD03CB AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'41', N'brown', N'/dist/hp/img/brown.JPG', N'/braʊn/', N'nâu', N'/dist/hp/audio/brown.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6D6 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'42', N'busy', N'/dist/hp/img/busy.JPG', N'/ˈbɪzi/', N'bận rộn', N'/dist/hp/audio/busy.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6DF AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'43', N'but', N'/dist/hp/img/but.JPG', N'/bət//bʌt/', N'nhưng', N'/dist/hp/audio/but.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6E8 AS DateTime), 1, N'conj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'44', N'buy', N'/dist/hp/img/buy.JPG', N'/baɪ/', N'mua', N'/dist/hp/audio/buy.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6F0 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'45', N'by', N'/dist/hp/img/by.JPG', N'/baɪ/', N'bởi, do, gần', N'/dist/hp/audio/by.MP3', 0, 0, 0, CAST(0x0000A54F00BCF6FA AS DateTime), 1, N'prep', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'46', N'call', N'/dist/hp/img/call.JPG', N'/kɔːl/', N'gọi', N'/dist/hp/audio/call.MP3', 0, 0, 0, CAST(0x0000A54F00BCF704 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'47', N'can', N'/dist/hp/img/can.JPG', N'/kən//kæn/', N'lon, hộp', N'/dist/hp/audio/can.MP3', 0, 0, 0, CAST(0x0000A54F00BCF714 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'48', N'car', N'/dist/hp/img/car.JPG', N'/kɑːr/', N'xe ô tô', N'/dist/hp/audio/car.MP3', 0, 0, 0, CAST(0x0000A54F00BCF71F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'49', N'card', N'/dist/hp/img/card.JPG', N'/kɑːrd/', N'thẻ', N'/dist/hp/audio/card.MP3', 0, 0, 0, CAST(0x0000A54F00BCF72A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'5', N'age', N'/dist/hp/img/age.JPG', N'/eɪdʒ/', N'tuổi', N'/dist/hp/audio/age.MP3', 0, 0, 0, CAST(0x0000A54F00BCF587 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'50', N'cat', N'/dist/hp/img/cat.JPG', N'/kæt/', N'con mèo', N'/dist/hp/audio/cat.MP3', 0, 0, 0, CAST(0x0000A54F00BCF733 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'51', N'centre', N'/dist/hp/img/centre.JPG', N'/ˈsentər/', N'trung tâm', N'/dist/hp/audio/centre.MP3', 0, 0, 0, CAST(0x0000A54F00BCF73C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'52', N'city', N'/dist/hp/img/city.JPG', N'/ˈsɪti/', N'thành phố', N'/dist/hp/audio/city.MP3', 0, 0, 0, CAST(0x0000A54F00BCF745 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'53', N'class', N'/dist/hp/img/class.JPG', N'/klæs/', N'lớp học', N'/dist/hp/audio/class.MP3', 0, 0, 0, CAST(0x0000A54F00BCF74E AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'54', N'clock', N'/dist/hp/img/clock.JPG', N'/klɑːk/', N'đồng hồ treo tường', N'/dist/hp/audio/clock.MP3', 0, 0, 0, CAST(0x0000A54F00BCF757 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'55', N'close', N'/dist/hp/img/close.JPG', N'/kloʊz/', N'đóng', N'/dist/hp/audio/close.MP3', 0, 0, 0, CAST(0x0000A54F00BCF761 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'56', N'cloud', N'/dist/hp/img/cloud.JPG', N'/klaʊd/', N'mây', N'/dist/hp/audio/cloud.MP3', 0, 0, 0, CAST(0x0000A54F00BCF76B AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'57', N'cold', N'/dist/hp/img/cold.JPG', N'/koʊld/', N'lạnh', N'/dist/hp/audio/cold.MP3', 0, 0, 0, CAST(0x0000A54F00BCF773 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'58', N'color', N'/dist/hp/img/color.JPG', N'/ˈkʌlə/', N'màu sắc', N'/dist/hp/audio/color.MP3', 0, 0, 0, CAST(0x0000A54F00BCF77D AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'59', N'come', N'/dist/hp/img/come.JPG', N'/kʌm/', N'đến', N'/dist/hp/audio/come.MP3', 0, 0, 0, CAST(0x0000A54F00BCF788 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'6', N'air', N'/dist/hp/img/air.JPG', N'/er//eə/', N'không khí', N'/dist/hp/audio/air.MP3', 0, 0, 0, CAST(0x0000A54F00BCF590 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'60', N'cook', N'/dist/hp/img/cook.JPG', N'/kʊk/', N'nấu', N'/dist/hp/audio/cook.MP3', 0, 0, 0, CAST(0x0000A54F00BCF793 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'61', N'cool', N'/dist/hp/img/cool.JPG', N'/kuːl/', N'mát mẻ', N'/dist/hp/audio/cool.MP3', 0, 0, 0, CAST(0x0000A54F00BCF79E AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'62', N'copy', N'/dist/hp/img/copy.JPG', N'/ˈkɑːpi/', N'sao chép', N'/dist/hp/audio/copy.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7A7 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'63', N'cow', N'/dist/hp/img/cow.JPG', N'/kaʊ/', N'con bò cái', N'/dist/hp/audio/cow.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7AF AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'64', N'cry', N'/dist/hp/img/cry.JPG', N'/kraɪ/', N'khóc', N'/dist/hp/audio/cry.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7B9 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'65', N'cut', N'/dist/hp/img/cut.JPG', N'/kʌt/', N'cắt, chặt, xén,…', N'/dist/hp/audio/cut.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7C2 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'66', N'chair', N'/dist/hp/img/chair.JPG', N'/tʃer/', N'cái ghế', N'/dist/hp/audio/chair.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7CC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'67', N'child', N'/dist/hp/img/child.JPG', N'/tʃaɪld/', N'đứa con', N'/dist/hp/audio/child.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7D5 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'68', N'dad', N'/dist/hp/img/dad.JPG', N'/dæd/', N'cách gọi cha, bố, ba', N'/dist/hp/audio/dad.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7DE AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'69', N'dance', N'/dist/hp/img/dance.JPG', N'/dæns/', N'khiêu vũ', N'/dist/hp/audio/dance.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7E6 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'7', N'all', N'/dist/hp/img/all.JPG', N'/ɔːl/', N'tất cả', N'/dist/hp/audio/all.MP3', 0, 0, 0, CAST(0x0000A54F00BCF59A AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'70', N'day', N'/dist/hp/img/day.JPG', N'/deɪ/', N'ngày', N'/dist/hp/audio/day.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7F0 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'71', N'death', N'/dist/hp/img/death.JPG', N'/deθ/', N'cái chết', N'/dist/hp/audio/death.MP3', 0, 0, 0, CAST(0x0000A54F00BCF7FA AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'72', N'die', N'/dist/hp/img/die.JPG', N'/daɪ/', N'chết', N'/dist/hp/audio/die.MP3', 0, 0, 0, CAST(0x0000A54F00BCF803 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'73', N'do', N'/dist/hp/img/do.JPG', N'/də//du//duː/', N'làm', N'/dist/hp/audio/do.MP3', 0, 0, 0, CAST(0x0000A54F00BCF80D AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'74', N'doctor', N'/dist/hp/img/doctor.JPG', N'/ˈdɑːktɚ/', N'bác sĩ', N'/dist/hp/audio/doctor.MP3', 0, 0, 0, CAST(0x0000A54F00BCF816 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'75', N'dog', N'/dist/hp/img/dog.JPG', N'/dɑːg/', N'con chó', N'/dist/hp/audio/dog.MP3', 0, 0, 0, CAST(0x0000A54F00BCF81F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'76', N'dollar', N'/dist/hp/img/dollar.JPG', N'/ˈdɑːlɚ/', N'đồng đô la', N'/dist/hp/audio/dollar.MP3', 0, 0, 0, CAST(0x0000A54F00BCF828 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'77', N'door', N'/dist/hp/img/door.JPG', N'/dɔːr/', N'cửa ra vào', N'/dist/hp/audio/door.MP3', 0, 0, 0, CAST(0x0000A54F00BCF831 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'78', N'down', N'/dist/hp/img/down.JPG', N'/daʊn/', N'xuống, giảm', N'/dist/hp/audio/down.MP3', 0, 0, 0, CAST(0x0000A54F00BCF83A AS DateTime), 1, N'adv', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'79', N'dream', N'/dist/hp/img/dream.JPG', N'/driːm/', N'ước mơ', N'/dist/hp/audio/dream.MP3', 0, 0, 0, CAST(0x0000A54F00BCF842 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'8', N'and', N'/dist/hp/img/and.JPG', N'/end/', N'và', N'/dist/hp/audio/and.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5A3 AS DateTime), 1, N'conj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'80', N'drink', N'/dist/hp/img/drink.JPG', N'/drɪŋk/', N'uống', N'/dist/hp/audio/drink.MP3', 0, 0, 0, CAST(0x0000A54F00BCF84C AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'81', N'dry', N'/dist/hp/img/dry.JPG', N'/draɪ/', N'khô', N'/dist/hp/audio/dry.MP3', 0, 0, 0, CAST(0x0000A54F00BCF855 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'82', N'duck', N'/dist/hp/img/duck.JPG', N'/dʌk/', N'con vịt', N'/dist/hp/audio/duck.MP3', 0, 0, 0, CAST(0x0000A54F00BCF85F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'83', N'ear', N'/dist/hp/img/ear.JPG', N'/ɪr/', N'tai', N'/dist/hp/audio/ear.MP3', 0, 0, 0, CAST(0x0000A54F00BCF86A AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'84', N'eat', N'/dist/hp/img/eat.JPG', N'/iːt/', N'ăn', N'/dist/hp/audio/eat.MP3', 0, 0, 0, CAST(0x0000A54F00BCF873 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'85', N'egg', N'/dist/hp/img/egg.JPG', N'/eɡ/', N'quả trứng', N'/dist/hp/audio/egg.MP3', 0, 0, 0, CAST(0x0000A54F00BCF87C AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'86', N'eight', N'/dist/hp/img/eight.JPG', N'/eɪt/', N'số tám', N'/dist/hp/audio/eight.MP3', 0, 0, 0, CAST(0x0000A54F00BCF886 AS DateTime), 1, N'number', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'87', N'end', N'/dist/hp/img/end.JPG', N'/end/', N'kết thúc, đoạn cuối', N'/dist/hp/audio/end.MP3', 0, 0, 0, CAST(0x0000A54F00BCF88F AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'88', N'enter', N'/dist/hp/img/enter.JPG', N'/ˈentə/', N'vào, đi vào, nhập', N'/dist/hp/audio/enter.MP3', 0, 0, 0, CAST(0x0000A54F00BCF898 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'89', N'event', N'/dist/hp/img/event.JPG', N'/ɪˈvent/', N'sự kiện', N'/dist/hp/audio/event.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8A1 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'9', N'animal', N'/dist/hp/img/animal.JPG', N'/ˈænɪml/', N'động vật', N'/dist/hp/audio/animal.MP3', 0, 0, 0, CAST(0x0000A54F00BCF5AB AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'90', N'every', N'/dist/hp/img/every.JPG', N'/ˈevri/', N'mỗi, mọi', N'/dist/hp/audio/every.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8A9 AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'91', N'eye', N'/dist/hp/img/eye.JPG', N'/aɪ/', N'mắt', N'/dist/hp/audio/eye.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8B3 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'92', N'face', N'/dist/hp/img/face.JPG', N'/feɪs/', N'khuôn mặt', N'/dist/hp/audio/face.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8BC AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'93', N'fall', N'/dist/hp/img/fall.JPG', N'/fɔːl/', N'rơi, té', N'/dist/hp/audio/fall.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8C6 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'94', N'family', N'/dist/hp/img/family.JPG', N'/ˈfæməli/', N'gia đình', N'/dist/hp/audio/family.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8CF AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'95', N'fat', N'/dist/hp/img/fat.JPG', N'/fæt/', N'mập', N'/dist/hp/audio/fat.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8D9 AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'96', N'father', N'/dist/hp/img/father.JPG', N'/ˈfɑːðə/', N'ba, bố, cha', N'/dist/hp/audio/father.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8E1 AS DateTime), 1, N'n', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'97', N'final', N'/dist/hp/img/final.JPG', N'/ˈfaɪnl/', N'cuối cùng', N'/dist/hp/audio/final.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8EB AS DateTime), 1, N'adj', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'98', N'find', N'/dist/hp/img/find.JPG', N'/faɪnd/', N'tìm', N'/dist/hp/audio/find.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8F4 AS DateTime), 1, N'v', N'starter')
GO
INSERT [dbo].[Words] ([WordId], [aWord], [ImageLink], [IPA], [Meaning], [AudioLink], [TotalLikes], [TotalComments], [TotalViews], [CreatedDate], [Complexity], [PartOfSpeech], [ClassBelongId]) VALUES (N'99', N'first', N'/dist/hp/img/first.JPG', N'/ˈfɝːst/', N'đầu tiên', N'/dist/hp/audio/first.MP3', 0, 0, 0, CAST(0x0000A54F00BCF8FC AS DateTime), 1, N'det', N'starter')
GO
INSERT [dbo].[KindOfExperiences] ([KindOfExpId], [ExpName], [CreatedDate]) VALUES (N'1', N'Đăng ký mới', NULL)
GO
INSERT [dbo].[KindOfExperiences] ([KindOfExpId], [ExpName], [CreatedDate]) VALUES (N'2', N'Học xong từ', NULL)
GO
INSERT [dbo].[KindOfExperiences] ([KindOfExpId], [ExpName], [CreatedDate]) VALUES (N'3', N'Học liên tiếp', NULL)
GO
INSERT [dbo].[Currency] ([CurrencyId], [Name], [IconLink], [CreateDate]) VALUES (N'Diamond', N'Diamond', NULL, NULL)
GO
INSERT [dbo].[Currency] ([CurrencyId], [Name], [IconLink], [CreateDate]) VALUES (N'Heart', N'Heart', NULL, NULL)
GO
INSERT [dbo].[Currency] ([CurrencyId], [Name], [IconLink], [CreateDate]) VALUES (N'Starfish', N'Starfish', NULL, NULL)
GO
INSERT [dbo].[CouponCodes] ([CouponCodeId], [SaleOffAmount], [Type], [Desciption], [LimitedCondition], [UsageAmount], [CreateDate], [EndDate]) VALUES (N'0', 0, 1, N'0', 0, 9999, NULL, NULL)
GO
INSERT [dbo].[Customers] ([CustomerId], [Email], [FullName], [PhoneNumber], [Address], [CreatedDate]) VALUES (N'1bd16aec-5152-4dce-aea0-cbf5fd6fa34c', N'b@b.com', N'asdsad', N'111 1111 11  - 111 1111 1111', N'20 Cộng Hoà, Cộng Hòa, Phường 4, Ho Chi Minh, Vietnam', CAST(0x0000A53B010FE608 AS DateTime))
GO
INSERT [dbo].[Customers] ([CustomerId], [Email], [FullName], [PhoneNumber], [Address], [CreatedDate]) VALUES (N'4e203cfe-7fe2-4939-9d39-8540c8cabf5b', N'genius24894@gmail.com', N'dadsad', N'0909308268  - 0909308268', N'Germany', CAST(0x0000A53B010FCE5D AS DateTime))
GO
INSERT [dbo].[Customers] ([CustomerId], [Email], [FullName], [PhoneNumber], [Address], [CreatedDate]) VALUES (N'b125e23f-1cf2-45ca-8d22-bb86d10612a7', N'genius24894@gmail.com', N'aaaa', N'0909308268  - 0909308268', N'Hẻm 57 Nguyễn Văn Bảo, Ho Chi Minh City, Ho Chi Minh, Vietnam', CAST(0x0000A53B0108A130 AS DateTime))
GO
INSERT [dbo].[Customers] ([CustomerId], [Email], [FullName], [PhoneNumber], [Address], [CreatedDate]) VALUES (N'dc4bb26b-0cf5-48cf-b4a1-ac0ed57b48e5', N'genius24894@gmail.com', N'Nguyen Tan', N'0909308268  - 0909308268', N'Ho Chi Minh City, Ho Chi Minh, Vietnam', CAST(0x0000A53B010FB821 AS DateTime))
GO
INSERT [dbo].[HepaProducts] ([HepaProductId], [Name], [Price], [Description], [Quantity], [CreatedDate]) VALUES (N'1', N'1 năm', 350000, N'Thẻ 1 năm', 1000, NULL)
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'00003344-3374-4cf8-82ad-90613a4c1d03', N'The children are jumping in the park.', N'Bọn trẻ đang nhảy nhót trong công viên.', N'/dist/hp/audio/jump (1).MP3', CAST(0x0000A54F00BCFACC AS DateTime), N'149')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'00119c38-f5a4-4334-ac19-136dbde394cf', N'How can you know that?', N'Làm sao anh biết được điều đó?', N'/dist/hp/audio/know (1).MP3', CAST(0x0000A54F00BCFB01 AS DateTime), N'155')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'00163020-7d03-48bd-bf22-78f1c20c480b', N'Why did you choose to live in Ho chi Minh city?', N'Tại sao bạn lại chọn sống ở thành phố Hồ Chí Minh?', N'/dist/hp/audio/live (2).MP3', CAST(0x0000A54F00BCFB70 AS DateTime), N'167')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'006eca4b-75cb-444b-b99a-7c0a974a0575', N'They must engage with each other.', N'Họ phải cam kết với nhau thôi.', N'/dist/hp/audio/engage (2).MP3', CAST(0x0000A54F00BD0751 AS DateTime), N'1596')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'00e4b09a-c6b8-47fc-b9f3-d349ba1e7956', N'She is good at English.', N'Cô ấy giỏi về tiếng Anh.', N'/dist/hp/audio/good (2).MP3', CAST(0x0000A54F00BCF998 AS DateTime), N'116')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'01008e88-d8a7-41a4-98fb-1a6d340d278f', N'Jackson feels no emotion when his girlfriend goes away.', N'Jackson cảm thấy bình thản khi người yêu anh đi xa.', N'/dist/hp/audio/emotion (2).MP3', CAST(0x0000A54F00BD0717 AS DateTime), N'1590')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0115da8d-b624-4149-927c-96418678f1cc', N'Liam analyzes the exercise before doing it.', N'Liam phân tích bài tập trước khi làm.', N'/dist/hp/audio/analyze (2).MP3', CAST(0x0000A54F00BD09EA AS DateTime), N'2025')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'011968e6-e8e4-478e-9346-00d0dee92cca', N'A decade lasts 10 years.', N'Một thập kỉ kéo dài 10 năm.', N'/dist/hp/audio/decade (1).MP3', CAST(0x0000A54F00BD05B1 AS DateTime), N'1553')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'012251f4-10b9-4782-a9d9-825b1b212c7a', N'I never drink wine.', N'Tôi không bao giờ uống rượu.', N'/dist/hp/audio/drink (1).MP3', CAST(0x0000A54F00BCF84C AS DateTime), N'80')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0126ef64-531b-4526-b372-80a12dd7aae1', N'If it rains, I will stay home.', N'Nếu trời mưa, tôi sẽ ở nhà.', N'/dist/hp/audio/if (1).MP3', CAST(0x0000A54F00BCFAB2 AS DateTime), N'146')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'027f3ef9-a3f6-4435-a3d2-bc87523e3f9b', N'I go to the bank to deposit money to my account.', N'Tôi đến ngân hàng để gửi tiền vào tài khoản.', N'/dist/hp/audio/bank (1).MP3', CAST(0x0000A54F00BCF61B AS DateTime), N'21')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'02a7bd75-de30-4c78-bb4e-5250558c0ef1', N'He knows many of them.', N'Anh ta biết nhiều người trong số họ.', N'/dist/hp/audio/many (1).MP3', CAST(0x0000A54F00BCFBA7 AS DateTime), N'173')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'032a0148-f27b-414e-9e55-28d5cb73588d', N'Who are they?', N'Bọn chúng là ai vậy?', N'/dist/hp/audio/they (2).MP3', CAST(0x0000A54F00BD001C AS DateTime), N'296')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'03302082-1d0e-4fa4-948b-5b891f31e722', N'Can you give me your phone number?', N'Cho anh số điện thoại của em được không?', N'/dist/hp/audio/number (1).MP3', CAST(0x0000A54F00BCFCC0 AS DateTime), N'203')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'036d08cc-c5c9-482c-9db1-221e8b28b805', N'A factor of success is working hard.', N'Yếu tố tạo nên sự thành công đó là sự chăm chỉ.', N'/dist/hp/audio/factor (1).MP3', CAST(0x0000A54F00BD0813 AS DateTime), N'1617')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'03a2d515-a0ca-49d4-aee8-49326e88114d', N'It is very difficult to write a good drama.', N'Rất khó để viết một vở kịch hay.', N'/dist/hp/audio/drama (1).MP3', CAST(0x0000A54F00BD06AF AS DateTime), N'1579')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'03f475dc-7c95-4844-be01-7bf0b67ad4d8', N'We exchange ideas together.', N'Chúng tôi trao đổi ý kiến với nhau.', N'/dist/hp/audio/exchange (1).MP3', CAST(0x0000A54F00BD07B1 AS DateTime), N'1606')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'03fe21e2-c111-4328-a4c8-a18ce4a292ce', N'There was an accident before.', N'Có một tai nạn trước đó.', N'/dist/hp/audio/before (2).MP3', CAST(0x0000A54F00BD0257 AS DateTime), N'359')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'041b1383-c71f-4621-9996-686dd5a7b4b7', N'Did you cheat on the test?', N'Cậu đã gian lận trong bài kiểm tra đúng không?', N'/dist/hp/audio/cheat (1).MP3', CAST(0x0000A54F00BD03F9 AS DateTime), N'1504')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'04218632-6726-489d-a29f-37bc3d1c6983', N'You shouldn''t let it upset you.', N'Bạn không nên để chuyện đó làm bạn lo lắng.', N'/dist/hp/audio/let (1).MP3', CAST(0x0000A54F00BCFB43 AS DateTime), N'162')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0423cec6-4c38-4e40-968c-92808a2933b4', N'She teaches at a famous university.', N'Cô ấy dạy học ở một trường đại học nổi tiếng.', N'/dist/hp/audio/teach (1).MP3', CAST(0x0000A54F00BCFFAD AS DateTime), N'284')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'04499ea4-967d-407a-8678-c81ce097ab7e', N'I want to live in a place with the warmer climate.', N'Tôi muốn sống ở nơi có khí hậu ấm áp hơn.', N'/dist/hp/audio/climate (2).MP3', CAST(0x0000A54F00BD0441 AS DateTime), N'1512')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0468b349-d8b1-4167-917a-4933f942156c', N'Why don''t you come and play with them?', N'Tại sao em không đến và chơi cùng các bạn?', N'/dist/hp/audio/why (2).MP3', CAST(0x0000A54F00BD016E AS DateTime), N'333')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'04a2566f-0277-4130-924d-b342f947021d', N'English is a great barrier for many people.', N'Tiếng Anh là một trở ngại lớn với nhiều người.', N'/dist/hp/audio/barrier (1).MP3', CAST(0x0000A54F00BD0A88 AS DateTime), N'2039')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'05ac040e-08d9-43ed-a7f0-758fedbd9d57', N'I bought a pair of walking shoes.', N'Tôi đã mua một đôi giày đi bộ.', N'/dist/hp/audio/shoe (1).MP3', CAST(0x0000A54F00BCFE5F AS DateTime), N'248')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'05ae62da-c9a5-4a33-90cc-8dd5c6eb929e', N'The boy likes to discover everything.', N'Thằng bé thích khám phá mọi thứ.', N'/dist/hp/audio/discover (1).MP3', CAST(0x0000A54F00BD0667 AS DateTime), N'1572')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'05bc3de8-fb69-42f8-b636-9ab9b1a39300', N'Give me the box of matches.', N'Đưa cho tớ hộp diêm!', N'/dist/hp/audio/box (1).MP3', CAST(0x0000A54F00BCF69E AS DateTime), N'35')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'05f3d4ce-3eb4-4b16-bcbe-e3c4e74d6436', N'I would like to divide you into small groups.', N'Cô muốn các em chia thành nhiều nhóm nhỏ.', N'/dist/hp/audio/divide (2).MP3', CAST(0x0000A54F00BD036F AS DateTime), N'390')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0611b4d3-79c9-4fdc-83b5-3a6302e71d96', N'I go to the supermarket once a week.', N'Tôi đi siêu thị một lần một tuần.', N'/dist/hp/audio/go (1).MP3', CAST(0x0000A54F00BCF98E AS DateTime), N'115')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'06242282-4cba-462f-a16f-224b8d2a08e9', N'I don''t know whether he will come or not.', N'Mình không biết anh ấy có đến hay không nữa.', N'/dist/hp/audio/whether (1).MP3', CAST(0x0000A54F00BD094A AS DateTime), N'2012')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0634b7a6-3ab9-436a-8e37-3ee6a821f95d', N'"Could you lend me $10?" "Certainly."', N'Cô có thể cho tôi mượn 10 đô không? - Dĩ nhiên rồi.', N'/dist/hp/audio/certainly (2).MP3', CAST(0x0000A54F00BD03D4 AS DateTime), N'1500')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0683bbab-6a61-483b-a3c5-65ea5a7a3ef6', N'Why are you always complaining about this?', N'Tại sao anh cứ than phiền hoài về chuyện này vậy?', N'/dist/hp/audio/always (2).MP3', CAST(0x0000A54F00BD0218 AS DateTime), N'352')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'06930bc1-a9da-4cd2-a0fc-b7ffcb29b2d7', N'Our bus has 4 trips a day.', N'Chúng tôi có 4 chuyến xe một ngày.', N'/dist/hp/audio/trip (1).MP3', CAST(0x0000A54F00BD0078 AS DateTime), N'306')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'06eec3c3-7fa0-4dda-a626-df4b66a184b3', N'Blake bought a tube of glue.', N'Blake mua một tuýp hồ dán.', N'/dist/hp/audio/glue (1).MP3', CAST(0x0000A54F00BD091B AS DateTime), N'1646')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0736f10f-28b2-401f-86ce-d83ebbb7e92b', N'The departure to New Zealand will be confirmed in 24 hours.', N'Chuyến khởi hành đến New Zealand sẽ được xác nhận trong vòng 24 tiếng.', N'/dist/hp/audio/departure (2).MP3', CAST(0x0000A54F00BD05E8 AS DateTime), N'1559')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'076da590-2928-4ee9-86b8-04a73c06fffa', N'Our school founded in the late 1990.', N'Trường của chúng tôi được thành lập vào cuối năm 1990.', N'/dist/hp/audio/late (2).MP3', CAST(0x0000A54F00BCFB1D AS DateTime), N'158')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'076de506-56be-4dde-9820-0e7998d8744c', N'Can you just stop? I need to talk to you.', N'Anh có thể dừng lại một chút không? Tôi có chuyện cần nói.', N'/dist/hp/audio/stop (2).MP3', CAST(0x0000A54F00BCFF35 AS DateTime), N'271')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'07fcee70-f170-4b2e-b0f0-d72743a5d42f', N'Ella is familiar with Jim.', N'Ella đã quen thuộc với Jim.', N'/dist/hp/audio/familiar (1).MP3', CAST(0x0000A54F00BD0824 AS DateTime), N'1619')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0814d6cd-25c5-444a-88f7-ceda91a0a748', N'The boy wants to be watching TV.', N'Thằng bé muốn được xem ti vi.', N'/dist/hp/audio/want (2).MP3', CAST(0x0000A54F00BD00DC AS DateTime), N'317')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0873c61c-3c90-4f1e-a6f5-bd2ec08f8816', N'They gave me free access to the system.', N'Họ cho phép tôi tự do truy cập vào hệ thống.', N'/dist/hp/audio/free (2).MP3', CAST(0x0000A54F00BCF943 AS DateTime), N'107')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'087a95bf-eb35-4875-9790-d7839441b6a5', N'The number of rare animals has decreased significantly in the recent years.', N'Số động vật quý hiếm đã giảm đáng kể trong những năm gần đây.', N'/dist/hp/audio/number (2).MP3', CAST(0x0000A54F00BCFCC0 AS DateTime), N'203')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'089f0f8f-f2f4-40e9-b862-5d06b5b15c73', N'You will be late for school.', N'Con sẽ bị trễ học mất thôi.', N'/dist/hp/audio/late (1).MP3', CAST(0x0000A54F00BCFB1D AS DateTime), N'158')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'08ac67ab-1d43-4892-93f5-7205811b6b31', N'Can you buy me a loaf of bread?', N'Mua giùm em ổ bánh mì nhé?', N'/dist/hp/audio/bread (1).MP3', CAST(0x0000A54F00BCF6B2 AS DateTime), N'37')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'08ee886b-d079-4ac8-9d48-e81c3cc5a527', N'Sophia decides to go on a diet.', N'Sophia quyết định ăn kiêng.', N'/dist/hp/audio/diet (2).MP3', CAST(0x0000A54F00BD062C AS DateTime), N'1566')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'09d99d20-3afb-4399-989e-1774cca2a8e5', N'I have no desire to learn more.', N'Tôi không có mong muốn học nhiều.', N'/dist/hp/audio/desire (1).MP3', CAST(0x0000A54F00BD0603 AS DateTime), N'1562')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'09f833ff-fdff-4377-91b1-72a855bc0d97', N'He lived on bread and water for two weeks.', N'Hắn đã từng lay lắt trong suốt 2 tuần chỉ với bánh mì và nước.', N'/dist/hp/audio/bread (2).MP3', CAST(0x0000A54F00BCF6B2 AS DateTime), N'37')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0a3e8037-2f3d-4fa5-b18e-5dd567d359b0', N'When will I see you again?', N'Khi nào anh sẽ được gặp lại em?', N'/dist/hp/audio/again (1).MP3', CAST(0x0000A54F00BCF57E AS DateTime), N'4')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0a6a52c7-3a1f-4160-8068-ec6c95e0cf5a', N'What do you usually do in the evening?', N'Bạn thường làm gì vào buổi tối?', N'/dist/hp/audio/evening (2).MP3', CAST(0x0000A54F00BD03C2 AS DateTime), N'399')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0a983b94-918b-4c55-9649-18c877b3df93', N'She has a job as an accountant in a big company.', N'Cô ấy tìm được việc kế toán viên ở một công ty lớn.', N'/dist/hp/audio/job (2).MP3', CAST(0x0000A54F00BCFAC3 AS DateTime), N'148')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0aaa0232-6912-4ba6-9b61-7ffb18596acd', N'It is the most complex sentence.', N'Đó là câu phức tạp nhất.', N'/dist/hp/audio/complex (2).MP3', CAST(0x0000A54F00BD04AC AS DateTime), N'1524')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0aaa93b2-f9e4-4c52-847e-a8f461bcc029', N'I hope your ambitions will come true.', N'Chúc cho những hoài bão của bạn sẽ thành hiện thực.', N'/dist/hp/audio/ambition (2).MP3', CAST(0x0000A54F00BD09DE AS DateTime), N'2024')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0ab96b8e-8725-485f-9867-c62fcbaea417', N'We couldn''t think where he had gone.', N'Chúng tôi không thể nghĩ được anh ấy đã đi đâu.', N'/dist/hp/audio/think (2).MP3', CAST(0x0000A54F00BD0030 AS DateTime), N'298')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0b170dcc-2812-4fc7-8ae6-f0d49575d0ac', N'He will see you this weekend.', N'Ông ta sẽ gặp anh vào cuối tuần.', N'/dist/hp/audio/will (1).MP3', CAST(0x0000A54F00BD0180 AS DateTime), N'335')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0b2e1113-e770-4a63-b939-8447ea8c357a', N'Patrick is a generous man.', N'Patrick là một người đàn ông hào phóng.', N'/dist/hp/audio/generous (1).MP3', CAST(0x0000A54F00BD08F4 AS DateTime), N'1642')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0b9f440a-1ea8-40eb-9b31-e203030f4235', N'Maria is a dear friend.', N'Maria là một người bạn đáng mến.', N'/dist/hp/audio/dear (1).MP3', CAST(0x0000A54F00BD034A AS DateTime), N'386')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0c005e9c-7560-4c08-b828-61f2160b9c2d', N'Bitexco tower is the tallest building in Vietnam.', N'Tòa tháp Bitexco là tào nhà cao nhất Việt Nam.', N'/dist/hp/audio/tall (2).MP3', CAST(0x0000A54F00BCFFA5 AS DateTime), N'283')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0ca8ae77-22f5-482c-9bef-1cc5b565fa44', N'Tyler exchanges dollars for Vienamese dong.', N'Tyler đổi đô la sang Việt Nam đồng.', N'/dist/hp/audio/exchange (2).MP3', CAST(0x0000A54F00BD07B1 AS DateTime), N'1606')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0cde9529-ca03-4ddb-8529-8ecb1a8c4db7', N'Coffee is exported to many countries.', N'Cà phê được xuất khẩu đến nhiều nước trên thế giới.', N'/dist/hp/audio/export (1).MP3', CAST(0x0000A54F00BD07FA AS DateTime), N'1614')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0d926d0c-f9fb-4e36-b259-785333395ee9', N'It is very convenient to buy food in the supermarket.', N'Mua thực phẩm trong siêu thị rất thuận tiện.', N'/dist/hp/audio/convenient (2).MP3', CAST(0x0000A54F00BD0527 AS DateTime), N'1538')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0dac95bd-15ed-4345-86a2-f0073fabaa69', N'We have to try more and more to finished on time.', N'Chúng ta phải cố gắng hơn nữa để hoàn thành đúng hạn.', N'/dist/hp/audio/try (2).MP3', CAST(0x0000A54F00BD0081 AS DateTime), N'307')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0e00a283-e588-4ddd-85aa-92f775bd4774', N'Your hands are as cold as ice.', N'Tay của em lạnh như băng.', N'/dist/hp/audio/ice (1).MP3', CAST(0x0000A54F00BCFAA9 AS DateTime), N'145')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0e0bb566-2ac5-4b8d-85e1-9dc2ec219c77', N'Oranges, apples and bananas are common types of fruit.', N'Cam, táo và chuối là một số loại trái cây phổ biến.', N'/dist/hp/audio/fruit (2).MP3', CAST(0x0000A54F00BCF960 AS DateTime), N'110')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0e425f1f-a773-4fbc-bf66-d8d28b7e97f4', N'That boy is so brilliant.', N'Thằng bé đó thật tài giỏi.', N'/dist/hp/audio/brilliant (1).MP3', CAST(0x0000A54F00BD0AAF AS DateTime), N'2043')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0e63ccd3-35e5-411e-87f1-9306c08a019a', N'The doctor says she is out of danger now.', N'Bác sĩ nói rằng bây giờ cô ấy đã qua khỏi cơn nguy kịch.', N'/dist/hp/audio/danger (2).MP3', CAST(0x0000A54F00BD032F AS DateTime), N'383')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0ea4d36b-82da-4225-9598-16b0ed9c970c', N'This report lacks content.', N'Bài báo cáo này thiếu mục lục.', N'/dist/hp/audio/content (1).MP3', CAST(0x0000A54F00BD050D AS DateTime), N'1535')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0ed1cdad-bf2b-45d2-a9d5-50e6d9b4e243', N'I''m so sorry because this project is over our budget.', N'Tôi rất tiếc vì dự án này vượt quá ngân sách của chúng tôi.', N'/dist/hp/audio/budget (2).MP3', CAST(0x0000A54F00BD0AC1 AS DateTime), N'2045')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0f1742c7-fad4-4a65-889c-ed2c0203cd30', N'Nine divided by three equals three. ', N'Chín chia ba bằng ba.', N'/dist/hp/audio/divide (1).MP3', CAST(0x0000A54F00BD036F AS DateTime), N'390')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0f3c6911-13bd-4c80-8b33-8d3914270eee', N'Tickets cost 150,000 dong per person.', N'Giá vé là 150.000 nghìn đồng một người.', N'/dist/hp/audio/person (2).MP3', CAST(0x0000A54F00BCFD43 AS DateTime), N'217')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'0fd55a04-c698-4782-a578-0372eb8c088b', N'A phoenix has a brilliant feather.', N'Chim phượng hoàng có một bộ lông rất rực rỡ.', N'/dist/hp/audio/brilliant (2).MP3', CAST(0x0000A54F00BD0AAF AS DateTime), N'2043')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1010faac-0661-4c9c-9bac-155a7cbbc280', N'He exercises every day.', N'Ông ấy tập thể dục mỗi ngày.', N'/dist/hp/audio/every (1).MP3', CAST(0x0000A54F00BCF8A9 AS DateTime), N'90')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1025045e-a77d-48ab-92b1-4888c57ad708', N'Oliver is unexpected at the party.', N'Oliver không được chào đón tại buổi tiệc.', N'/dist/hp/audio/unexpected (1).MP3', CAST(0x0000A54F00BD07CC AS DateTime), N'1609')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'103fbd0e-bb84-432a-8d62-4abb40f11483', N'You will miss the train if you don''t go now.', N'Nếu anh không đi bây giờ, anh sẽ bỏ lỡ chuyến tàu đấy.', N'/dist/hp/audio/now (2).MP3', CAST(0x0000A54F00BCFCB7 AS DateTime), N'202')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'10b77197-8f21-49dc-9292-b4491582aafb', N'He is very handsome, with regular features and brown eyes.', N'Anh ấy rất đẹp trai, với những đường nét cân đối và đôi mắt màu nâu.', N'/dist/hp/audio/brown (2).MP3', CAST(0x0000A54F00BCF6D6 AS DateTime), N'41')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'10c7bef1-7459-4e8a-8e1b-124fa3778ab4', N'Call the police if you are in the emergency.', N'Hãy gọi cảnh sát nếu bạn trong tình trạng khẩn cấp.', N'/dist/hp/audio/emergency (1).MP3', CAST(0x0000A54F00BD070F AS DateTime), N'1589')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'10e5ad11-ce7b-42e6-b93d-21f72e447e2b', N'Dylan works in construction.', N'Dylan làm việc trong ngành xây dựng.', N'/dist/hp/audio/construction (1).MP3', CAST(0x0000A54F00BD04F3 AS DateTime), N'1532')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'10f9e3a9-f769-480f-8846-004d9c68013b', N'I will wait there until you come.', N'Anh sẽ chờ ở đó cho tới khi em đến.', N'/dist/hp/audio/wait (1).MP3', CAST(0x0000A54F00BD00C2 AS DateTime), N'314')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1107c5c1-b9f4-4749-a31a-6a9c7f1e9a09', N'He is not assuming anything.', N'Hắn ta không thừa nhận điều gì cả.', N'/dist/hp/audio/assume (1).MP3', CAST(0x0000A54F00BD0A54 AS DateTime), N'2035')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1129e697-7df7-4abd-934a-e2b511f5ce9c', N'I have a collection of stamp.', N'Tôi có một bộ sưu tập tem.', N'/dist/hp/audio/collection (1).MP3', CAST(0x0000A54F00BD045C AS DateTime), N'1515')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'12226dbf-0042-4b54-acb9-3299ada725ee', N'The Sahara desert is the largest desert in the world.', N'Sa mạc Sahara là sa mạc lớn nhất thế giới.', N'/dist/hp/audio/desert (2).MP3', CAST(0x0000A54F00BD0353 AS DateTime), N'387')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'123b81a2-c346-4443-9a79-9726442e0ab7', N'I like the decoration around the ​house.', N'Tôi thích cách trang trí xung quanh ngôi nhà.', N'/dist/hp/audio/decoration (1).MP3', CAST(0x0000A54F00BD05C3 AS DateTime), N'1555')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1243b196-ccb6-45a0-b529-24439b618d1a', N'You shouldn''t complain about that.', N'Chị không nên than phiền về điều đó.', N'/dist/hp/audio/complain (2).MP3', CAST(0x0000A54F00BD04A4 AS DateTime), N'1523')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'125f4d2d-10fb-4b30-a0d2-83b3724a6bdb', N'Would you like a coffee? Yes, please!', N'Bạn muốn cà phê không? Vâng.', N'/dist/hp/audio/yes (2).MP3', CAST(0x0000A54F00BD01E2 AS DateTime), N'346')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'130fddbe-cf99-4501-b7a2-2b86b48f2bad', N'You''d better not let the manager hear what you said.', N'Tốt hơn hết là anh không nên để cho sếp nghe được những gì anh đã nói.', N'/dist/hp/audio/hear (2).MP3', CAST(0x0000A54F00BCFA1A AS DateTime), N'131')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1356590a-ee04-4fa9-b755-5950fce2a3c5', N'Give him my congratulations.', N'Gửi đến anh ấy lời chúc mừng của tôi nhé.', N'/dist/hp/audio/congratulation (1).MP3', CAST(0x0000A54F00BD04EA AS DateTime), N'1531')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'13b03550-6b4e-44b5-add2-127a4c12618a', N'Please answer that question directly.', N'Xin vui lòng trực tiếp trả lời câu hỏi đó.', N'/dist/hp/audio/directly (2).MP3', CAST(0x0000A54F00BD0649 AS DateTime), N'1569')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'13dd289a-2d73-464b-9dcb-dfd8a73806c5', N'My brother has visited Dong Xuan market for 2 years.', N'Anh trai tôi đã đến chợ Đồng Xuân khoảng 2 năm trước.', N'/dist/hp/audio/market (2).MP3', CAST(0x0000A54F00BCFBBD AS DateTime), N'175')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'13e69381-53e2-4686-b9a9-490b2afa682d', N'There is a mountain behind my house.', N'Có một ngọn núi phía sau nhà tôi.', N'/dist/hp/audio/behind (2).MP3', CAST(0x0000A54F00BD025F AS DateTime), N'360')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'145bbf08-411a-453c-9737-efd78bb63a56', N'He found my letter at the bottom of the file.', N'Anh ta tìm thấy thư của tôi ở dưới cùng của đống tài liệu.', N'/dist/hp/audio/bottom (2).MP3', CAST(0x0000A54F00BD0284 AS DateTime), N'364')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1468001b-8f31-49ed-b96e-7a6d3256087b', N'The company fund is limited.', N'Quỹ của công ty bị giới hạn.', N'/dist/hp/audio/fund (2).MP3', CAST(0x0000A54F00BD08C7 AS DateTime), N'1637')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'14a48b62-f3a9-4310-9b13-68589d49c94e', N'The teacher gave us some minutes to check the test again.', N'Giáo viên cho chúng tôi vài phút để kiểm tra lại bài làm của mình.', N'/dist/hp/audio/check (2).MP3', CAST(0x0000A54F00BD031D AS DateTime), N'381')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'14bc95f2-02ab-4f05-9349-bc9b44c44878', N'My sister came to Japan last winter.', N'Chị tôi đã đến Nhật vào mùa đông năm ngoái.', N'/dist/hp/audio/winter (2).MP3', CAST(0x0000A54F00BD019B AS DateTime), N'338')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'14d34163-8ae9-45be-bf7e-2b1c71d04b2f', N'She entered university in 2011.', N'Con bé vào đại học năm 2011.', N'/dist/hp/audio/enter (1).MP3', CAST(0x0000A54F00BCF898 AS DateTime), N'88')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'14d43a69-c805-4aca-874c-a65f9b976507', N'He decided to stay here for one week.', N'Anh ta đã quyết định ở đây 1 tuần.', N'/dist/hp/audio/stay (1).MP3', CAST(0x0000A54F00BCFF2C AS DateTime), N'270')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1527e994-b5f8-4d0e-8a6d-036110c0ac29', N'We need to decorate the living room.', N'Chúng tôi cần trang trí phòng khách.', N'/dist/hp/audio/decorate (1).MP3', CAST(0x0000A54F00BD05BA AS DateTime), N'1554')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'15490b61-b837-4eb6-8997-831e67b1bfc9', N'Everyone is getting old.', N'Ai rồi cũng sẽ già đi.', N'/dist/hp/audio/old (1).MP3', CAST(0x0000A54F00BCFCE7 AS DateTime), N'207')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'15cafe8a-4e48-4565-8ceb-cf85c485fe54', N'Do you know the way to Ben Thanh market?', N'Anh có biết đường đến chợ Bến Thành không?', N'/dist/hp/audio/way (1).MP3', CAST(0x0000A54F00BD010A AS DateTime), N'322')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1601797b-fafe-442a-8182-d7a340d6e841', N'I work eight to five.', N'Tôi làm việc từ 8 giờ sáng đến 5 giờ chiều.', N'/dist/hp/audio/five (1).MP3', CAST(0x0000A54F00BCF90D AS DateTime), N'101')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1604ad56-410c-4c4b-a7b9-8a560f647665', N'It is essential that you have some money.', N'Có một ít tiền mang theo bên mình khi đi ra ngoài là điều cần thiết.', N'/dist/hp/audio/essential (1).MP3', CAST(0x0000A54F00BD0794 AS DateTime), N'1603')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1681df0c-dd96-45d6-aeba-bee0c19e803c', N'It''s the special feature in her essay.', N'Đó là điểm đặc biệt trong bài luận của cô ấy.', N'/dist/hp/audio/feature (1).MP3', CAST(0x0000A54F00BD0835 AS DateTime), N'1621')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'168ffcdf-80c4-49ec-8110-c868cb141d28', N'Vietnam exports rice to China.', N'Việt Nam xuất khẩu gạo sang Trung Quốc.', N'/dist/hp/audio/export (2).MP3', CAST(0x0000A54F00BD07FA AS DateTime), N'1614')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'170d4d9b-7b45-4f14-a990-7a1dedf730d1', N'I love you like a love song.', N'Anh yêu em như yêu một bản tình ca.', N'/dist/hp/audio/song (1).MP3', CAST(0x0000A54F00BCFEE8 AS DateTime), N'263')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'171695f4-17d5-4883-b99c-56a1a58f9539', N'The season between spring and autumn is summer.', N'Giữa mùa xuân và mùa thu là mùa hè.', N'/dist/hp/audio/summer (2).MP3', CAST(0x0000A54F00BCFF6E AS DateTime), N'277')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'173a06df-1647-4ac6-a407-2bb12f8816c7', N'Each computer has its own function.', N'Mỗi máy tính có một chức năng riêng của nó.', N'/dist/hp/audio/function (1).MP3', CAST(0x0000A54F00BD08BE AS DateTime), N'1636')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1789d42a-be13-47b0-9b4a-179f17a88555', N'Our company specializes in manufacturing.', N'Công ty của chúng tôi chuyên về sản xuất.', N'/dist/hp/audio/our (2).MP3', CAST(0x0000A54F00BCFD0C AS DateTime), N'211')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'17aee5d1-64b5-414f-afb7-b9ee4b99de0b', N'The school bell rings at three every afternoon. ', N'Chuông tan học thường đổ vào lúc 3 giờ chiều mỗi ngày.', N'/dist/hp/audio/bell (2).MP3', CAST(0x0000A54F00BD0268 AS DateTime), N'361')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'17bab702-0c20-483f-b6d3-5f50ccdeeab3', N'That picture is amazing!', N'Bức tranh đó thật đáng kinh ngạc.', N'/dist/hp/audio/amazing (1).MP3', CAST(0x0000A54F00BD09D2 AS DateTime), N'2023')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'17c7d8c0-3531-47d4-9983-42098681d544', N'My father is a doctor.', N'Bố tôi là một bác sĩ.', N'/dist/hp/audio/doctor (1).MP3', CAST(0x0000A54F00BCF816 AS DateTime), N'74')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'181c996d-d2c7-45ae-a3fd-7fbaf0287558', N'Did you take the money on the desk?', N'Anh đã lấy sồ tiền ở trên bàn phải không?', N'/dist/hp/audio/take (2).MP3', CAST(0x0000A54F00BCFF92 AS DateTime), N'281')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'18add578-06b0-460b-b7eb-018f6624bfc4', N'He whispers something in her ear.', N'Anh ta đang thì thầm điều gì đó vào tai cô. ', N'/dist/hp/audio/ear (1).MP3', CAST(0x0000A54F00BCF86A AS DateTime), N'83')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'18dd3af9-1f00-4d32-96d8-5d826d69722c', N'I listen to radio everyday.', N'Tôi nghe ra-đi-ô mỗi ngày.', N'/dist/hp/audio/radio (1).MP3', CAST(0x0000A54F00BCFD8A AS DateTime), N'225')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'18e4849f-dc0e-4cbf-a748-bd8c84ef6da6', N'They will perform a comedy.', N'Họ sẽ trình diễn một vở hài kịch.', N'/dist/hp/audio/comedy (1).MP3', CAST(0x0000A54F00BD0477 AS DateTime), N'1518')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1929fc5a-19fa-43ed-baf8-6e271c39a454', N'Where did you buy these flowers?', N'Chị mua hoa này ở đâu vậy?', N'/dist/hp/audio/buy (1).MP3', CAST(0x0000A54F00BCF6F0 AS DateTime), N'44')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'193c0257-84cd-40a4-83af-c7bf5dfc490c', N'The government should have policies to improve the economy.', N'Chính phủ nên có những chính sách để cải thiện nền kinh tế.', N'/dist/hp/audio/economy (2).MP3', CAST(0x0000A54F00BD06CD AS DateTime), N'1582')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1997498e-edfc-4d1a-a86a-8d365d2ef200', N'Jai admits his criminal behaviour.', N'Jai thừa nhận hành vi phạm tội của mình.', N'/dist/hp/audio/criminal (2).MP3', CAST(0x0000A54F00BD0568 AS DateTime), N'1545')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'19b38256-6a3c-49ac-8cc3-04ab8c5fe6b8', N'My brother is a head taller  than me.', N'Anh tôi cao hơn tôi một cái đầu.', N'/dist/hp/audio/head (2).MP3', CAST(0x0000A54F00BCFA11 AS DateTime), N'130')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'19da19b2-3bcf-4027-bd20-805a54f21b61', N'He is in danger.', N'Ông ấy đang gặp nguy hiểm.', N'/dist/hp/audio/danger (1).MP3', CAST(0x0000A54F00BD032F AS DateTime), N'383')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'19df041b-0a59-4257-a9a6-12419f8d9818', N'I will call the police if you don''t leave.', N'Nếu anh không rời khỏi đây tôi sẽ gọi cảnh sát.', N'/dist/hp/audio/call (1).MP3', CAST(0x0000A54F00BCF704 AS DateTime), N'46')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1a09d664-19bb-4b50-8194-e2946473edda', N'He has climbed the wall.', N'Hắn ta đã trèo qua bức tường này.', N'/dist/hp/audio/wall (2).MP3', CAST(0x0000A54F00BD00D4 AS DateTime), N'316')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1a305f29-0c64-4f79-aabf-669f0943c238', N'Anthony wants to expand the restaurant.', N'Anthony muốn mở rộng nhà hàng.', N'/dist/hp/audio/expand (1).MP3', CAST(0x0000A54F00BD07C3 AS DateTime), N'1608')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1a607959-4120-4884-9a0d-1c5fe907ae76', N'She kept all her husband''s letters in a box.', N'Bà ấy đã cất giữ tất cả những lá thư của chồng mình trong một chiếc hộp.', N'/dist/hp/audio/box (2).MP3', CAST(0x0000A54F00BCF69E AS DateTime), N'35')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1aee13ae-3adf-4f09-a01e-5ce0a8adaf02', N'He pointed the gun at my head.', N'Anh ta đã chĩa súng vào đầu tôi.', N'/dist/hp/audio/gun (2).MP3', CAST(0x0000A54F00BCF9C3 AS DateTime), N'121')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1b4ef292-8ecd-44e0-adf6-65ae54abaa97', N'A flock of ducks are bobbing near the shore.', N'Một đàn vịt đang bơi gần bờ.', N'/dist/hp/audio/duck (2).MP3', CAST(0x0000A54F00BCF85F AS DateTime), N'82')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1b56c62e-6203-4041-84fe-31e97add163e', N'An idea flashes in his mind.', N'Một ý tưởng chợt loé lên trong đầu anh ấy.', N'/dist/hp/audio/flash (2).MP3', CAST(0x0000A54F00BD0859 AS DateTime), N'1625')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1bcc569b-75d0-4136-93b2-8c40985b4a41', N'The final score was 4-3.', N'Tỷ số cuối cùng là 4-3.', N'/dist/hp/audio/score (1).MP3', CAST(0x0000A54F00BCFE09 AS DateTime), N'239')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1bd0a7f2-a1f1-45da-9ea5-d2bd4e00a84b', N'I''ll see you on Sunday evening.', N'Tôi sẽ gặp bạn vào tối Chủ nhật.', N'/dist/hp/audio/evening (1).MP3', CAST(0x0000A54F00BD03C2 AS DateTime), N'399')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c094300-f45b-4e89-8758-1c339be6fbbf', N'It is frozen to the bone.', N'Trời lạnh thấu xương.', N'/dist/hp/audio/bone (1).MP3', CAST(0x0000A54F00BD027B AS DateTime), N'363')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c249a5a-6b90-4f80-8767-a355d5d1b93f', N'I would like a room with a window and a balcony.', N'Tôi muốn một phòng có cửa sổ và ban công.', N'/dist/hp/audio/window (2).MP3', CAST(0x0000A54F00BD0192 AS DateTime), N'337')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c3fe166-240d-475a-bf04-779a051a0bcc', N'She lives with her parents.', N'Cô ấy sống chung với cha mẹ mình.', N'/dist/hp/audio/with (1).MP3', CAST(0x0000A54F00BD01A3 AS DateTime), N'339')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c419992-1f71-4da5-bea9-134d3eca321c', N'They will go to the party with their family. ', N'Họ sẽ đến buổi tiệc cùng với gia đình.', N'/dist/hp/audio/go (2).MP3', CAST(0x0000A54F00BCF98E AS DateTime), N'115')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c6f81eb-aa1a-4a3e-97e9-170e441319b7', N'Are you busy today?', N'Hôm nay em có bận việc gì không?', N'/dist/hp/audio/busy (1).MP3', CAST(0x0000A54F00BCF6DF AS DateTime), N'42')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1c87c036-356f-44f1-9d91-48ec7221ea55', N'She sat under the tree for a long time.', N'Cô ấy đã ngồi dưới cái cây đó hàng giờ đồng hồ.', N'/dist/hp/audio/sit (2).MP3', CAST(0x0000A54F00BCFE94 AS DateTime), N'254')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1cbb4816-f896-467b-8c9d-44902ef7e99c', N'Enter your name and occupation in the boxes.', N'Điền họ tên và nghề nghiệp của bạn vào những khung sau.', N'/dist/hp/audio/enter (2).MP3', CAST(0x0000A54F00BCF898 AS DateTime), N'88')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1d29c937-4fbf-452c-9f7a-9fd53a7b55a1', N'You should bury me near my grandfather.', N'Hãy chôn tôi gần ông nội tôi.', N'/dist/hp/audio/bury (1).MP3', CAST(0x0000A54F00BD0AD2 AS DateTime), N'2047')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1d63f6d9-6b41-4ebb-9b81-707c6e61d2af', N'We will do what we can to help you.', N'Chúng tôi sẽ làm những gì có thể để giúp đỡ anh.', N'/dist/hp/audio/do (2).MP3', CAST(0x0000A54F00BCF80D AS DateTime), N'73')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1d794bfc-e909-40d4-b9ad-078602525b4c', N'Coal has many effects on our health.', N'Than đá có nhiều tác hại đối với sức khỏe của chúng ta.', N'/dist/hp/audio/coal (2).MP3', CAST(0x0000A54F00BD0B63 AS DateTime), N'2060')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1da389a0-ee06-4e2f-9e44-647bb320015b', N'I saw him two days ago.', N'Tôi đã gặp anh ta cách nay hai ngày.', N'/dist/hp/audio/day (1).MP3', CAST(0x0000A54F00BCF7F0 AS DateTime), N'70')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1de52824-a9ea-41ef-bf58-dfbd14c128c8', N'He designed a dress for the Queen of England.', N'Ông ấy đã thiết kế một bộ váy cho nữ hoàng Anh.', N'/dist/hp/audio/dress (2).MP3', CAST(0x0000A54F00BD038C AS DateTime), N'393')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1ea13a88-ba09-4f63-990d-812aad0658ca', N'It is getting cool.', N'Trời dần mát hơn.', N'/dist/hp/audio/cool (2).MP3', CAST(0x0000A54F00BCF79E AS DateTime), N'61')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1ef1b1a9-4496-4fd9-9625-98da0d3ac69a', N'I like to listen to music when I have free time.', N'Tôi thích nghe nhạc khi rảnh rỗi.', N'/dist/hp/audio/listen (1).MP3', CAST(0x0000A54F00BCFB68 AS DateTime), N'166')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1f1aa1d4-3f20-40eb-8601-d32ea3e48ebf', N'Ella escapes into the forest.', N'Ella trốn thoát vào rừng.', N'/dist/hp/audio/escape (2).MP3', CAST(0x0000A54F00BD078A AS DateTime), N'1602')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1f7c23aa-488e-4a58-9da9-3edcba792c99', N'She has a V-line chin.', N'Cô ấy có cằm hình chữ V.', N'/dist/hp/audio/chin (1).MP3', CAST(0x0000A54F00BD0B24 AS DateTime), N'2056')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'1fa0de96-85d7-42f3-8f1a-97190b96b93b', N'I think he is a very capable man.', N'Tôi nghĩ hắn ta là người rất có năng lực.', N'/dist/hp/audio/capable (1).MP3', CAST(0x0000A54F00BD0AF5 AS DateTime), N'2051')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2008cba4-5c65-4de4-aab0-5e7fb7915a50', N'I would like to check my balance.', N'Cho tôi kiểm tra số dư tài khoản.', N'/dist/hp/audio/check (1).MP3', CAST(0x0000A54F00BD031D AS DateTime), N'381')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2010a0aa-5d07-45be-9dfc-286b0c78372c', N'Max is frying potatoes.', N'Max đang chiên khoai tây.', N'/dist/hp/audio/fry (1).MP3', CAST(0x0000A54F00BD08AC AS DateTime), N'1634')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'203c0dc2-2459-400f-814a-a8787af20dfc', N'His wife has just given birth to a daughter.', N'Vợ anh vừa hạ sinh một cô con gái.', N'/dist/hp/audio/wife (2).MP3', CAST(0x0000A54F00BD0177 AS DateTime), N'334')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'203e72ad-bd77-4508-a07a-4b313156a489', N'A ton is a unit of weight.', N'Tấn là một đơn vị đo trọng lượng.', N'/dist/hp/audio/unit (1).MP3', CAST(0x0000A54F00BD0094 AS DateTime), N'309')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'207c5350-aebf-40e7-a73a-31eb71c5b52b', N'My favourite colors are black and white.', N'Những màu sắc yêu thích của tôi là màu đen và màu trắng.', N'/dist/hp/audio/black (2).MP3', CAST(0x0000A54F00BCF671 AS DateTime), N'30')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'20d274f7-9fe3-49ae-84f3-9cb13554a9a7', N'You will have a double chance.', N'Anh sẽ có gấp đôi cơ hội.', N'/dist/hp/audio/double (2).MP3', CAST(0x0000A54F00BD037A AS DateTime), N'391')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2134afe7-eaad-4dae-ae80-3a3e4e9dd506', N'I depend on my parents to live.', N'Tôi sống phụ thuộc vào bố mẹ.', N'/dist/hp/audio/depend (1).MP3', CAST(0x0000A54F00BD05F1 AS DateTime), N'1560')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'21f48162-25b8-492a-bec2-92ff8a190bdf', N'They are walking on the beach, hand in hand.', N'Hai người bọn họ tay trong tay đang đi dạo trên bờ biển.', N'/dist/hp/audio/hand (1).MP3', CAST(0x0000A54F00BCF9E5 AS DateTime), N'125')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'221f7047-9a97-4a54-91df-92987c969818', N'Candidates are not allowed to use dictionaries in the exam.', N'Thí sinh không được phép sử dụng từ điển trong phòng thi.', N'/dist/hp/audio/use (2).MP3', CAST(0x0000A54F00BD00AF AS DateTime), N'312')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'228cb0ed-b71e-4174-8066-fc24347f5b47', N'The chemical industry has many effects on our life.', N'Ngành công nghiệp hoá chất có rất nhiều ảnh hưởng đến đời sống chúng ta.', N'/dist/hp/audio/chemical (1).MP3', CAST(0x0000A54F00BD0415 AS DateTime), N'1507')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'235148e6-dc8e-4869-af10-66676a34957d', N'Everyone should use a paper bag to protect the environment.', N'Mọi người nên sử dụng túi giấy để bảo vệ môi trường.', N'/dist/hp/audio/paper (2).MP3', CAST(0x0000A54F00BCFD1D AS DateTime), N'213')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'23f3f741-c2b5-49f3-bc2c-389dce9b4c4a', N'What’s your definition of happiness?', N'Bạn định nghĩa như thế nào về hạnh phúc?', N'/dist/hp/audio/definition (2).MP3', CAST(0x0000A54F00BD05CD AS DateTime), N'1556')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'242c0c4c-0c8b-47a6-b99b-1650a893809a', N'The man sitting in the middle is a professor.', N'Người đàn ông ngồi chính giữa là một giáo sư.', N'/dist/hp/audio/man (2).MP3', CAST(0x0000A54F00BCFB9F AS DateTime), N'172')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'247d13e6-25a3-4efd-9d7f-ed6338c6ce42', N'Can you hear me?', N'Cậu có nghe thấy tớ nói không?', N'/dist/hp/audio/hear (1).MP3', CAST(0x0000A54F00BCFA1A AS DateTime), N'131')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2484d45b-3cce-4f76-8015-95b6a22ff313', N'They educate their children very well.', N'Họ dạy con họ rất tốt.', N'/dist/hp/audio/educate (2).MP3', CAST(0x0000A54F00BD06E9 AS DateTime), N'1585')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'24f6eefc-4e75-45b2-a101-8880c530e5ae', N'That''s a very long story; I will tell you if I have time.', N'Sông Hồng dài bao nhiêu?', N'/dist/hp/audio/long (2).MP3', CAST(0x0000A54F00BCFB7A AS DateTime), N'168')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2528831c-5d62-4cee-91ce-b5f928079c02', N'She is my sister.', N'Cô ấy là chị tôi.', N'/dist/hp/audio/sister (1).MP3', CAST(0x0000A54F00BCFE8B AS DateTime), N'253')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'25b4d9d3-a502-4f63-8c98-9cd23ee83443', N'He always beats me at basketball.', N'Anh ta luôn đánh bại tôi môn bóng rổ.', N'/dist/hp/audio/beat (2).MP3', CAST(0x0000A54F00BD0244 AS DateTime), N'357')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'25ba0d65-c359-4b91-8cc8-7a4c69f4499b', N'Who are you?', N'Anh là ai vậy?', N'/dist/hp/audio/who (1).MP3', CAST(0x0000A54F00BD015D AS DateTime), N'331')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'25c924c4-f33a-4fba-b63e-eab1c921ee86', N'That lady needs a doctor.', N'Người phụ nữ đó cần một bác  sĩ.', N'/dist/hp/audio/lady (1).MP3', CAST(0x0000A54F00BCFB0B AS DateTime), N'156')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2606dac9-dd11-4bce-9fe6-a9332b889cbf', N'Whose book is this?', N'Cuốn sách này của ai vậy?', N'/dist/hp/audio/book (1).MP3', CAST(0x0000A54F00BCF696 AS DateTime), N'34')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'263a98e5-1452-4d1a-84ea-eb2a88cd33d6', N'May I pay for it with credit card?', N'Tôi có thể trả bằng thẻ tín dụng được không?', N'/dist/hp/audio/card (1).MP3', CAST(0x0000A54F00BCF72A AS DateTime), N'49')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2646a931-83e6-4b48-8456-25f347007428', N'He has brown hair.', N'Ông ta có mái tóc màu nâu.', N'/dist/hp/audio/brown (1).MP3', CAST(0x0000A54F00BCF6D6 AS DateTime), N'41')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2667d979-b43e-4e2a-bf20-9fbb27bb19f8', N'Do you have a can opener?', N'Bác có dụng cụ mở đồ hộp không?', N'/dist/hp/audio/can (2).MP3', CAST(0x0000A54F00BCF714 AS DateTime), N'47')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'268eaddd-555f-468b-a46e-bfd3965c93a0', N'I want you to clear all these toys away before bedtime.', N'Mẹ muốn con dọn dẹp hết những đồ chơi này trước khi đi ngủ.', N'/dist/hp/audio/all (2).MP3', CAST(0x0000A54F00BCF59A AS DateTime), N'7')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'26d829b3-cfb4-4efc-b801-3e2962358397', N'He gave his wife a bunch of roses on the wedding anniversary.', N'Anh ta đã tặng cho vợ mình một bó hoa hồng vào hôm kỷ niệm ngày cưới.', N'/dist/hp/audio/bunch (2).MP3', CAST(0x0000A54F00BD0ACA AS DateTime), N'2046')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'26ebcd73-3712-4591-a369-6cd0eb08e455', N'Red apples are eye-catching.', N'Những quả táo đỏ trông thật bắt mắt.', N'/dist/hp/audio/apple (1).MP3', CAST(0x0000A54F00BCF5B4 AS DateTime), N'10')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'26f31710-5d44-4599-8fb2-a66a7cf33c20', N'They can''t afford to buy a house.', N'Họ không đủ khả năng để mua một căn nhà.', N'/dist/hp/audio/afford (1).MP3', CAST(0x0000A54F00BD09B7 AS DateTime), N'2021')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2706ec4e-7f83-4f6c-a452-3aba78342044', N'My cat likes milk very much.', N'Con mèo của tôi rất thích sữa.', N'/dist/hp/audio/milk (2).MP3', CAST(0x0000A54F00BCFBEC AS DateTime), N'180')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'27548d33-b069-4017-9929-c470acc2327a', N'Close your book and look at the board!', N'Các em hãy đóng sách lại và nhìn lên bảng!', N'/dist/hp/audio/close (1).MP3', CAST(0x0000A54F00BCF761 AS DateTime), N'55')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2794b06a-c7bb-4bdc-9f66-3cae3112fc6e', N'Harry should learn the geography of Australia before studying abroad.', N'Harry nên học địa lý của Úc trước khi đi du học.', N'/dist/hp/audio/geography (2).MP3', CAST(0x0000A54F00BD08FD AS DateTime), N'1643')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'27f323c6-5051-48aa-99cb-dfa44d2a9ab3', N'I learned alot from my father.', N'Tôi đã học được nhiều thứ từ cha.', N'/dist/hp/audio/learn (1).MP3', CAST(0x0000A54F00BCFB26 AS DateTime), N'159')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'28de940a-5d6c-44d1-b55a-885baf2df746', N'I want a double room with a double bed and a view of the sea.', N'Tôi muốn một phòng đôi với giường đôi và có thể nhìn ra biển.', N'/dist/hp/audio/room (2).MP3', CAST(0x0000A54F00BCFDDD AS DateTime), N'234')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'29437de4-95be-4683-b502-2cac78f2bcb4', N'The crown was stolen.', N'Vương miện đã bị đánh cắp.', N'/dist/hp/audio/crown (1).MP3', CAST(0x0000A54F00BD0570 AS DateTime), N'1546')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2968f06f-6972-438a-b6a3-5e7eaae7113c', N'Have you ever try this dish?', N'Bạn đã bao giở ăn thử món này chưa?', N'/dist/hp/audio/dish (1).MP3', CAST(0x0000A54F00BD0689 AS DateTime), N'1575')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'298a36a0-f36e-472c-8f39-08a2587e553a', N'Her dress is bright red.', N'Váy của cô ấy màu đỏ tươi.', N'/dist/hp/audio/red (1).MP3', CAST(0x0000A54F00BCFDA5 AS DateTime), N'228')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'29a33a09-cab9-414c-8854-dd17969df944', N'What is the next song?', N'Bài hát tiếp theo là bài gì vậy?', N'/dist/hp/audio/next (1).MP3', CAST(0x0000A54F00BCFC81 AS DateTime), N'196')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2a15f291-2e81-40d2-b345-f874d29fe995', N'Could you take me to the office?', N'Anh có thể đưa tôi đến văn phòng được không?', N'/dist/hp/audio/take (1).MP3', CAST(0x0000A54F00BCFF92 AS DateTime), N'281')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2a555266-438c-4f71-9979-6199207cf668', N'Her little girl has just started to talk.', N'Con gái nhỏ của cô ấy mới bắt đầu tập nói.', N'/dist/hp/audio/talk (2).MP3', CAST(0x0000A54F00BCFF9C AS DateTime), N'282')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2ab8ca9d-f27f-4093-9580-77f13d1bb175', N'What is your strengths and weaknesses?', N'Điểm mạnh và điểm yếu của bạn là gì?', N'/dist/hp/audio/what (2).MP3', CAST(0x0000A54F00BD012E AS DateTime), N'326')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2ae5d762-41f9-4c5e-a05b-54036e3d3b8e', N'She is a best friend of mine.', N'Cô ấy là một người bạn tốt của tôi.', N'/dist/hp/audio/of (1).MP3', CAST(0x0000A54F00BCFCCA AS DateTime), N'204')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2b08f599-8814-41a3-bf94-ff373c9d741f', N'May I come in?', N'Tôi có thể vào được không?', N'/dist/hp/audio/may (1).MP3', CAST(0x0000A54F00BCFBC7 AS DateTime), N'176')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2b0bf419-a45d-479e-bc91-4e102457c9be', N'That clock is very expensive.', N'Cái đồng hồ đó rất mắc tiền.', N'/dist/hp/audio/clock (1).MP3', CAST(0x0000A54F00BCF757 AS DateTime), N'54')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2b2bc6e4-ed91-4d79-80af-d5dbdc0ef851', N'The next bus to Nha Trang will depart at 11:30.', N'Chuyến xe đi Nha Trang kế tiếp sẽ khởi hành lúc 11:30.', N'/dist/hp/audio/next (2).MP3', CAST(0x0000A54F00BCFC81 AS DateTime), N'196')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2b693e76-87ee-4aeb-841c-1c1edc7bf9e1', N'I like warm weather.', N'Tôi thích thời tiết ấm áp.', N'/dist/hp/audio/warm (1).MP3', CAST(0x0000A54F00BD00E6 AS DateTime), N'318')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2b93a23a-9c79-461d-a8ef-023494ff15e5', N'He works 6 days per week.', N'Anh ta làm việc 6 ngày một tuần.', N'/dist/hp/audio/work (2).MP3', CAST(0x0000A54F00BD01C0 AS DateTime), N'342')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2bdaef2c-37e0-482c-b14d-48916a5b75ec', N'Someone broke the window.', N'Ai đó đã làm hư cái cửa sổ.', N'/dist/hp/audio/break (2).MP3', CAST(0x0000A54F00BCF6BC AS DateTime), N'38')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2c426bce-26a8-4b78-beca-16232627c06f', N'You will pay in additional charge if you choose this pack.', N'Bạn sẽ phải trả thêm phí nếu chọn gói này.', N'/dist/hp/audio/additional (2).MP3', CAST(0x0000A54F00BD09A7 AS DateTime), N'2020')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2c863ac8-a962-4617-bded-06bacb496bfe', N'Let''s begin!', N'Chúng ta bắt đầu thôi!', N'/dist/hp/audio/begin (1).MP3', CAST(0x0000A54F00BCF64C AS DateTime), N'26')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2cc2e47b-5093-47dc-8210-e6aa05f2dba8', N'Angus likes to wear leather gloves.', N'Angus thích đeo găng tay da.', N'/dist/hp/audio/glove (2).MP3', CAST(0x0000A54F00BD0912 AS DateTime), N'1645')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2cdcf845-5e6b-4a48-92f1-9868b7e62a7d', N'Her smile dissappeared when he appears. ', N'Nụ cười của cô biến mất khi anh ta xuất hiện.', N'/dist/hp/audio/disappear (1).MP3', CAST(0x0000A54F00BD065D AS DateTime), N'1571')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2d1204b9-6834-4d8b-b25f-600c49bdc353', N'The website enables children to study English easily.', N'Trang web này cho phép trẻ em học tiếng anh một cách dễ dàng.', N'/dist/hp/audio/enable (2).MP3', CAST(0x0000A54F00BD073E AS DateTime), N'1594')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2e30c192-00c5-46c2-8c28-a80c1a192282', N'We need some more people to assist in the search.', N'Chúng ta cần thêm người để hỗ trợ trong việc tìm kiếm.', N'/dist/hp/audio/assist (2).MP3', CAST(0x0000A54F00BD0A36 AS DateTime), N'2032')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2e431dea-3e77-4556-b2a8-eb2baffed05d', N'Please take a seat.', N'Hãy ngồi vào chỗ.', N'/dist/hp/audio/seat (1).MP3', CAST(0x0000A54F00BCFE25 AS DateTime), N'242')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2e438687-a478-43d3-b7d7-47f537dc6854', N'These machines are working at full capacity. ', N'Những cái máy này đang hoạt động hết công suất.', N'/dist/hp/audio/capacity (2).MP3', CAST(0x0000A54F00BD0AFE AS DateTime), N'2052')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2e677537-ba40-4f87-bb69-0d6751ea6bda', N'I likes that blue shirt.', N'Tôi thích cái áo màu xanh đó.', N'/dist/hp/audio/blue (1).MP3', CAST(0x0000A54F00BCF67B AS DateTime), N'31')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2e9ccdc9-769e-40b7-bdca-40a993482660', N'I have a pet dog.', N'Thú cưng của tôi là một con cún.', N'/dist/hp/audio/dog (1).MP3', CAST(0x0000A54F00BCF81F AS DateTime), N'75')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2eaa6fbb-c7cb-41d1-89b0-2ebf95784ae4', N'This term will be adding later.', N'Điều khoản này sẽ được thêm vào sau.', N'/dist/hp/audio/add (2).MP3', CAST(0x0000A54F00BCF56B AS DateTime), N'2')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2eda7781-5f85-49be-ac98-34a5d9933183', N'My grandmother is dead.', N'Bà tôi đã qua đời rồi.', N'/dist/hp/audio/dead (1).MP3', CAST(0x0000A54F00BD0342 AS DateTime), N'385')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2f5daa2d-0b17-4fb4-9cc5-b017e3b5dc97', N'Keep food in a container.', N'Giữ thức ăn trong hộp.', N'/dist/hp/audio/container (2).MP3', CAST(0x0000A54F00BD0504 AS DateTime), N'1534')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2f63b6a4-1dbb-47dd-a83c-951b66c7f0f6', N'The drink is a combination of bananas and apples.', N'Loại thức uống này là sự kết hợp của chuối và táo.', N'/dist/hp/audio/combination (1).MP3', CAST(0x0000A54F00BD0466 AS DateTime), N'1516')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2fe0e116-e4a7-4a4a-98a7-5a2e90631064', N'It was clear that he is lying.', N'Rõ ràng là nó đang nói dối.', N'/dist/hp/audio/clear (2).MP3', CAST(0x0000A54F00BD02CE AS DateTime), N'372')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2fed0548-3a6e-4cb0-af68-8f014212abfa', N'Harry learns a foreign language.', N'Harry học một ngôn ngữ nước ngoài.', N'/dist/hp/audio/foreign (2).MP3', CAST(0x0000A54F00BD0875 AS DateTime), N'1628')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2ff483ee-6ff6-4a34-a8e6-9095ec3fd6e8', N'You can ask her because she may know.', N'Em có thể hỏi cô ấy vì có lẽ cô ấy biết.', N'/dist/hp/audio/may (2).MP3', CAST(0x0000A54F00BCFBC7 AS DateTime), N'176')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'2ffe1d37-8785-4508-a8ca-4aefcaa048ff', N'Thank you very much!', N'Cảm ơn bạn rất nhiều.', N'/dist/hp/audio/very (2).MP3', CAST(0x0000A54F00BD00B8 AS DateTime), N'313')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3007ae7f-c1a5-427d-901e-64364684e783', N'How can I know if you don''t say.', N'Làm sao anh hiểu nếu em không nói ra.', N'/dist/hp/audio/how (1).MP3', CAST(0x0000A54F00BCFA9F AS DateTime), N'144')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3021fd88-10ce-4752-bfef-b9fcc9f9c3ae', N'I peel the apples after I have dinner.', N'Sau khi ăn tối, tôi gọt táo.', N'/dist/hp/audio/apple (2).MP3', CAST(0x0000A54F00BCF5B4 AS DateTime), N'10')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3045f8c1-1ea1-4932-b27c-44e57029f799', N'I want to go somewhere but I can''t.', N'Tôi muốn đi đâu đó nhưng không thể.', N'/dist/hp/audio/but (1).MP3', CAST(0x0000A54F00BCF6E8 AS DateTime), N'43')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'304a86b1-cf1c-456a-a08b-632b1b5901b1', N'Lily opened a flower shop on the Hai Ba Trung Street.', N'Lily mở cửa hàng hoa trên đường Hai Bà Trưng. ', N'/dist/hp/audio/shop (2).MP3', CAST(0x0000A54F00BCFE67 AS DateTime), N'249')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'30950702-bca2-43ba-94ff-6f600f056d12', N'He doesn''t like fish.', N'Anh ta không thích cá.', N'/dist/hp/audio/like (2).MP3', CAST(0x0000A54F00BCFB5F AS DateTime), N'165')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'309a21bf-da85-4b19-92f6-a41338717a19', N'Mia learned from her failures.', N'Mia học hỏi từ những thất bại của mình.', N'/dist/hp/audio/failure (2).MP3', CAST(0x0000A54F00BD081C AS DateTime), N'1618')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'30f99136-0365-4ecf-b2a0-a41eb137fbcb', N'I could not sleep on the sofa.', N'Tôi không thể ngủ trên ghế sofa.', N'/dist/hp/audio/sleep (2).MP3', CAST(0x0000A54F00BCFEB8 AS DateTime), N'258')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'31139cd5-17ff-4bc2-a6db-4f92692e1891', N'In Japan, they drive on the left side of the road.', N'Ở Nhật, người ta lái xe bên trái.', N'/dist/hp/audio/left (2).MP3', CAST(0x0000A54F00BCFB30 AS DateTime), N'160')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'31298ee9-aeaa-4a5c-b559-4a6e194dafa6', N'Life''s too short, live a life without regret.', N'Cuộc sống này rất ngắn ngủi, hãy sống sao cho mình không phải hối tiếc vì một điều gì cả.', N'/dist/hp/audio/short (2).MP3', CAST(0x0000A54F00BCFE70 AS DateTime), N'250')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3145064a-865d-49f4-8088-ea7bb630d735', N'I watch a flock of birds fly over the field.', N'Tôi nhìn theo một đàn chim đang bay qua cánh đồng.', N'/dist/hp/audio/bird (2).MP3', CAST(0x0000A54F00BCF667 AS DateTime), N'29')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'31b9fb45-518e-4861-8c47-41c69a5f5629', N'He can''t stop the car.', N'Anh ta không thể dừng chiếc xe lại được.', N'/dist/hp/audio/stop (1).MP3', CAST(0x0000A54F00BCFF35 AS DateTime), N'271')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'31d3c5d8-172f-4cbd-9f81-94faffbb7f4b', N'Could I see you for a minute?', N'Anh có thể gặp em một chút được không?', N'/dist/hp/audio/minute (1).MP3', CAST(0x0000A54F00BCFBF6 AS DateTime), N'181')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'31e0eec4-bd9c-4adb-a9f3-dbf7592cb273', N'He is standing behind you.', N'Anh ta đang đứng sau bạn kìa.', N'/dist/hp/audio/behind (1).MP3', CAST(0x0000A54F00BD025F AS DateTime), N'360')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'32335ed7-0929-4ece-bc01-b98d2ac11514', N'They don''t want to let her leave the company.', N'Họ không muốn để cô ấy rời khỏi công ty.', N'/dist/hp/audio/let (2).MP3', CAST(0x0000A54F00BCFB43 AS DateTime), N'162')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'324c196b-ceef-4127-9dd9-5bd66b408ddd', N'Olivia''s hair was curly when she is young.', N'Tóc của Olivia quăn từ khi còn bé.', N'/dist/hp/audio/curly (2).MP3', CAST(0x0000A54F00BD058D AS DateTime), N'1549')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'32df5418-7403-4a42-8e50-432d14337d37', N'I didn''t understand this story until the end.', N'Tôi không hiểu câu chuyện này cho tới đoạn cuối.', N'/dist/hp/audio/end (2).MP3', CAST(0x0000A54F00BCF88F AS DateTime), N'87')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'331ddd03-9ef5-4f0a-a5bd-4cea4825d63e', N'He went and sat beside me.', N'Anh ta đã bước đến và ngồi xuống bên cạnh tôi.', N'/dist/hp/audio/sit (1).MP3', CAST(0x0000A54F00BCFE94 AS DateTime), N'254')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'33568a81-c16f-4781-8fb5-b0bffa626b89', N'Give me a bandage.', N'Đưa cho tôi cuộn băng gạc.', N'/dist/hp/audio/bandage (1).MP3', CAST(0x0000A54F00BD0A70 AS DateTime), N'2038')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'336faa58-3c0e-471f-acff-6198fdfc87b3', N'Most English plural nouns end in ''s''.', N'Hầu hết danh từ số nhiều trong tiếng Anh kết thúc bẳng chữ "s".', N'/dist/hp/audio/noun (2).MP3', CAST(0x0000A54F00BCFCAE AS DateTime), N'201')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'33b2d468-1420-4ac7-8f7f-c77476ff6975', N'The bus came one hour late.', N'Xe buýt đến trễ một tiếng đồng hồ.', N'/dist/hp/audio/hour (1).MP3', CAST(0x0000A54F00BCFA8F AS DateTime), N'142')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'343ca9fd-09a8-4e9d-bf17-4b9de5332226', N'His death came at the ages 65.', N'Ông ấy đã chết ở tuổi 65.', N'/dist/hp/audio/death (2).MP3', CAST(0x0000A54F00BCF7FA AS DateTime), N'71')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'34848eb0-ac17-474b-a6a1-366f38400b37', N'His father is CEO.', N'Cha của anh ta là giám đốc điều hành.', N'/dist/hp/audio/father (1).MP3', CAST(0x0000A54F00BCF8E1 AS DateTime), N'96')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'353ecc11-f0d2-4c21-ad68-95af7cf659fe', N'Where did you go yesterday?', N'Hôm qua anh đã đi đâu vậy?', N'/dist/hp/audio/where (1).MP3', CAST(0x0000A54F00BD0140 AS DateTime), N'328')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'354171d1-406d-4f77-8ca8-20e277eefcee', N'Where is the entry?', N'Lối vào ở đâu vậy?', N'/dist/hp/audio/entry (1).MP3', CAST(0x0000A54F00BD076E AS DateTime), N'1599')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3583ec6c-b1a7-4230-9df4-c67662a41507', N'After swimming, we go to shopping mall.', N'Sau khi đi bơi chúng tôi tới trung tâm mua sắm.', N'/dist/hp/audio/after (2).MP3', CAST(0x0000A54F00BCF574 AS DateTime), N'3')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'35bb2d36-0eac-4acd-b92d-abf706a2b86d', N'He has a six-year-old girl.', N'Ông ấy có một đứa con gái 6 tuổi.', N'/dist/hp/audio/girl (2).MP3', CAST(0x0000A54F00BCF9CC AS DateTime), N'122')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'35e87cfa-557f-4ed8-a83d-09ed11f8ce92', N'Look at the board, please!', N'Mời các bạn cùng nhìn lên bảng!', N'/dist/hp/audio/board (2).MP3', CAST(0x0000A54F00BCF683 AS DateTime), N'32')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'35ee47b3-744e-492c-a78a-7d940c97902d', N'Henry gives me 9 oranges.', N'Henry cho tôi 9 quả cam.', N'/dist/hp/audio/nine (2).MP3', CAST(0x0000A54F00BCFC93 AS DateTime), N'198')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'361a6917-47b2-4d07-9068-b8f0060c3485', N'I think it takes 3 weeks to finish the report.', N'Tôi nghĩ mất khoảng 3 tuần để hoàn thành bài báo cáo.', N'/dist/hp/audio/week (2).MP3', CAST(0x0000A54F00BD0125 AS DateTime), N'325')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'36350dd7-a36e-43fc-881d-8c7a0b568060', N'I have 1.000 dollar.', N'Tôi có 1,000 đô la.', N'/dist/hp/audio/dollar (1).MP3', CAST(0x0000A54F00BCF828 AS DateTime), N'76')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3639ab0b-eed5-4ea8-a057-f339768b1ffa', N'Some old trees had been cut down.', N'Một số cây cổ thụ đã bị chặt bỏ.', N'/dist/hp/audio/cut (2).MP3', CAST(0x0000A54F00BCF7C2 AS DateTime), N'65')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'363f7cce-0a20-408d-b1fe-9f58cc80f10e', N'I plant a garden of roses in front of the house.', N'Tôi trồng một vườn hoa hồng ở trước nhà.', N'/dist/hp/audio/rose (1).MP3', CAST(0x0000A54F00BCFDE6 AS DateTime), N'235')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'36423b25-469a-4acd-9b26-ec5018af3e6e', N'They are playing near the camp.', N'Họ đang chơi gần chỗ cắm trại.', N'/dist/hp/audio/camp (2).MP3', CAST(0x0000A54F00BD029F AS DateTime), N'367')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'364dd293-0266-4f10-a974-b4d501a147de', N'I work part-time in a shop.', N'Tôi làm việc bán thời gian ở một cửa hàng.', N'/dist/hp/audio/shop (1).MP3', CAST(0x0000A54F00BCFE67 AS DateTime), N'249')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3658329b-b14f-49c7-97f4-8d5e1c99ca19', N'Dalat city has a cool climate.', N'Thành phố Đà Lạt có khí hậu mát mẻ.', N'/dist/hp/audio/climate (1).MP3', CAST(0x0000A54F00BD0441 AS DateTime), N'1512')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'36778d1d-30b7-4388-8764-0daacac29042', N'I want to have a big house with a large and airy garden.', N'Tôi muốn có một căn nhà lớn với sân vườn rộng rãi và thoáng đãng.', N'/dist/hp/audio/house (2).MP3', CAST(0x0000A54F00BCFA97 AS DateTime), N'143')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'36c49861-9320-44bf-8df8-3fb2d34b9ad7', N'Sophia''s dad is over there.', N'Cha của Sophia ở đằng đó.', N'/dist/hp/audio/dad (1).MP3', CAST(0x0000A54F00BCF7DE AS DateTime), N'68')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3704f3ba-1697-41f4-b2b7-1834026d3f8e', N'Your cell phone is on the table.', N'Điện thoại di động của anh ở trên bàn.', N'/dist/hp/audio/on (1).MP3', CAST(0x0000A54F00BCFCF0 AS DateTime), N'208')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'370d1546-201e-4417-9d7a-c31260cd7d7c', N'You can use member card to get more preferential treatment.', N'Bạn có thể dùng thẻ thành viên để nhận thêm ưu đãi.', N'/dist/hp/audio/card (2).MP3', CAST(0x0000A54F00BCF72A AS DateTime), N'49')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'370e22c5-7f95-4ab3-b1ce-b9e9bb078d6f', N'Cat Lai port is in Dong Nai river.', N'Cảng Cát Lái nằm trên sông Đồng Nai.', N'/dist/hp/audio/river (2).MP3', CAST(0x0000A54F00BCFDD4 AS DateTime), N'233')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3753f19e-573d-44ae-9b9f-b68eb3170f0d', N'She sits on the chair.', N'Cô ấy ngồi xuống ghế.', N'/dist/hp/audio/chair (1).MP3', CAST(0x0000A54F00BCF7CC AS DateTime), N'66')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'37660c3f-0dff-4d42-8823-a56bcf791362', N'They predict that the demand will increase in the next decade.', N'Họ dự báo nhu cầu sẽ tăng vào cuối thập kỉ này.', N'/dist/hp/audio/decade (2).MP3', CAST(0x0000A54F00BD05B1 AS DateTime), N'1553')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'37ac0448-5a3d-49c0-bb6e-4b5aa30ed10f', N'High heels are not good for women''s health.', N'Giày cao gót không tốt cho sức khỏe của chị em phụ nữ.', N'/dist/hp/audio/high (2).MP3', CAST(0x0000A54F00BCFA54 AS DateTime), N'136')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'37c14afa-a6e5-4a9b-bd47-eb85c56fc16a', N'Linda''s friend is the editor of the Times.', N'Bạn của Linda là biên tập viên của tờ báo Times.', N'/dist/hp/audio/editor (2).MP3', CAST(0x0000A54F00BD06E0 AS DateTime), N'1584')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'38076ea9-6537-4c4f-87b7-b365e3034468', N'All of my students are very cheerful today.', N'Hôm nay các học sinh của tôi đều rất hào hứng.', N'/dist/hp/audio/cheerful (2).MP3', CAST(0x0000A54F00BD040B AS DateTime), N'1506')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'382f3a40-a8f8-45c1-804a-259b2b9ae8f3', N'If you are in doubt, ask your teacher.', N'Nếu còn nghi ngờ, hãy hỏi giáo viên của con.', N'/dist/hp/audio/doubt (2).MP3', CAST(0x0000A54F00BD06A7 AS DateTime), N'1578')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'385d8ca9-fadf-4b1b-b893-4291fab2417d', N'The farmers hope to have a rich harvest.', N'Những người nông dân hy vọng một vụ mùa bội thu.', N'/dist/hp/audio/rich (1).MP3', CAST(0x0000A54F00BCFDB7 AS DateTime), N'230')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'38644baf-438c-491b-ab2c-45f14361a275', N'You should see a doctor about your headache.', N'Em nên gặp bác sĩ để trao đổi về tình trạng đau đầu của mình.', N'/dist/hp/audio/doctor (2).MP3', CAST(0x0000A54F00BCF816 AS DateTime), N'74')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'387e2066-2dac-4cad-a87b-86afc3ff8f42', N'Which cake do you prefer?', N'Con thích cái bánh nào?', N'/dist/hp/audio/which (2).MP3', CAST(0x0000A54F00BD0149 AS DateTime), N'329')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'38b6c038-577e-46d2-8082-42a2642efec1', N'He has heart disease.', N'Ông ấy bị bệnh tim .', N'/dist/hp/audio/heart (2).MP3', CAST(0x0000A54F00BCFA2C AS DateTime), N'132')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3921cfce-0423-4945-b09a-6f262a7feb02', N'He wears glasses for reading.', N'Ông ấy đeo kính để đọc báo.', N'/dist/hp/audio/wear (1).MP3', CAST(0x0000A54F00BD011C AS DateTime), N'324')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'39446f05-9c86-461f-9967-dbc664252393', N'An Duong Vuong is the first and the only king of Au Lac.', N'An Dương Vương là vị vua đầu tiên và duy nhất của nhà nước Âu Lạc.', N'/dist/hp/audio/king (2).MP3', CAST(0x0000A54F00BCFAF8 AS DateTime), N'154')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3a3328f3-9ed8-4afd-81ed-9e1ae646f6e9', N'I admire Mia''s courage.', N'Tôi ngưỡng mộ lòng dũng cảm của Mia.', N'/dist/hp/audio/courage (1).MP3', CAST(0x0000A54F00BD054B AS DateTime), N'1542')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3b00d669-72f3-4dbe-aefa-bdd03e17b302', N'The hall has a seating capacity of more than 1,000.', N'Phòng hội trường có sức chứa hơn 1.000 người.', N'/dist/hp/audio/capacity (1).MP3', CAST(0x0000A54F00BD0AFE AS DateTime), N'2052')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3b5e4111-b4db-4e21-8944-9e34b977936c', N'Prices are still going up.', N'Giá cả vẫn tiếp tục tăng cao.', N'/dist/hp/audio/up (1).MP3', CAST(0x0000A54F00BD009D AS DateTime), N'310')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3bad0adc-7623-47ea-b2ce-08074a75c9d4', N'The cat''s fur is white.', N'Lông con mèo này màu trắng.', N'/dist/hp/audio/fur (2).MP3', CAST(0x0000A54F00BD08D0 AS DateTime), N'1638')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3be5d8b4-18f0-45a1-8f25-f2272f9d322a', N'He had left here many years ago.', N'Ông ấy đã rời khỏi đây từ nhiều năm trước.', N'/dist/hp/audio/year (2).MP3', CAST(0x0000A54F00BD01D1 AS DateTime), N'344')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3c24d996-8112-4b32-98af-e63832003e33', N'All rooms have hot and cold water.', N'Tất cả các phòng đều có nước nóng và nước lạnh.', N'/dist/hp/audio/hot (2).MP3', CAST(0x0000A54F00BCFA86 AS DateTime), N'141')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3c347d19-c485-4083-baa5-483db22481d5', N'Where can I exchange my money?', N'Tôi có thể đổi tiền ở đâu được?', N'/dist/hp/audio/money (2).MP3', CAST(0x0000A54F00BCFC06 AS DateTime), N'183')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3c3c9853-4bef-4da8-8134-01b7649391e8', N'There is a golf ball in the garden.', N'Có một trái banh gôn ở trong vườn.', N'/dist/hp/audio/ball (2).MP3', CAST(0x0000A54F00BCF608 AS DateTime), N'19')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3c780d10-d66b-411b-b01a-8ecdadad43ee', N'He is broken several bones in his left foot.', N'Anh ta bị gãy vài cái xương ở chân trái.', N'/dist/hp/audio/foot (2).MP3', CAST(0x0000A54F00BCF928 AS DateTime), N'104')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3cb914a7-983a-403c-a785-7b5550ce7f21', N'I only work from Monday to Friday.', N'Tôi chỉ làm việc từ thứ Hai đến thứ Sáu.', N'/dist/hp/audio/to (2).MP3', CAST(0x0000A54F00BCFFE6 AS DateTime), N'290')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3cf4f159-7655-4620-9339-73f8a0b07439', N'Fill the container with milk.', N'Đổ đầy sữa vào thùng đi.', N'/dist/hp/audio/container (1).MP3', CAST(0x0000A54F00BD0504 AS DateTime), N'1534')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3d9d0cfe-a302-4552-8abc-d6237e76124e', N'I went to the market to help my wife last weekend.', N'Tuần trước tôi đã đến chợ để phụ giúp vợ tôi.', N'/dist/hp/audio/market (1).MP3', CAST(0x0000A54F00BCFBBD AS DateTime), N'175')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3dde9492-d44a-46b9-a62c-bd41fb8452f8', N'I''m on a diet.', N'Tôi đang ăn kiêng.', N'/dist/hp/audio/diet (1).MP3', CAST(0x0000A54F00BD062C AS DateTime), N'1566')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3e0d13e9-3b7a-4355-9013-255373c17577', N'Do you like the new seat?', N'Em có thích chỗ ngồi mới không?', N'/dist/hp/audio/like (1).MP3', CAST(0x0000A54F00BCFB5F AS DateTime), N'165')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3e80a7ee-0535-4086-8849-c58cf7c0adbd', N'Do you have a red cap?', N'Anh có cái nón lưỡi trai màu đỏ nào không ạ?', N'/dist/hp/audio/cap (1).MP3', CAST(0x0000A54F00BD0AEC AS DateTime), N'2050')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3ec3773b-5c1c-45f6-9c97-0b2e9b7819e6', N'You can put in on the desk over here.', N'Anh có thể đặt nó lên cái bàn ở đằng này.', N'/dist/hp/audio/here (2).MP3', CAST(0x0000A54F00BCFA4A AS DateTime), N'135')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3f154145-e431-446a-8a24-182f78de1b2f', N'My friend tries to win every race.', N'Bạn tôi cố gắng để giành chiến thắng mỗi cuộc đua.', N'/dist/hp/audio/win (2).MP3', CAST(0x0000A54F00BD0188 AS DateTime), N'336')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3f484e80-5e16-4bec-baf8-3565bf887aa3', N'He is the best students in his class.', N'Cậu ta là học sinh giỏi nhất lớp mình.', N'/dist/hp/audio/best (2).MP3', CAST(0x0000A54F00BCF656 AS DateTime), N'27')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3f5e25f5-f282-4a36-9330-d8d037644b17', N'His biggest dream is to become a famous singer.', N'Ước mơ lớn nhất của anh ấy là trở thành một ca sĩ nổi tiếng.', N'/dist/hp/audio/dream (2).MP3', CAST(0x0000A54F00BCF842 AS DateTime), N'79')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'3f8273d5-afcf-4474-bd75-4efd93265944', N'I hate to see you unhappy.', N'Tôi ghét phải thấy bạn không vui.', N'/dist/hp/audio/see (2).MP3', CAST(0x0000A54F00BCFE30 AS DateTime), N'243')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4035e5cd-6fc9-4be5-9d5d-3c5561a779a5', N'The company is $5 million in debt.', N'Công ty có một khoản nợ 5 triệu đô.', N'/dist/hp/audio/debt (1).MP3', CAST(0x0000A54F00BD05A8 AS DateTime), N'1552')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'40579b8c-c2ab-4ab1-a6ad-6e651fa7a085', N'We have a lot of funs at school today.', N'Hôm nay chúng con có rất nhiều trò vui ở trường.', N'/dist/hp/audio/fun (1).MP3', CAST(0x0000A54F00BCF973 AS DateTime), N'112')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'40d9a1c9-2862-4c2a-939f-467280da0d71', N'He has something to say to you.', N'Anh ta có chuyện muốn nói với cô.', N'/dist/hp/audio/say (1).MP3', CAST(0x0000A54F00BCFE00 AS DateTime), N'238')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'40e72faa-29f3-4540-9bf2-a7a712646a29', N'This program analyzes data.', N'Chương trình dùng để phân tích dữ liệu.', N'/dist/hp/audio/analyze (1).MP3', CAST(0x0000A54F00BD09EA AS DateTime), N'2025')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4128e828-1ce2-400c-87bf-180d8c91ac21', N'The shop sells electrical goods.', N'Cửa hàng này bán đồ điện.', N'/dist/hp/audio/goods (2).MP3', CAST(0x0000A54F00BD0924 AS DateTime), N'1647')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4146f4e8-c8b8-4d3f-911e-f84f9d0ebd7a', N'Joel is a chemist.', N'Joel là một nhà hóa học.', N'/dist/hp/audio/chemist (1).MP3', CAST(0x0000A54F00BD041F AS DateTime), N'1508')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4162fd05-29a6-4432-af0d-d682206ee621', N'There are 2 main branches of Cuu Long river.', N'Sông Cửu Long có hai nhánh chính.', N'/dist/hp/audio/river (1).MP3', CAST(0x0000A54F00BCFDD4 AS DateTime), N'233')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'41bdbf74-7829-4f5b-ab97-0d85f53996f6', N'That bunch of bananas look so delicious!', N'Buồng chuối đó trông ngon thật!', N'/dist/hp/audio/bunch (1).MP3', CAST(0x0000A54F00BD0ACA AS DateTime), N'2046')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'41c0ba0e-3b3d-484b-8bf4-cd7377ea5a7f', N'The house is completely destroyed.', N'Căn nhà đã bị phả hủy hoàn toàn.', N'/dist/hp/audio/destroy (2).MP3', CAST(0x0000A54F00BD060D AS DateTime), N'1563')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'41c1bccd-150e-40c4-a4c5-0237b407b213', N'We will start at 5 a.m.', N'Chúng ta sẽ khởi hành lúc 5 giờ sáng.', N'/dist/hp/audio/start (1).MP3', CAST(0x0000A54F00BCFF24 AS DateTime), N'269')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4284887b-7265-4144-a7da-bd1cbdc53218', N'A little girl is drawing a picture of her family.', N'Cô bé đang vẽ một bức tranh về gia đình mình.', N'/dist/hp/audio/draw (2).MP3', CAST(0x0000A54F00BD0383 AS DateTime), N'392')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4286b9b2-1a7b-4cdb-ba1c-4ebe120bbf42', N'This is not an entry.', N'Chỗ này không phải lối vào.', N'/dist/hp/audio/entry (2).MP3', CAST(0x0000A54F00BD076E AS DateTime), N'1599')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'42c2790c-9f01-4248-b66f-69ab6a11f345', N'We want to focus on main ideas.', N'Chúng tôi muốn tập trung vào những ý chính.', N'/dist/hp/audio/focus (1).MP3', CAST(0x0000A54F00BD086C AS DateTime), N'1627')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'42e621f2-89ec-435f-9394-f87e38421d9d', N'I''m certainly never doing that again.', N'Tôi nhất định sẽ không làm điều đó nữa.', N'/dist/hp/audio/certainly (1).MP3', CAST(0x0000A54F00BD03D4 AS DateTime), N'1500')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'430c3906-a399-4121-97d9-f838f7382552', N'Mie goes into the elevator with Jill.', N'Mie đi vào thang máy với Jill.', N'/dist/hp/audio/elevator (2).MP3', CAST(0x0000A54F00BD0705 AS DateTime), N'1588')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'433eeab0-2199-4d0e-a796-ff8f5ec5e1f1', N'You''re not allowed to say any words in his class.', N'Bạn không được nói bất cứ lời nào trong lớp của thầy ấy.', N'/dist/hp/audio/any (2).MP3', CAST(0x0000A54F00BD0233 AS DateTime), N'355')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'43539cd8-18ce-481b-bcf7-f9084528b46b', N'The bookstore will deliver your books on Thursday.', N'Nhà sách sẽ giao sách cho bạn vào thứ năm.', N'/dist/hp/audio/deliver (1).MP3', CAST(0x0000A54F00BD05D7 AS DateTime), N'1557')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4355562c-dd77-4bc9-afc4-8b483f97fcc5', N'The moon is the fifth-largest planet in the Solar system.', N'Mặt trăng là hành tinh lớn thứ năm trong hệ Mặt trời.', N'/dist/hp/audio/moon (1).MP3', CAST(0x0000A54F00BCFC1A AS DateTime), N'185')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'444359de-c2f2-436f-b9a2-a4893aa8d954', N'The distance from home to school is quite far.', N'Khoảng cách từ nhà tôi đến trường khá xa.', N'/dist/hp/audio/distance (1).MP3', CAST(0x0000A54F00BD0693 AS DateTime), N'1576')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'449ecf4a-4305-46e8-8d49-8a207f1dca01', N'My parents discuss if they will buy a new car.', N'Cha mẹ tôi bàn bạc để mua một chiếc xe mới.', N'/dist/hp/audio/discuss (2).MP3', CAST(0x0000A54F00BD0367 AS DateTime), N'389')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'44ac504c-f5b0-4f40-908b-58bad1908961', N'They have a beautiful house.', N'Họ có một căn nhà thật đẹp.', N'/dist/hp/audio/have (1).MP3', CAST(0x0000A54F00BCFA08 AS DateTime), N'129')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4506fe47-0243-4667-9c4e-7b20456837ae', N'This house is too small for us.', N'Căn nhà này quá nhỏ đối với chúng tôi.', N'/dist/hp/audio/this (1).MP3', CAST(0x0000A54F00BD0043 AS DateTime), N'300')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'460a1667-7e08-4d39-a823-90a37def093a', N'I want to thank him most sincerely.', N'Tôi muốn cảm ơn anh với tất cả lòng chân thành.', N'/dist/hp/audio/thank (2).MP3', CAST(0x0000A54F00BCFFF8 AS DateTime), N'292')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'465c513a-bcc0-4de6-b43c-f292e4bc1f13', N'She manages financial matter very efficiently..', N'Cô ấy quản lý những vấn đề tài chính rất hiệu quả.', N'/dist/hp/audio/financial (2).MP3', CAST(0x0000A54F00BD0849 AS DateTime), N'1623')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'46621e46-c245-4d4a-8f8d-2f7cd72651a2', N'They ensure their company will succeed.', N'Họ bảo đảm công ty sẽ thành công.', N'/dist/hp/audio/ensure (1).MP3', CAST(0x0000A54F00BD075A AS DateTime), N'1597')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4686ff55-8fe5-4dbb-956c-64bf3a5bd95b', N'It''s very cold in winter.', N'Mùa đông trời rất lạnh.', N'/dist/hp/audio/cold (2).MP3', CAST(0x0000A54F00BCF773 AS DateTime), N'57')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'47200959-137a-40c5-9d1e-5cfbd4c71501', N'It''s a criminal law.', N'Đây là bộ luật hình sự.', N'/dist/hp/audio/criminal (1).MP3', CAST(0x0000A54F00BD0568 AS DateTime), N'1545')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'47959379-3169-45fc-8210-7c7daf4fbb6f', N'Can you climb that tree?', N'Cậu có thể trèo lên cái cây đó không?', N'/dist/hp/audio/climb (1).MP3', CAST(0x0000A54F00BD02D7 AS DateTime), N'373')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'47aa79d3-db8a-4393-9484-2664e183d91e', N'These products was sold to raise money for a charity.', N'Những sản phẩm này được bán để quyên tiền cho một quỹ từ thiện.', N'/dist/hp/audio/charity (2).MP3', CAST(0x0000A54F00BD0B1B AS DateTime), N'2055')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'47b7296f-8e9f-41d8-aec5-26612289ed9c', N'The Earth is the only planet which supports life.', N'Trái Đất là hành tinh duy nhất có sự sống.', N'/dist/hp/audio/earth (2).MP3', CAST(0x0000A54F00BD03A8 AS DateTime), N'396')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'47cb5ddb-2155-40d1-a8b6-f0022e6cd001', N'District 1 is city centre.', N'Quận 1 là trung tâm thành phố.', N'/dist/hp/audio/centre (1).MP3', CAST(0x0000A54F00BCF73C AS DateTime), N'51')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'48117611-0f65-459c-a236-03038188a66b', N'Do you mind if I closed the window?', N'Anh có phiền nếu tôi đóng cửa sổ lại không?', N'/dist/hp/audio/close (2).MP3', CAST(0x0000A54F00BCF761 AS DateTime), N'55')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'48294825-19f4-44ab-bd80-640ff21a2e01', N'Ella has dark eyes and a high nose bridge.', N'Ella có đôi mắt đen và sống mũi cao.', N'/dist/hp/audio/nose (2).MP3', CAST(0x0000A54F00BCFCA5 AS DateTime), N'200')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'489925c3-e453-49bc-b1ff-0afe5c0bdb8e', N'He was arrested at his house.', N'Hắn ta bị bắt ngay tại nhà riêng.', N'/dist/hp/audio/arrest (1).MP3', CAST(0x0000A54F00BD0A23 AS DateTime), N'2030')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'497d714c-df76-4d6a-b23e-5fd58d766b02', N'I can''t eat spicy food because it gives me a stomach ache.', N'Tôi không thể ăn đồ cay vì nó làm tôi bị đau dạ dày.', N'/dist/hp/audio/eat (2).MP3', CAST(0x0000A54F00BCF873 AS DateTime), N'84')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'49ddadb2-4322-4666-8e35-ee260b5e9491', N'I hope we''re doing the right thing.', N'Tôi hy vọng chúng ta đang làm đúng.', N'/dist/hp/audio/right (2).MP3', CAST(0x0000A54F00BCFDCA AS DateTime), N'232')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4a17a38c-182f-4f38-b1d6-28f54ac211a2', N'I had to walk all the way home.', N'Tôi phải đi bộ suốt con đường về nhà.', N'/dist/hp/audio/walk (1).MP3', CAST(0x0000A54F00BD00CB AS DateTime), N'315')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4a28446d-9308-4d38-a445-00b75da642b4', N'School finishes at 3 o''clock.', N'Trường học kết thúc lúc 3 giờ chiều.', N'/dist/hp/audio/three (2).MP3', CAST(0x0000A54F00BD005E AS DateTime), N'303')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4a76894c-2d11-433c-9230-0bfd29ba711a', N'Ho Chi Minh city will have some rain tonight.', N'Đêm nay thành phố Hồ Chí Minh sẽ có mưa.', N'/dist/hp/audio/rain (2).MP3', CAST(0x0000A54F00BCFD93 AS DateTime), N'226')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4ae3268f-07d5-4d80-98aa-d0e9d52d2ba3', N'Do you know the words to this song?', N'Bạn có biết lời của bài hát này không?', N'/dist/hp/audio/word (1).MP3', CAST(0x0000A54F00BD01B6 AS DateTime), N'341')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4b0fdeea-3ac6-4506-854e-35dd60237713', N'He associated with an underground organization.', N'Hắn ta đã liên kết với một tổ chức ngầm.', N'/dist/hp/audio/associate (1).MP3', CAST(0x0000A54F00BD0A40 AS DateTime), N'2033')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4b2b5c2a-02e6-400e-8fc2-ff13a8913292', N'The corn is still green.', N'Trái bắp này vẫn còn xanh.', N'/dist/hp/audio/corn (1).MP3', CAST(0x0000A54F00BD02F0 AS DateTime), N'376')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4b46ea74-8e16-481a-8ed0-95ae0ce84019', N'My class will be off tomorrow because the teacher is on business trip.', N'Ngày mai lớp tôi được nghỉ vì giáo viên đi công tác.', N'/dist/hp/audio/class (2).MP3', CAST(0x0000A54F00BCF74E AS DateTime), N'53')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4b72f9cd-9b1e-430d-8eb0-a7454125d3d1', N'Be careful when you run down a slope.', N'Hãy cẩn thận khi chạy xuống dốc.', N'/dist/hp/audio/run (2).MP3', CAST(0x0000A54F00BCFDF8 AS DateTime), N'237')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4b82d775-fce7-49b0-b3f7-1822d58d4f1e', N'They are of equal height.', N'Chúng cao bằng nhau.', N'/dist/hp/audio/equal (2).MP3', CAST(0x0000A54F00BD03B8 AS DateTime), N'398')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4bb3ffc4-97bd-40f3-8cc8-585c57d0e9fb', N'He falls in love with her.', N'Anh ta đã phải lòng cô ấy.', N'/dist/hp/audio/fall (1).MP3', CAST(0x0000A54F00BCF8C6 AS DateTime), N'93')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4bca25f0-c621-45d8-87a4-75026e9e2f30', N'The child was abandoned 3 years ago.', N'Đứa bé đã bị bỏ rơi 3 năm trước.', N'/dist/hp/audio/abandon (1).MP3', CAST(0x0000A54F00BD0953 AS DateTime), N'2013')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4c282457-82e8-4d7f-852a-1c5b76171463', N'He has 3 sisters.', N'Anh ấy có 3 người chị.', N'/dist/hp/audio/three (1).MP3', CAST(0x0000A54F00BD005E AS DateTime), N'303')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4c2e819d-39c0-4c4b-a685-6e07778dabe5', N'He was quite shocked when I told him that news.', N'Anh ta khá là sốc khi tôi báo cho anh ta tin đó.', N'/dist/hp/audio/when (2).MP3', CAST(0x0000A54F00BD0137 AS DateTime), N'327')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4c3b1ca2-ee09-4acd-a7b8-f357cebb80b3', N'The thief abandoned his vehicle.', N'Tên trộm đã bỏ lại chiếc xe của hắn.', N'/dist/hp/audio/abandon (2).MP3', CAST(0x0000A54F00BD0953 AS DateTime), N'2013')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4c66be29-20d5-402b-8766-f57ec152f215', N'My son really likes the cap you wore on a TV show.', N'Con trai tôi rất thích cái nón mà bạn đã đội trên chương trình tivi.', N'/dist/hp/audio/cap (2).MP3', CAST(0x0000A54F00BD0AEC AS DateTime), N'2050')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4cac817e-7b02-41aa-bbe8-f91d35444bb8', N'She is a closed person.', N'Cô ấy là một người sống khép kín.', N'/dist/hp/audio/closed (2).MP3', CAST(0x0000A54F00BD044A AS DateTime), N'1513')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4cc8e5e0-8839-44d0-9fb4-08467e67fcc0', N'Our neighbours are very friendly.', N'Những người hàng xóm của chúng tôi rất là thân thiện.', N'/dist/hp/audio/our (1).MP3', CAST(0x0000A54F00BCFD0C AS DateTime), N'211')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4cf96f3d-afd7-4bc7-b0f3-b2b976524d48', N'Jake shows me his certificate.', N'Jake cho tôi xem giấy chứng nhận của anh ấy.', N'/dist/hp/audio/certificate (2).MP3', CAST(0x0000A54F00BD03DD AS DateTime), N'1501')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4cfb7cfd-8b78-43e4-91b1-24dc8984c815', N'How many stars does the hotel have?', N'Khách sạn này mấy sao nhỉ?', N'/dist/hp/audio/star (2).MP3', CAST(0x0000A54F00BCFF1A AS DateTime), N'268')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d075a2f-1c62-494c-8158-d131205d84dc', N'Those white clouds look like the sheep.', N'Những đám mây trắng đó trông như một đàn cừu.', N'/dist/hp/audio/white (2).MP3', CAST(0x0000A54F00BD0152 AS DateTime), N'330')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d2c8d89-b10e-4703-8eb2-dc02af004c58', N'He is a giant.', N'Ông ta là người khổng lồ.', N'/dist/hp/audio/giant (1).MP3', CAST(0x0000A54F00BD0908 AS DateTime), N'1644')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d2ee57e-a13e-4ede-97a8-a01b2e65779a', N'Autumn has come and the leaves are starting to fall.', N'Mùa thu đã đến và những chiếc lá bắt đầu rơi.', N'/dist/hp/audio/fall (2).MP3', CAST(0x0000A54F00BCF8C6 AS DateTime), N'93')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d6a2e88-0b19-427c-aad0-50d38e1acc67', N'I hurt my leg.', N'Tôi bị thương ở chân.', N'/dist/hp/audio/leg (1).MP3', CAST(0x0000A54F00BCFB3A AS DateTime), N'161')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d709684-de12-4ac2-8f30-75e9330e0e75', N'It''s not appropriate occasion to talk about this.', N'Bây giờ không phải là lúc thích hợp để nói chuyện này.', N'/dist/hp/audio/appropriate (1).MP3', CAST(0x0000A54F00BD0A19 AS DateTime), N'2029')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d9ee838-ef3c-42ed-8211-8908512cfd4f', N'What did you get for your birthday?', N'Bạn đã nhận được món quà gì vào ngày sinh nhật vậy?', N'/dist/hp/audio/get (2).MP3', CAST(0x0000A54F00BCF985 AS DateTime), N'114')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4d9fadda-9540-4760-8c5a-b2f5d61863a9', N'Can you make it clear?', N'Bạn có thể nói rõ hơn được không?', N'/dist/hp/audio/clear (1).MP3', CAST(0x0000A54F00BD02CE AS DateTime), N'372')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4dd65958-6605-4e7c-b932-ce80d126460d', N'What grade did you get?', N'Bạn được mấy điểm?', N'/dist/hp/audio/grade (1).MP3', CAST(0x0000A54F00BD0938 AS DateTime), N'1649')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4e19efc0-4f35-4fa9-ab18-9a9d8b91b1ba', N'He is a famous film star.', N'Ông ấy là một ngôi sao điện ảnh nổi tiếng.', N'/dist/hp/audio/star (1).MP3', CAST(0x0000A54F00BCFF1A AS DateTime), N'268')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4e5d5135-0171-40da-9f13-1d4e14f5e6e3', N'A volleyball team has 6 people.', N'Một đội bóng chuyền có 6 người.', N'/dist/hp/audio/six (1).MP3', CAST(0x0000A54F00BCFE9D AS DateTime), N'255')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4e820e7f-afed-4bdc-8b56-f633c8ce176b', N'They left here long time ago.', N'Họ đã rời khỏi đây cách nay lâu lắm rồi.', N'/dist/hp/audio/ago (1).MP3', CAST(0x0000A54F00BD0206 AS DateTime), N'350')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4ea5b054-277f-4544-b8dd-2687a9f0dd9c', N'There is a group of people coming towards him.', N'Có một nhóm người đang tiền về phía ông ấy.', N'/dist/hp/audio/group (1).MP3', CAST(0x0000A54F00BCF9BB AS DateTime), N'120')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4eb5d19c-59eb-4e72-843d-40d2b0af642c', N'I feel a sharp pain in my foot.', N'Tôi cảm thấy một cơn đau nhói ở chân.', N'/dist/hp/audio/foot (1).MP3', CAST(0x0000A54F00BCF928 AS DateTime), N'104')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4f3aede7-e280-4556-aa26-067d16018b20', N'He loved her but she loved another.', N'Anh ấy yêu cô nhưng cô lại yêu người khác rồi.', N'/dist/hp/audio/but (2).MP3', CAST(0x0000A54F00BCF6E8 AS DateTime), N'43')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4f607d89-032f-4389-a805-11106adcb88e', N'If I drink too much coffee, I won''t sleep.', N'Nếu tôi uống quá nhiều cà phê, tôi sẽ không ngủ được.', N'/dist/hp/audio/drink (2).MP3', CAST(0x0000A54F00BCF84C AS DateTime), N'80')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4f653337-345e-47cf-95f4-9335e176ea83', N'Zac escapes from his parents to go out.', N'Zac trốn ba mẹ để đi ra ngoài.', N'/dist/hp/audio/escape (1).MP3', CAST(0x0000A54F00BD078A AS DateTime), N'1602')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4f69723e-87c6-4d53-b869-d6face4a7ebf', N'Luke made many scientific discoveries.', N'Luke đã thực hiện nhiều cuộc khám phá khoa học.', N'/dist/hp/audio/discovery (1).MP3', CAST(0x0000A54F00BD0672 AS DateTime), N'1573')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4fa91f90-625b-4815-a769-3c97c37e1b32', N'She still looks very young.', N'Cô ấy trông còn rất trẻ tuổi.', N'/dist/hp/audio/young (1).MP3', CAST(0x0000A54F00BD01EC AS DateTime), N'347')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4fd52303-8687-4a23-9f0a-1cebe0e61717', N'Giving yourself challenges is a great way to improve all facets of your life.', N'Tự tạo cho mình những thách thức là cách tốt nhất để cải thiện những khía cạnh của cuộc sống.', N'/dist/hp/audio/challenge (2).MP3', CAST(0x0000A54F00BD0B08 AS DateTime), N'2053')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'4ffd8846-c27c-47a1-afa1-b15fb322bf6c', N'It takes three days to decorate my bedroom.', N'Phải mất ba ngày để trang trí phòng ngủ của tôi.', N'/dist/hp/audio/decorate (2).MP3', CAST(0x0000A54F00BD05BA AS DateTime), N'1554')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'500b5b25-d3d3-4242-bdaa-f281f0469710', N'Coins still exist to now.', N'Tiền xu vẫn còn tồn tại cho đến bây giờ.', N'/dist/hp/audio/exist (1).MP3', CAST(0x0000A54F00BD07BB AS DateTime), N'1607')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'508432e7-1f2e-4ab9-b66e-8f0d0d9af3c6', N'Justin is a very good employer.', N'Justin là một ông chủ rất tốt.', N'/dist/hp/audio/employer (1).MP3', CAST(0x0000A54F00BD0733 AS DateTime), N'1593')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'50ae0993-9b97-4f8a-89d4-a38c663d776b', N'Our team came in second in the competition.', N'Đội của chúng tôi đứng thứ hai trong cuộc thi.', N'/dist/hp/audio/team (2).MP3', CAST(0x0000A54F00BCFFB6 AS DateTime), N'285')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5104b2ed-1db0-48ea-83ee-64827843aa34', N'There is a gift for you!', N'Có quà cho cậu nè!', N'/dist/hp/audio/for (1).MP3', CAST(0x0000A54F00BCF930 AS DateTime), N'105')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5190f412-677b-47b2-8544-124774df6265', N'Henry spend hours watching comedy on the Internet.', N'Henry dành hàng giờ để xem hài kịch trên mạng.', N'/dist/hp/audio/comedy (2).MP3', CAST(0x0000A54F00BD0477 AS DateTime), N'1518')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'51f72b34-eac1-44ea-af34-2de1400b610c', N'I have a formal dinner.', N'Tôi có một bữa tối trang trọng.', N'/dist/hp/audio/formal (1).MP3', CAST(0x0000A54F00BD087E AS DateTime), N'1629')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'525a0a21-d463-4cc6-8bde-964b93e4b746', N'She wrapped a gift in blue paper.', N'Cô ấy gói một món quà bằng giấy màu xanh.', N'/dist/hp/audio/paper (1).MP3', CAST(0x0000A54F00BCFD1D AS DateTime), N'213')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'52732469-6631-4c3f-b01b-c55c4a0f40a7', N'Taylor Swift is a famous singer.', N'Taylor Swift là một ca sĩ nổi tiếng.', N'/dist/hp/audio/famous (1).MP3', CAST(0x0000A54F00BD03CB AS DateTime), N'400')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'527a9e64-f93b-4dce-b5e7-079d0b5cfd4e', N'Show me the difference between the two places.', N'Cho tôi biết sự khác nhau giữa hai nơi này.', N'/dist/hp/audio/difference (1).MP3', CAST(0x0000A54F00BD0635 AS DateTime), N'1567')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5296b9bb-83b7-4d40-b837-93cab7741e21', N'Life in the country has many difficulties.', N'Cuộc sống ở nông thôn có nhiều khó khăn.', N'/dist/hp/audio/difficulty (2).MP3', CAST(0x0000A54F00BD063F AS DateTime), N'1568')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'52a1ea4a-dc9e-49bc-8da6-67606406321d', N'Rachel has a desire to travel.', N'Rachel có mong muốn đó là đi du lịch.', N'/dist/hp/audio/desire (2).MP3', CAST(0x0000A54F00BD0603 AS DateTime), N'1562')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'52dd3857-5d47-473b-9ea9-e680139e4a2a', N'I want to analyze the details of that problem.', N'Tôi muốn phân tích chi những tiết của vấn đề đó.', N'/dist/hp/audio/detail (2).MP3', CAST(0x0000A54F00BD0616 AS DateTime), N'1564')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'52e58bfe-5b31-4303-ac0d-47ebf75801ab', N'They promise to deliver my letter within 24 hours.', N'Họ cam kết sẽ giao thư của tôi trong vòng 24 tiếng.', N'/dist/hp/audio/deliver (2).MP3', CAST(0x0000A54F00BD05D7 AS DateTime), N'1557')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'530a8473-513b-4f51-b57c-182732e007f2', N'Who is the president of Russia?', N'Ai là tổng thống của nước Nga?', N'/dist/hp/audio/who (2).MP3', CAST(0x0000A54F00BD015D AS DateTime), N'331')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'534a2c41-8e7c-4d84-8860-e5670431c302', N'It''s not an important characteristic.', N'Đó không phải là đặc trưng quan trọng.', N'/dist/hp/audio/characteristic (2).MP3', CAST(0x0000A54F00BD0B11 AS DateTime), N'2054')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'53552f5e-54ea-420e-95a4-df621d9870b5', N'Jack found the difference between two photos.', N'Jack đã tìm thấy điểm khác nhau giữa hai bức hình.', N'/dist/hp/audio/difference (2).MP3', CAST(0x0000A54F00BD0635 AS DateTime), N'1567')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'536fecae-2a60-4519-860d-efd31fcb2785', N'You should wash your hand before having meals.', N'Các con nên rửa tay trước khi ăn.', N'/dist/hp/audio/hand (2).MP3', CAST(0x0000A54F00BCF9E5 AS DateTime), N'125')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'539b49b5-adfd-454d-af3a-17296974ccb7', N'She clothes her daughter in the latest fashions.', N'Cô ấy mặc cho con gái mình những bộ đồ thời trang mới nhất.', N'/dist/hp/audio/clothe (2).MP3', CAST(0x0000A54F00BD02DF AS DateTime), N'374')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'53b91f70-c3f4-4fc2-b62d-11ed15d734d4', N'The expression on her face never changes. ', N'Biểu cảm trên khuôn mặt cô ấy không hề thay đổi.', N'/dist/hp/audio/face (1).MP3', CAST(0x0000A54F00BCF8BC AS DateTime), N'92')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'540679ec-8a23-43d8-a9a2-f6c8d52a4f85', N'Good communication is necessary.', N'Giao tiếp tốt là rất cần thiết.', N'/dist/hp/audio/communication (1).MP3', CAST(0x0000A54F00BD0493 AS DateTime), N'1521')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'54132d78-6903-4ffb-80cc-16865b46875f', N'Julia doesn''t realize the distance between her and him.', N'Julia không nhận ra khoảng cách giữa cô và anh ta.', N'/dist/hp/audio/distance (2).MP3', CAST(0x0000A54F00BD0693 AS DateTime), N'1576')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'54179ee2-5d7f-4217-96a2-c1c54735b6cb', N'Mia is writing a description of her favourite book.', N'Mia đang viết một bài miêu tả về quyển sách yêu thích của cô ấy.', N'/dist/hp/audio/description (2).MP3', CAST(0x0000A54F00BD05FA AS DateTime), N'1561')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5462aa6c-c648-4529-b6c6-aa75ff9564ff', N'We are at the same age.', N'Chúng tôi bằng tuổi nhau.', N'/dist/hp/audio/age (1).MP3', CAST(0x0000A54F00BCF587 AS DateTime), N'5')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5467e7c7-9cf8-4f89-b560-1d125f7bfb8f', N'She tried to copy the actresses'' hair.', N'Cô ấy đang cố gắng bắt chước kiểu tóc của các nữ diễn viên.', N'/dist/hp/audio/copy (1).MP3', CAST(0x0000A54F00BCF7A7 AS DateTime), N'62')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'548ba1d3-3a6c-413b-b914-5967fc8db83d', N'She has a kind heart.', N'Bà ấy có một trái tim nhân hậu.', N'/dist/hp/audio/heart (1).MP3', CAST(0x0000A54F00BCFA2C AS DateTime), N'132')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'54c0deee-f8c1-4654-86f5-519464c5a6f9', N'I would do all I can to assist your family.', N'Chị sẽ làm tất cả những gì có thể để giúp đỡ gia đình em.', N'/dist/hp/audio/assist (1).MP3', CAST(0x0000A54F00BD0A36 AS DateTime), N'2032')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'54e9f518-01e8-4424-9e8c-787ee22853b8', N'This soil is very dry.', N'Đất này rất khô.', N'/dist/hp/audio/dry (1).MP3', CAST(0x0000A54F00BCF855 AS DateTime), N'81')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'54ff796a-d3ca-49fb-9521-fdc0bcbb5b3d', N'Oliver is unemployed.', N'Oliver đang thất nghiệp.', N'/dist/hp/audio/unemployed (1).MP3', CAST(0x0000A54F00BD0720 AS DateTime), N'1591')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'55042de4-5740-4c4b-988b-7125f2c84da6', N'I want to join in a voluntary association.', N'Em muốn tham gia vào hội tình nguyện.', N'/dist/hp/audio/association (1).MP3', CAST(0x0000A54F00BD0A4A AS DateTime), N'2034')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5527f37c-d824-4397-887b-e9b69215bd49', N'His arm is broken.', N'Tay của anh ta đã bị gãy.', N'/dist/hp/audio/arm (2).MP3', CAST(0x0000A54F00BCF5BE AS DateTime), N'11')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5546d494-3b24-44be-98f8-36343fc17c14', N'Do you fear death?', N'Các bạn có sợ cái chết không?', N'/dist/hp/audio/death (1).MP3', CAST(0x0000A54F00BCF7FA AS DateTime), N'71')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'557922fb-fd24-4467-879c-9f7589502adb', N'Her parents are living in Texas.', N'Bố mẹ cô ấy đang sống ở bang Texas.', N'/dist/hp/audio/her (1).MP3', CAST(0x0000A54F00BCFA3F AS DateTime), N'134')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'55b0d30b-36fd-4eef-8140-86ec044e2d09', N'My friend gives me a fur coat.', N'Bạn tôi cho tôi một cái áo lông thú.', N'/dist/hp/audio/fur (1).MP3', CAST(0x0000A54F00BD08D0 AS DateTime), N'1638')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'55b33e20-8e8b-4b80-a55c-0f1d99bff4e1', N'This is the best song I have ever heard.', N'Đây là bài hát tuyệt nhất mà tôi từng nghe.', N'/dist/hp/audio/song (2).MP3', CAST(0x0000A54F00BCFEE8 AS DateTime), N'263')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'55d89a73-0b9c-4e64-976f-329dc5eca439', N'Nancy wears a formal dress for the party.', N'Nancy mặc một bộ váy trang trọng để đi tiệc.', N'/dist/hp/audio/formal (2).MP3', CAST(0x0000A54F00BD087E AS DateTime), N'1629')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'56662672-f1fa-41fe-b23b-b945547747fc', N'Learning a new language is a continuous progress.', N'Việc học một ngôn ngữ mới là một quá trình liên tục.', N'/dist/hp/audio/continuous (2).MP3', CAST(0x0000A54F00BD051E AS DateTime), N'1537')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'566633db-c2ee-49f7-9b05-f898cdb80e77', N'I would like to meet you as soon as possible.', N'Anh muốn gặp em ngay khi có thể.', N'/dist/hp/audio/meet (2).MP3', CAST(0x0000A54F00BCFBE2 AS DateTime), N'179')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'566b1941-5858-4b49-ab1e-55ae5f646d92', N'This project was slower than expected.', N'Dự án này đã chậm hơn dự tính rồi.', N'/dist/hp/audio/slow (2).MP3', CAST(0x0000A54F00BCFEC2 AS DateTime), N'259')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'573ea197-51ba-4744-a025-1d7ee65efc41', N'Angus has a muscled chest.', N'Angus có bộ ngực vạm vỡ.', N'/dist/hp/audio/chest (2).MP3', CAST(0x0000A54F00BD0427 AS DateTime), N'1509')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'576255e1-e639-459b-9dd1-c1b9c4fc4807', N'It is probable that she is not home.', N'Có thể là cô ấy không ở nhà.', N'/dist/hp/audio/probable (1).MP3', CAST(0x0000A54F00BD0941 AS DateTime), N'2011')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'57646663-c4d9-4d1a-9d64-bae7315f1acb', N'This clock has broken, you should buy a new one.', N'Cái đồng hồ này hỏng rồi, anh nên mua một cái mới thôi.', N'/dist/hp/audio/new (2).MP3', CAST(0x0000A54F00BCFC78 AS DateTime), N'195')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'578928f3-e20b-4fed-952c-343a7e6aa79b', N'I''m very tired so I just want to stay in my bed.', N'Tôi rất mệt vì vậy tôi chỉ muốn nằm trên giường thôi.', N'/dist/hp/audio/stay (2).MP3', CAST(0x0000A54F00BCFF2C AS DateTime), N'270')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'57adb719-a780-412b-ab5d-a3f5ea6d4eb6', N'He has blue eyes.', N'Anh ta có đôi mắt màu xanh.', N'/dist/hp/audio/blue (2).MP3', CAST(0x0000A54F00BCF67B AS DateTime), N'31')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'57bc4f73-190d-44f0-955f-dd6340020f7a', N'Let me tell you briefly what he said.', N'Để tôi nói cho anh ngắn gọn những gì ông ấy đã nói.', N'/dist/hp/audio/briefly (2).MP3', CAST(0x0000A54F00BD0AA5 AS DateTime), N'2042')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'57f8ddf0-9264-4871-a9de-cff3568e1030', N'Brian has 9 apples.', N'Brian có 9 quả táo.', N'/dist/hp/audio/nine (1).MP3', CAST(0x0000A54F00BCFC93 AS DateTime), N'198')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'580592af-d3b6-4af5-92a8-d10a7c3e78c5', N'His father passed away when he was eight.', N'Ba nó qua đời khi nó tròn 8 tuổi.', N'/dist/hp/audio/eight (2).MP3', CAST(0x0000A54F00BCF886 AS DateTime), N'86')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'581930af-2d95-410c-9cb3-0b53248baa09', N'Give me the key on the shelf.', N'Đưa cho tôi cái chìa khóa ở trên kệ.', N'/dist/hp/audio/on (2).MP3', CAST(0x0000A54F00BCFCF0 AS DateTime), N'208')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'583a68c6-6fbc-4234-9b0d-6b59af432c8d', N'Will you sing a song to us?', N'Anh có thể hát cho chúng tôi một bài được không?', N'/dist/hp/audio/sing (1).MP3', CAST(0x0000A54F00BCFE82 AS DateTime), N'252')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5899e2f3-e1aa-4e4e-99a1-f586ec02d6d8', N'RMIT university has good facilities.', N'Trường đại học RMIT có cơ sở vật chất tốt.', N'/dist/hp/audio/facility (1).MP3', CAST(0x0000A54F00BD080A AS DateTime), N'1616')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'58af6c51-6814-430d-a4b8-e3ac36370f5e', N'Victoria was such successful because she has essential skills.', N'Victoria thành công như vậy là bởi vì cô ấy có những kĩ năng cần thiết.', N'/dist/hp/audio/essential (2).MP3', CAST(0x0000A54F00BD0794 AS DateTime), N'1603')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'58c8ba51-4387-4aa6-b49e-d2cd02b3b5e8', N'Nam is the captain of the football team.', N'Nam là đội trưởng của một đội bóng đá.', N'/dist/hp/audio/team (1).MP3', CAST(0x0000A54F00BCFFB6 AS DateTime), N'285')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'58ca9b15-611f-4aa3-8a8a-b7b8a8989680', N'We are going to climb a mountain next week.', N'Chúng tôi sẽ đi leo núi vào tuần sau.', N'/dist/hp/audio/climb (2).MP3', CAST(0x0000A54F00BD02D7 AS DateTime), N'373')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'58fe76db-ee81-4e04-8542-d39fb2f1b117', N'The first edition of the novel is in 2003.', N'Ấn bản đầu tiên của quyển tiểu thuyết vào năm 2003.', N'/dist/hp/audio/edition (1).MP3', CAST(0x0000A54F00BD06D6 AS DateTime), N'1583')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5990a554-016f-4950-b794-585baa91da6a', N'The dog disappeared for two weeks.', N'Con chó biến mất hai tuần nay.', N'/dist/hp/audio/disappear (2).MP3', CAST(0x0000A54F00BD065D AS DateTime), N'1571')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'59f57e54-b76b-40e6-9e87-98bc6733bf77', N'Hayden is quite generous with me.', N'Hayden khá hào phóng với tôi.', N'/dist/hp/audio/generous (2).MP3', CAST(0x0000A54F00BD08F4 AS DateTime), N'1642')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5a075ce1-51b1-4521-bd6f-34980a4bd062', N'Her eldest child is nearly 6.', N'Đứa con nhỏ nhất của cô ấy cũng gần 6 tuổi.', N'/dist/hp/audio/child (2).MP3', CAST(0x0000A54F00BCF7D5 AS DateTime), N'67')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5a17fd1f-376e-4a5e-8230-eecf65a5468e', N'Can you see the bright stars in the sky?', N'Anh có nhìn thấy những ngôi sao sáng trên bầu trời kia không?', N'/dist/hp/audio/sky (2).MP3', CAST(0x0000A54F00BCFEB0 AS DateTime), N'257')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5a79b5b2-677a-43cd-8b97-1db24385485e', N'He really loves animal.', N'Anh ấy rất yêu động vật.', N'/dist/hp/audio/animal (1).MP3', CAST(0x0000A54F00BCF5AB AS DateTime), N'9')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5a9e1e08-b6e8-4ad3-87af-3a8733c13b25', N'He considers in making a final decision.', N'Anh ta đang cân nhắc để đưa ra quyết định cuối cùng.', N'/dist/hp/audio/final (2).MP3', CAST(0x0000A54F00BCF8EB AS DateTime), N'97')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5aa943ff-92b2-458c-8a01-07999632f318', N'He was at the top of his class.', N'Cậu ta đứng nhất lớp.', N'/dist/hp/audio/class (1).MP3', CAST(0x0000A54F00BCF74E AS DateTime), N'53')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5ae1bdc8-f02c-4034-a400-3e4b91d69943', N'This is a big achievement.', N'Đây là một thành tích lớn.', N'/dist/hp/audio/achievement (2).MP3', CAST(0x0000A54F00BD0998 AS DateTime), N'2019')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5af1dd7d-93df-4167-9850-74658dd43cb4', N'Jake goes swimming twice a week.', N'Jake đi bơi 2 lần một tuần.', N'/dist/hp/audio/swim (2).MP3', CAST(0x0000A54F00BCFF7F AS DateTime), N'279')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5bce3c80-924e-4df4-bd7d-4e2fefba1ea9', N'Do you know how to communicate with your hands?', N'Bạn có biết cách giao tiếp bằng tay không?', N'/dist/hp/audio/communicate (2).MP3', CAST(0x0000A54F00BD048A AS DateTime), N'1520')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5c66fb0d-55c8-421d-b582-aa74f62365f1', N'Spring, summer, autumn, and winter are a circle of all things.', N'Bốn mùa xuân, hạ, thu, đông là một chu kì của vạn vật.', N'/dist/hp/audio/circle (2).MP3', CAST(0x0000A54F00BD02BC AS DateTime), N'370')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5c68b147-7e95-446b-9018-45930e41a253', N'I wonder where I can find true love.', N'Tôi tự hỏi rằng tôi có thể tìm được tình yêu đích thực ở nơi đâu.', N'/dist/hp/audio/love (1).MP3', CAST(0x0000A54F00BCFB8C AS DateTime), N'170')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5c7740f4-9d87-4c2e-8849-1082fbaab41a', N'Where do you work?', N'Anh làm việc ở đâu vậy? ', N'/dist/hp/audio/do (1).MP3', CAST(0x0000A54F00BCF80D AS DateTime), N'73')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5c7f6b40-b5a2-4646-b3df-b7f83dd9f76c', N'My husband shares the cooking duties with me.', N'Chồng tôi chia sẻ nhiệm vụ nấu ăn với tôi.', N'/dist/hp/audio/duty (2).MP3', CAST(0x0000A54F00BD06BB AS DateTime), N'1580')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5c8087ba-1891-4f06-8ea7-ddef0f3e22bc', N'One plus one is equal to two.', N'Một cộng một bằng hai.', N'/dist/hp/audio/equal (1).MP3', CAST(0x0000A54F00BD03B8 AS DateTime), N'398')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5cde71ce-dedb-4ba1-b14f-903668440583', N'Christina couldn''t stopping coughing.', N'Christina cứ ho hoài.', N'/dist/hp/audio/cough (2).MP3', CAST(0x0000A54F00BD0538 AS DateTime), N'1540')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5cedc8e6-b71b-4720-a127-dbaf32ba714e', N'How do you avoid the budget deficit?', N'Làm thế nào để tránh thâm hụt ngân sách?', N'/dist/hp/audio/budget (1).MP3', CAST(0x0000A54F00BD0AC1 AS DateTime), N'2045')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5d1d9296-22c2-475e-989d-babf653d9467', N'I just want to sit in front of a calm sea right now.', N'Ngay lúc này tôi chỉ muốn ngồi trước mặt biển êm đềm.', N'/dist/hp/audio/calm (1).MP3', CAST(0x0000A54F00BD0ADB AS DateTime), N'2048')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5d26bdc1-d30f-4731-b24d-4c18c91a0ebc', N'The probable cause of accident is not define.', N'Nguyên nhân có thể của vụ tai nạn chưa xác định được.', N'/dist/hp/audio/probable (2).MP3', CAST(0x0000A54F00BD0941 AS DateTime), N'2011')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5d30a13b-aa99-4f01-9839-826060fc2ebe', N'Her clerk has been off for 2 days.', N'Thư ký của bà ấy đã nghỉ việc 2 ngày nay.', N'/dist/hp/audio/clerk (1).MP3', CAST(0x0000A54F00BD0B54 AS DateTime), N'2059')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5d54bd05-0795-43b0-8595-f351e1b1f95f', N'There is nothing to cry about.', N'Không việc gì phải khóc cả.', N'/dist/hp/audio/cry (2).MP3', CAST(0x0000A54F00BCF7B9 AS DateTime), N'64')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5da1d6e2-cf05-4447-8108-7a01fd2bea17', N'I have to say I am terribly sorry about this .', N'Tôi phải nói rẳng tôi rất lấy làm tiếc về chuyện này.', N'/dist/hp/audio/say (2).MP3', CAST(0x0000A54F00BCFE00 AS DateTime), N'238')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5dafa746-3922-4d17-b7d1-03785a9d4429', N'Shortness is a family characteristic of her.', N'Nét đặc trưng của gia đình cô ấy là không được cao.', N'/dist/hp/audio/characteristic (1).MP3', CAST(0x0000A54F00BD0B11 AS DateTime), N'2054')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5e3e5e06-9b14-4c8d-ae4a-be31a4c50346', N'Her house is near the sea.', N'Nhà của bà ấy nằm gần biển.', N'/dist/hp/audio/house (1).MP3', CAST(0x0000A54F00BCFA97 AS DateTime), N'143')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5e8f018b-84af-4103-8662-66557dcfcc4c', N'I have a happy and free life.', N'Tôi có một cuộc sống hạnh phúc và tự do.', N'/dist/hp/audio/free (1).MP3', CAST(0x0000A54F00BCF943 AS DateTime), N'107')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5e9e2c9a-cfa8-45a8-872d-aaa149b64d71', N'She never wins at swimming. ', N'Cô không bao giờ thắng giải bơi lội.', N'/dist/hp/audio/win (1).MP3', CAST(0x0000A54F00BD0188 AS DateTime), N'336')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5ee5d666-e025-40c7-8b2f-e9eb4af421e9', N'The conclusion of the story made me disappointed.', N'Phần kết của câu chuyện làm tôi thật thất vọng.', N'/dist/hp/audio/conclusion (1).MP3', CAST(0x0000A54F00BD04CF AS DateTime), N'1528')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5ef7b7d0-e0f5-4132-a13d-ff591ae4ac2e', N'Take off your coat and hang up the hook on the wall.', N'Hãy cởi áo khoác của anh ra và treo lên cái móc trên tường.', N'/dist/hp/audio/coat (2).MP3', CAST(0x0000A54F00BD02E8 AS DateTime), N'375')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5f758a22-912b-4776-9261-8827af280799', N'What do you want to do tomorrow?', N'Ngày mai bạn muốn làm gì?', N'/dist/hp/audio/want (1).MP3', CAST(0x0000A54F00BD00DC AS DateTime), N'317')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5f88f553-be15-445d-bcad-dc0cfa0c79fa', N'It''s very convenient for you to get to the airport.', N'Đường đến sân bay rất thuận tiện cho ông.', N'/dist/hp/audio/convenient (1).MP3', CAST(0x0000A54F00BD0527 AS DateTime), N'1538')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5fbb4df4-63d1-44ff-8390-4f2d616dde63', N'Could you please spell your name?', N'Vui lòng đánh vần tên của anh được không?', N'/dist/hp/audio/spell (1).MP3', CAST(0x0000A54F00BCFEFC AS DateTime), N'265')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'5fdd32fa-f90d-4a51-8896-7bbcb0209894', N'We only have female employees.', N'Chúng tôi chỉ có nhân công nữ.', N'/dist/hp/audio/employee (2).MP3', CAST(0x0000A54F00BD072A AS DateTime), N'1592')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6024c62a-5c73-4608-92ff-5e4a20777dec', N'Can you dance a tango?', N'Em có thể nhảy điệu tăng-gô không?', N'/dist/hp/audio/dance (2).MP3', CAST(0x0000A54F00BCF7E6 AS DateTime), N'69')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'604a1901-bc0a-45ec-b6b0-fc918c0b473e', N'I fly on Monday.', N'Tôi bay vào thứ Hai.', N'/dist/hp/audio/fly (2).MP3', CAST(0x0000A54F00BCF915 AS DateTime), N'102')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'608e15d4-8dd9-4c2a-8c2e-56c1aee829c3', N'My friend is so cute.', N'Bạn tôi dễ thương lắm.', N'/dist/hp/audio/friend (1).MP3', CAST(0x0000A54F00BCF94B AS DateTime), N'108')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'61333054-ad47-4d8a-abae-77b8cc66a155', N'Scientists made a new discovery.', N'Các nhà khoa học đã thực hiện một cuộc khám phá mới.', N'/dist/hp/audio/discovery (2).MP3', CAST(0x0000A54F00BD0672 AS DateTime), N'1573')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'614521ef-0eac-40a2-81d2-9ba6fce77d90', N'He speaks really slowly.', N'Ông ta nói rất chậm.', N'/dist/hp/audio/speak (1).MP3', CAST(0x0000A54F00BCFEF1 AS DateTime), N'264')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'617bea8e-e758-4198-91c5-9886884bd1c4', N'I want to stay in your arms. ', N'Em muốn ở trong vòng tay anh.', N'/dist/hp/audio/arm (1).MP3', CAST(0x0000A54F00BCF5BE AS DateTime), N'11')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'61b690be-639d-4270-a180-19f9ec9300fd', N'Sarah coughs all night.', N'Sarah ho cả đêm.', N'/dist/hp/audio/cough (1).MP3', CAST(0x0000A54F00BD0538 AS DateTime), N'1540')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'61f5135d-2e79-4edc-b25e-4e0aa042f21e', N'I will help you lift this box.', N'Tôi sẽ giúp anh nâng cái hộp này lên.', N'/dist/hp/audio/help (2).MP3', CAST(0x0000A54F00BCFA35 AS DateTime), N'133')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'61ff59d1-124f-4d2f-938e-794201073957', N'I have nobody to play with.', N'Con chẳng có ai để chơi chung cả.', N'/dist/hp/audio/play (2).MP3', CAST(0x0000A54F00BCFD5E AS DateTime), N'220')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'620fca59-dd17-46f1-ba6a-eb69dd7b0846', N'There are nine horses on the race.', N'Có 9 con ngựa trên đường đua.', N'/dist/hp/audio/horse (2).MP3', CAST(0x0000A54F00BCFA7C AS DateTime), N'140')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6216fc95-6179-420c-a8dc-f37b46895b19', N'What is the size of that shirt?', N'Cái áo này cỡ gì vậy?', N'/dist/hp/audio/size (1).MP3', CAST(0x0000A54F00BCFEA6 AS DateTime), N'256')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'621d1628-346d-40b2-be9b-765a0046d207', N'Demand for the iphone has risen sharply.', N'Nhu cầu dùng iphone tăng mạnh.', N'/dist/hp/audio/demand (1).MP3', CAST(0x0000A54F00BD05E0 AS DateTime), N'1558')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'624c4098-0372-41ad-b950-630044864bcb', N'Maria is having difficulty with the homework.', N'Maria đang gặp khó khăn với bài tập về nhà.', N'/dist/hp/audio/difficulty (1).MP3', CAST(0x0000A54F00BD063F AS DateTime), N'1568')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6296d3aa-88f5-4f63-8563-0b4d9e8daad4', N'There are many flowers in their garden.', N'Vườn nhà họ có rất nhiều loại hoa.', N'/dist/hp/audio/their (1).MP3', CAST(0x0000A54F00BD000B AS DateTime), N'294')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'629c710c-0a51-48bf-8ebe-b3cebeede7d2', N'She looked around for a familiar face.', N'Cô ấy tìm kiếm xung quanh một gương mặt thân quen.', N'/dist/hp/audio/face (2).MP3', CAST(0x0000A54F00BCF8BC AS DateTime), N'92')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'62d04ea9-0cd7-43fa-b6e9-80a0c57d17e8', N'Shortly afterwards he left.', N'Không lâu sau đó anh ta cũng rời khỏi.', N'/dist/hp/audio/afterwards (2).MP3', CAST(0x0000A54F00BD09C4 AS DateTime), N'2022')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'62dfbb84-d41d-471c-ad0f-287d6f2af553', N'I can watch the trains going by from this window.', N'Tôi có thể nhìn thấy đoàn tàu đi qua từ cửa sổ.', N'/dist/hp/audio/watch (1).MP3', CAST(0x0000A54F00BD00F8 AS DateTime), N'320')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'62fe8fa8-e3ce-471f-8418-c9347e9c0818', N'I kept to the ring he gave me.', N'Tôi đã luôn giữ chiếc nhẫn mà anh ấy đã tặng tôi.', N'/dist/hp/audio/keep (1).MP3', CAST(0x0000A54F00BCFAD5 AS DateTime), N'150')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6342e8f2-21a5-4983-a77f-4f3bab3df07c', N'My flight is canceled.', N'Chuyến bay của tôi đã bị hủy.', N'/dist/hp/audio/flight (2).MP3', CAST(0x0000A54F00BD0863 AS DateTime), N'1626')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'634352ac-16a0-4ec5-b9ea-381c97c527a4', N'They will get married in the end of this year.', N'Cuối năm nay họ sẽ làm đám cưới.', N'/dist/hp/audio/end (1).MP3', CAST(0x0000A54F00BCF88F AS DateTime), N'87')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'635f4d3f-c635-4eb5-aef7-1dceb1c40c28', N'A boy is hiding under the table.', N'Thằng bé đang trốn dưới cái bàn.', N'/dist/hp/audio/under (1).MP3', CAST(0x0000A54F00BD008A AS DateTime), N'308')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'63739c17-e5ce-4af4-baed-d78bcca3937d', N'All of my friends will come to my birthday party.', N'Tất cả các bạn của tôi sẽ đến dự buổi tiệc sinh nhật tôi.', N'/dist/hp/audio/all (1).MP3', CAST(0x0000A54F00BCF59A AS DateTime), N'7')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'63b72352-f0db-4457-bd41-4d5f3c6e1a6c', N'This is a closed economy.', N'Đây là một nền kinh tế khép kín.', N'/dist/hp/audio/closed (1).MP3', CAST(0x0000A54F00BD044A AS DateTime), N'1513')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'63eab567-d325-4523-8f0a-ac9dff0538d8', N'A mother''s love is the best love in the world.', N'Tính yêu của mẹ là tình yêu vĩ đại nhất trên thế gian này.', N'/dist/hp/audio/love (2).MP3', CAST(0x0000A54F00BCFB8C AS DateTime), N'170')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'646914d3-8b24-4b08-9845-5c2649892683', N'The Sun rises in the east.', N'Mặt Trời mọc ở hướng đông.', N'/dist/hp/audio/east (1).MP3', CAST(0x0000A54F00BD03B0 AS DateTime), N'397')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'64d47125-d4ce-4d3d-a7bb-58f6f927bfd9', N'I talked to the secretary of the committee.', N'Tôi đã nói chuyện với cô thư ký ở ủy ban.', N'/dist/hp/audio/committee (2).MP3', CAST(0x0000A54F00BD0480 AS DateTime), N'1519')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'65d1b0d2-9573-4150-b386-182f3b7178fb', N'The cupboard is full of papers.', N'Tủ đầy giấy.', N'/dist/hp/audio/cupboard (1).MP3', CAST(0x0000A54F00BD0582 AS DateTime), N'1548')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'65db0f46-ceb9-431b-8caa-711ffa091d45', N'I''m wondering whether to continue or stop.', N'Tôi đang tự hỏi liệu có nên tiếp tục hay dừng lại đây.', N'/dist/hp/audio/whether (2).MP3', CAST(0x0000A54F00BD094A AS DateTime), N'2012')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'65dfa0d7-4488-47a3-aa62-5f6005e6afca', N'His achievement is so admirable.', N'Thành tích của anh ta thật đáng nể.', N'/dist/hp/audio/achievement (1).MP3', CAST(0x0000A54F00BD0998 AS DateTime), N'2019')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'65f5407a-8e5f-409c-b19d-d4ce7d045847', N'She is writing on the board.', N'Cô ấy đang viết lên tấm bảng.', N'/dist/hp/audio/board (1).MP3', CAST(0x0000A54F00BCF683 AS DateTime), N'32')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6613f722-0157-45a3-818c-8304427d9901', N'She teaches at a secondary school.', N'Cô ấy dạy tại một trường cấp 2.', N'/dist/hp/audio/school (1).MP3', CAST(0x0000A54F00BCFE12 AS DateTime), N'240')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'663cac4c-690d-43e3-87d3-95dafd2d4d6d', N'I am still living with my parents.', N'Tôi vẫn sống chung với cha mẹ.', N'/dist/hp/audio/parent (1).MP3', CAST(0x0000A54F00BCFD27 AS DateTime), N'214')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6674a791-d2fa-4e82-9230-0b91d414c769', N'The most famous cat in the world is Hello Kitty.', N'Nàng mèo nổi tiếng nhất thế giới là Hello Kitty.', N'/dist/hp/audio/cat (2).MP3', CAST(0x0000A54F00BCF733 AS DateTime), N'50')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'66ea41fc-24d1-4afa-ac58-0995e2d54f81', N'Don''t miss the chance.', N'Đừng bỏ lỡ cơ hội.', N'/dist/hp/audio/miss (1).MP3', CAST(0x0000A54F00BCFBFE AS DateTime), N'182')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'66f5846e-2359-4026-996f-53f36c7ceadc', N'This product has been tested on animals.', N'Sản phẩm này đã được thử nghiệm trên một số động vật.', N'/dist/hp/audio/animal (2).MP3', CAST(0x0000A54F00BCF5AB AS DateTime), N'9')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'672627c0-c8c7-479f-bc16-1173c7b7f9b2', N'She doesn''t know where he live.', N'Cô ấy không biết anh ta sống ở đâu.', N'/dist/hp/audio/where (2).MP3', CAST(0x0000A54F00BD0140 AS DateTime), N'328')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'67a41732-02c9-4db9-8277-23904c1da5e0', N'I will lend you money.', N'Tôi sẽ cho anh mượn tiền.', N'/dist/hp/audio/money (1).MP3', CAST(0x0000A54F00BCFC06 AS DateTime), N'183')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'67cbc0d9-b8d3-4b18-b96e-c2a5e681df87', N'Flood has destroyed hundreds of houses.', N'Lũ lụt đã phá hủy hàng trăm căn nhà.', N'/dist/hp/audio/destroy (1).MP3', CAST(0x0000A54F00BD060D AS DateTime), N'1563')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'680c9754-1313-4d5a-864b-40e6bda38bb5', N'It''s hard to sell 1,000 tickets.', N'Thật khó để bán được 1.000 vé.', N'/dist/hp/audio/sell (1).MP3', CAST(0x0000A54F00BCFE39 AS DateTime), N'244')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'681a7b3f-6000-4310-9df4-59bc90fa4296', N'Water pollution have many effects on our life.', N'Ô nhiễm nguồn nước ảnh hưởng rất nhiều đến đời sống.', N'/dist/hp/audio/water (2).MP3', CAST(0x0000A54F00BD0101 AS DateTime), N'321')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'686c8e57-6ad5-4689-b625-76e3b5d53855', N'He drives a red sport car.', N'Anh ta lái chiếc xe hơi thể thao màu đỏ.', N'/dist/hp/audio/red (2).MP3', CAST(0x0000A54F00BCFDA5 AS DateTime), N'228')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'68770c24-9176-4cc6-b390-e2a899f9f782', N'Oscar has his own movie firm.', N'Oscar có hãng phim của riêng mình.', N'/dist/hp/audio/firm (1).MP3', CAST(0x0000A54F00BD0851 AS DateTime), N'1624')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'688ca08d-04a9-4d7c-9e72-f9215bf09c36', N'Jacob starts on the construction of the new building.', N'Jacob bắt đầu việc xây dựng tòa nhà mới.', N'/dist/hp/audio/construction (2).MP3', CAST(0x0000A54F00BD04F3 AS DateTime), N'1532')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'68db3ba6-1584-4e78-bf82-a083b8259109', N'You''ve spelt my name wrong.', N'Anh đánh vần sai tên tôi rồi.', N'/dist/hp/audio/spell (2).MP3', CAST(0x0000A54F00BCFEFC AS DateTime), N'265')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'68e9838d-ea65-40c8-a6a6-137a0065f29e', N'He is the manager of this bank.', N'Ông ta là giàm đốc ngân hàng này.', N'/dist/hp/audio/bank (2).MP3', CAST(0x0000A54F00BCF61B AS DateTime), N'21')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'68fa030c-9ff3-4d4f-8c17-4f66ec2a7f8f', N'He has 3 boys.', N'Ông ấy có 3 người con trai.', N'/dist/hp/audio/boy (1).MP3', CAST(0x0000A54F00BCF6A8 AS DateTime), N'36')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'690fd7b2-cc1c-4630-a205-e117af2f8736', N'He lives alone in a large house.', N'Anh ấy sống một mình trong một ngôi nhà rộng lớn.', N'/dist/hp/audio/large (1).MP3', CAST(0x0000A54F00BCFB14 AS DateTime), N'157')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'69185b11-7dfc-464b-b8e9-2e2d18210ea5', N'The book was translated by a well-known author.', N'Cuốn sách này được dịch bởi một tác giả nổi tiếng.', N'/dist/hp/audio/by (2).MP3', CAST(0x0000A54F00BCF6FA AS DateTime), N'45')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'691d7c8a-8dfe-4bbc-bddc-ee67c00fd709', N'Maria''s ​eyes are her ​best feature.', N'Đôi mắt của Maria là điểm đặc biệt nhất.', N'/dist/hp/audio/feature (2).MP3', CAST(0x0000A54F00BD0835 AS DateTime), N'1621')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6925c4f2-8698-49f2-9f4e-78ea8a0780dd', N'He has to write a report with 2,000 words.', N'Anh ta phải viết một bài báo cáo với khoảng 2.000 từ.', N'/dist/hp/audio/word (2).MP3', CAST(0x0000A54F00BD01B6 AS DateTime), N'341')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'69431bc3-06a7-4243-8008-43082ed0a1ad', N'I want to be an editor.', N'Con muốn trở thành một biên tập viên.', N'/dist/hp/audio/editor (1).MP3', CAST(0x0000A54F00BD06E0 AS DateTime), N'1584')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6a1b216e-0702-4008-9807-27ff1ce010e1', N'We founded a charity to help the poor.', N'Chúng tôi thành lập một quỹ từ thiện để giúp đỡ những người nghèo.', N'/dist/hp/audio/charity (1).MP3', CAST(0x0000A54F00BD0B1B AS DateTime), N'2055')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6acea659-374c-4499-a360-d92f0ad44bfe', N'I come from a poor family.', N'Tôi xuất thân từ một gia đình nghèo khó.', N'/dist/hp/audio/poor (1).MP3', CAST(0x0000A54F00BCFD6F AS DateTime), N'222')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6ad0939e-d5c2-452e-a4ac-33e7e283e699', N'Have you ever read the work called "The old man and the sea"?', N'Bạn đã từng đọc tác phẩm "Ông già và biển cả" chưa?', N'/dist/hp/audio/sea (2).MP3', CAST(0x0000A54F00BCFE1B AS DateTime), N'241')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6ad29d05-ca1d-4ccc-9495-2963293ae0f0', N'We have no doubt on Destiny.', N'Chúng tôi không có nghi ngờ gì về Destiny.', N'/dist/hp/audio/doubt (1).MP3', CAST(0x0000A54F00BD06A7 AS DateTime), N'1578')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6ad3d7cd-0421-4926-bf87-f2e58bb8263a', N'I would like a table for four.', N'Tôi muốn một bàn cho bốn người.', N'/dist/hp/audio/four (1).MP3', CAST(0x0000A54F00BCF939 AS DateTime), N'106')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6b22b85f-05e8-4304-a4f3-4d503417b2ef', N'I learned to ride a motorbike when I was 18.', N'Tôi học lái xe máy lúc 18 tuổi.', N'/dist/hp/audio/ride (2).MP3', CAST(0x0000A54F00BCFDC1 AS DateTime), N'231')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6b4d7899-3950-45f1-b4cb-6c77e41889df', N'We need some more chairs.', N'Chúng ta cần vài cái ghế nữa.', N'/dist/hp/audio/chair (2).MP3', CAST(0x0000A54F00BCF7CC AS DateTime), N'66')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6b6239fd-165c-4c8f-95c4-1d34170338a6', N'Do you have a dictionary?', N'Anh có quyển từ điển nào không?', N'/dist/hp/audio/have (2).MP3', CAST(0x0000A54F00BCFA08 AS DateTime), N'129')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6b687be0-c704-4561-8ed9-9cc61ad5418c', N'She washes the dishes after she has dinner.', N'Bà ấy rửa những cái đĩa sau khi ăn tối.', N'/dist/hp/audio/wash (2).MP3', CAST(0x0000A54F00BD00EF AS DateTime), N'319')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6bb66cbe-a9ae-4513-b2af-39cf6892d83a', N'There are several factors that you couldn''t know.', N'Có một vài nhân tố bạn không thể biết được.', N'/dist/hp/audio/factor (2).MP3', CAST(0x0000A54F00BD0813 AS DateTime), N'1617')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6bda8ff4-24c6-4cb2-964e-4afe605fa66e', N'I have one sister and one younger brother.', N'Tôi có một chị gái và một em trai. ', N'/dist/hp/audio/brother (2).MP3', CAST(0x0000A54F00BCF6CD AS DateTime), N'40')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6bf0df8d-486a-4987-bb01-c85b594709b5', N'I found my true love.', N'Tôi đã tìm thấy tình yêu đích thực của đời mình.', N'/dist/hp/audio/true (1).MP3', CAST(0x0000A54F00BD01F5 AS DateTime), N'348')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6cb6107c-5cde-49b7-9769-5c0be4a08238', N'Everybody is in bed except her.', N'Mọi người đều đã lên giường ngoại trừ cô ấy.', N'/dist/hp/audio/bed (1).MP3', CAST(0x0000A54F00BCF643 AS DateTime), N'25')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6cb93259-1af4-45ba-9a08-abe5be760cb6', N'She has short hair and brown eyes.', N'Cô ấy có một mái tóc ngắn và đôi mắt màu nâu.', N'/dist/hp/audio/short (1).MP3', CAST(0x0000A54F00BCFE70 AS DateTime), N'250')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6cc6c90c-7162-40b0-a711-a0f8abac42e2', N'Liam will replace the old chairman.', N'Liam sẽ thay thế chủ tịch cũ.', N'/dist/hp/audio/chairman (1).MP3', CAST(0x0000A54F00BD03F0 AS DateTime), N'1503')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6cffec7e-5225-40b0-8e54-5cd4e0b8ba4a', N'Penguins are a flightless birds. ', N'Chim cánh cụt là một loài chim không biết bay.', N'/dist/hp/audio/bird (1).MP3', CAST(0x0000A54F00BCF667 AS DateTime), N'29')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6d0cb384-1d7e-4be0-ac01-df0070679421', N'What is the custom of your country for New Year?', N'Phong tục trong ngày đầu năm của nước bạn là gì?', N'/dist/hp/audio/custom (2).MP3', CAST(0x0000A54F00BD0597 AS DateTime), N'1550')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6e28fd8a-9aef-4a05-8803-e192df064639', N'You have to accept the failures.', N'Anh phải chấp nhận thất bại.', N'/dist/hp/audio/failure (1).MP3', CAST(0x0000A54F00BD081C AS DateTime), N'1618')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6e3dc9c0-6e61-45b1-993c-114fb993aa08', N'This radio is the gift for my father.', N'Cái ra-đi-ô này là một món dành cho cha.', N'/dist/hp/audio/radio (2).MP3', CAST(0x0000A54F00BCFD8A AS DateTime), N'225')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6edd97a0-b017-4836-8a71-57d77e0dad99', N'You can design your own brochure.', N'Bạn có thể tự thiết kế tờ quảng cáo của riêng mình.', N'/dist/hp/audio/design (2).MP3', CAST(0x0000A54F00BD035D AS DateTime), N'388')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f0f4fc9-d521-43d9-bf79-5c0e563ca54f', N'The company foundation is based on Mark''s idea.', N'Sự sáng lập công ty dựa trên ý tưởng của Mark.', N'/dist/hp/audio/foundation (2).MP3', CAST(0x0000A54F00BD0890 AS DateTime), N'1631')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f1f959e-4443-4fbc-9668-d174b3f70a38', N'What do you conclude from the story?', N'Bạn kết luận được điều gì từ câu chuyện?', N'/dist/hp/audio/conclude (1).MP3', CAST(0x0000A54F00BD04C7 AS DateTime), N'1527')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f4308bf-8d0c-40bc-be2f-097a6ba21550', N'I will write to you soon. ', N'Con sẽ viết thư về cho mẹ sớm.', N'/dist/hp/audio/write (1).MP3', CAST(0x0000A54F00BD01C8 AS DateTime), N'343')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f57c899-b37b-4a85-8d0a-c4ccb9188105', N'Champagne is made from grapes.', N'Rượu vang được làm từ nho.', N'/dist/hp/audio/from (2).MP3', CAST(0x0000A54F00BCF954 AS DateTime), N'109')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f69d159-387a-42f8-8090-633f6e69689d', N'Mia is writing a letter of congratulations to Liam.', N'Mia đang viết thư chúc mừng cho Liam.', N'/dist/hp/audio/congratulation (2).MP3', CAST(0x0000A54F00BD04EA AS DateTime), N'1531')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f82c3ea-8136-44b8-8d67-67a432c07a3e', N'Nancy doesn''t know the geography of her own country.', N'Nancy không biết gì về địa lý của nước mình.', N'/dist/hp/audio/geography (1).MP3', CAST(0x0000A54F00BD08FD AS DateTime), N'1643')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6f92ba4b-0207-4e48-843d-9f227ee12b32', N'Drinking milk is good for your health.', N'Uống sữa tốt cho sức khỏe của con.', N'/dist/hp/audio/milk (1).MP3', CAST(0x0000A54F00BCFBEC AS DateTime), N'180')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'6fea7786-ba77-453e-8b51-eb8f754d960e', N'Are you going to Cambodia? Yes, I am.', N'Bạn sắp đi Campuchia hả? Vâng.', N'/dist/hp/audio/yes (1).MP3', CAST(0x0000A54F00BD01E2 AS DateTime), N'346')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'70246031-561a-404b-9b48-5747b63ce0d2', N'The contest starts at 8 a.m.', N'Buổi thi bắt đầu lúc 8 giờ sáng.', N'/dist/hp/audio/contest (2).MP3', CAST(0x0000A54F00BD0515 AS DateTime), N'1536')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'706193bb-c354-40b7-9032-24d364f63ce0', N'Are you happy with your new job?', N'Bạn có vui với công việc mới không?', N'/dist/hp/audio/happy (2).MP3', CAST(0x0000A54F00BCF9EE AS DateTime), N'126')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7096252b-9605-49f8-81ba-5c071c010ab8', N'Keep calm! Everything is fine!', N'Hãy bình tĩnh! Mọi chuyện đã ổn rồi và con sẽ được về nhà ngay thôi.', N'/dist/hp/audio/calm (2).MP3', CAST(0x0000A54F00BD0ADB AS DateTime), N'2048')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7116eada-6f6a-47b5-b5b4-e8bfc3fe7055', N'Maria explains the definition of "agriculture".', N'Maria giải thích nghĩa của từ "nông nghiệp".', N'/dist/hp/audio/definition (1).MP3', CAST(0x0000A54F00BD05CD AS DateTime), N'1556')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7133857b-e414-47a5-805c-074ff0e95355', N'Will you dance with me?', N'Nhảy với anh nhé?', N'/dist/hp/audio/dance (1).MP3', CAST(0x0000A54F00BCF7E6 AS DateTime), N'69')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'713fab9e-e28e-4fa4-80a6-bd678fb167a9', N'All bedrooms are provided with modern facilities.', N'Tất cả phòng ngủ đều được cung cấp những thiết bị hiện đại.', N'/dist/hp/audio/facility (2).MP3', CAST(0x0000A54F00BD080A AS DateTime), N'1616')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7159af76-c6f4-49ab-b52d-71af3c42ed04', N'The bus will come every ten minutes.', N'Mỗi 10 phút sẽ có một chuyến xe buýt. ', N'/dist/hp/audio/ten (1).MP3', CAST(0x0000A54F00BCFFC8 AS DateTime), N'287')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7161bc8c-5a54-4495-942c-21f0e22b1458', N'The wall was broken.', N'Bức tường đã bị đổ.', N'/dist/hp/audio/wall (1).MP3', CAST(0x0000A54F00BD00D4 AS DateTime), N'316')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7191471b-bcda-46aa-8c9f-1cb9e6d88d9b', N'Where did you get your haircut?', N'Anh đã cắt tóc ở đâu vậy?', N'/dist/hp/audio/cut (1).MP3', CAST(0x0000A54F00BCF7C2 AS DateTime), N'65')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'723b1fe8-85d5-4ec7-a679-a9f5b4b965e1', N'Teaching enables me to help others.', N'Tôi có thể giúp đỡ nhiều người khác bằng việc giảng dạy.', N'/dist/hp/audio/enable (1).MP3', CAST(0x0000A54F00BD073E AS DateTime), N'1594')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7350b40a-d708-42bb-a37a-2cbd2dd0585c', N'Be strong, girl!', N'Mạnh mẽ lên cô gái!', N'/dist/hp/audio/strong (1).MP3', CAST(0x0000A54F00BCFF5B AS DateTime), N'275')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'73eb6e2a-54c4-4caa-ba86-fe6464502909', N'I like to sleep with my parents.', N'Tôi thích ngủ chung với ba mẹ.', N'/dist/hp/audio/sleep (1).MP3', CAST(0x0000A54F00BCFEB8 AS DateTime), N'258')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'73f7fd50-43a8-4e12-a90e-f6bffd64318c', N'She is always the first person who comes to work.', N'Cô ấy luôn là người đến công ty đầu tiên.', N'/dist/hp/audio/first (2).MP3', CAST(0x0000A54F00BCF8FC AS DateTime), N'99')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7426c3fc-b2da-4346-bab5-e60dbda79c41', N'I met my wife at university.', N'Tôi đã gặp vợ tôi ở trường đại học.', N'/dist/hp/audio/wife (1).MP3', CAST(0x0000A54F00BD0177 AS DateTime), N'334')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'746d6cf1-67f9-44aa-b5c9-eba702a85c43', N'My uncle is so fat.', N'Chú tôi rất béo.', N'/dist/hp/audio/fat (1).MP3', CAST(0x0000A54F00BCF8D9 AS DateTime), N'95')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'756c8c68-b691-4211-b677-32b66d74ac43', N'Her smile is very warm and friendly.', N'Nụ cười của anh ta thật ấm áp và thân thiện.', N'/dist/hp/audio/warm (2).MP3', CAST(0x0000A54F00BD00E6 AS DateTime), N'318')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'758ccb7e-26e0-475c-b943-31d913f3c22e', N'There are 4 seasons in a year.', N'Một năm có 4 mùa.', N'/dist/hp/audio/year (1).MP3', CAST(0x0000A54F00BD01D1 AS DateTime), N'344')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'75d7c03f-92ff-45c9-8a12-43a3ac53209c', N'Rubella is just another name of German measles.', N'Rubela là một tên gọi khác của bệnh sởi Đức.', N'/dist/hp/audio/name (2).MP3', CAST(0x0000A54F00BCFC53 AS DateTime), N'191')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'75e6ea90-1415-4327-a1b5-8b8ad117e86f', N'Could you please give me your ticket?', N'Vui lòng cho tôi xem vé của bạn!', N'/dist/hp/audio/please (2).MP3', CAST(0x0000A54F00BCFD67 AS DateTime), N'221')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'75f01f59-9ae0-420a-8ac3-a745f19217a4', N'Stick glue on both side.', N'Bôi hồ dán lên cả hai mặt.', N'/dist/hp/audio/glue (2).MP3', CAST(0x0000A54F00BD091B AS DateTime), N'1646')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'763da79b-7584-4359-ba71-68b21dc44e71', N'You can sing as well as a professional singer.', N'Cậu có thể hát hay như ca sĩ chuyên nghiệp.', N'/dist/hp/audio/sing (2).MP3', CAST(0x0000A54F00BCFE82 AS DateTime), N'252')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7654d393-83e4-4d65-8079-78dacbdcc41c', N'The cow is chewing grass.', N'Con bò đang nhai cỏ.', N'/dist/hp/audio/chew (1).MP3', CAST(0x0000A54F00BD0430 AS DateTime), N'1510')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'767e2236-ecda-4cfb-9a0d-5c490540b0ba', N'How long is the Red river?', N'Đó là một câu chuyện rất dài, tôi sẽ kể cho bạn khi có thời gian.', N'/dist/hp/audio/long (1).MP3', CAST(0x0000A54F00BCFB7A AS DateTime), N'168')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7680a3a7-2a57-4397-b917-fb5761fe7d16', N'There were a lots of food and drink at the party.', N'Có rất nhiều đồ ăn và thức uống ở bữa tiệc.', N'/dist/hp/audio/food (2).MP3', CAST(0x0000A54F00BCF91E AS DateTime), N'103')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'768914de-b098-49f4-99ef-1daab2a655f2', N'Jack is the brightest member of the band. ', N'Jack là thành viên sáng giá nhất của ban nhạc.', N'/dist/hp/audio/band (2).MP3', CAST(0x0000A54F00BCF612 AS DateTime), N'20')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'76f019e7-4f97-40d1-bc26-1c5c41be114b', N'You have to remember chemical substances to do the homework.', N'Con phải nhớ những chất hóa học để làm bài tập đó.', N'/dist/hp/audio/chemical (2).MP3', CAST(0x0000A54F00BD0415 AS DateTime), N'1507')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'76f90842-4183-4d12-b2f2-a4912946a353', N'She has a hard life when she was a kid.', N'Cô ấy có một cuộc sống khó khăn từ khi còn nhỏ.', N'/dist/hp/audio/hard (2).MP3', CAST(0x0000A54F00BCF9F7 AS DateTime), N'127')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'771d2438-9673-4d0b-ae4d-5d4befb1c76f', N'Petroleum is the black oil obtained from under ground.', N'Dầu khí là dầu đen thu được từ dưới lòng đất.', N'/dist/hp/audio/oil (2).MP3', CAST(0x0000A54F00BCFCDF AS DateTime), N'206')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7793d4d5-7ffe-43d3-8c13-f58d515f428c', N'She never complains to me.', N'Cô ấy không bao giờ than phiền với tôi.', N'/dist/hp/audio/complain (1).MP3', CAST(0x0000A54F00BD04A4 AS DateTime), N'1523')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'78018114-c1eb-42dd-aa8f-3efa3829dee7', N'This picture is so real.', N'Bức tranh này rất thật.', N'/dist/hp/audio/picture (1).MP3', CAST(0x0000A54F00BCFD4C AS DateTime), N'218')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'78a69cd7-bb7f-4687-a765-b7104bfb45f6', N'My family has 7 people.', N'Gia đình tôi có 7 người.', N'/dist/hp/audio/seven (1).MP3', CAST(0x0000A54F00BCFE4C AS DateTime), N'246')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'78b0c191-7a32-46b8-8e68-4ff55e096d76', N'I feel confident with the result.', N'Tôi cảm thấy tự tin với kết quả.', N'/dist/hp/audio/confident (2).MP3', CAST(0x0000A54F00BD04D8 AS DateTime), N'1529')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'78c3e2a0-6fd4-47bc-ae95-4064450f95dc', N'Where are you from?', N'Bạn đến từ đâu?', N'/dist/hp/audio/from (1).MP3', CAST(0x0000A54F00BCF954 AS DateTime), N'109')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'790e1d6f-161d-42c1-82d8-13ed84f7ef17', N'Her name is Anna.', N'Tên của cô ấy là Anna.', N'/dist/hp/audio/name (1).MP3', CAST(0x0000A54F00BCFC53 AS DateTime), N'191')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'79347be1-e9bc-42be-862a-51f64de61935', N'He feels anxious about the presentation.', N'Anh ấy cảm thấy lo lắng về bài thuyết trình.', N'/dist/hp/audio/anxious (2).MP3', CAST(0x0000A54F00BD0A10 AS DateTime), N'2028')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'79521b25-886c-4704-a397-1e039778330e', N'Summer is the dry season because it''s very hot.', N'Mùa hè là mùa khô bởi vì trời rất nóng.', N'/dist/hp/audio/dry (2).MP3', CAST(0x0000A54F00BCF855 AS DateTime), N'81')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'796c610e-de81-49fb-bc9a-2af7476c2a01', N'The situation is very serious.', N'Tình hình rất nghiêm trọng.', N'/dist/hp/audio/very (1).MP3', CAST(0x0000A54F00BD00B8 AS DateTime), N'313')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7975fdcd-52f3-48ca-a677-f26bb1867c38', N'She looks very tired.', N'Trông cô ấy rất mệt mỏi.', N'/dist/hp/audio/look (2).MP3', CAST(0x0000A54F00BCFB83 AS DateTime), N'169')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'79e67ca4-ff85-404a-83cf-7012104f47d6', N'He doesn''t have many friends.', N'Anh ta không có nhiều bạn bè.', N'/dist/hp/audio/friend (2).MP3', CAST(0x0000A54F00BCF94B AS DateTime), N'108')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7a13cf38-5276-4a8e-bda8-c224a68fda3d', N'She’s tall and quite thin.', N'Cô ấy cao và hơi gầy.', N'/dist/hp/audio/thin (2).MP3', CAST(0x0000A54F00BD0026 AS DateTime), N'297')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7a198093-9231-4e7a-bef0-cfbf6ef41182', N'Give me the house key!', N'Đưa cho em chìa khóa nhà!', N'/dist/hp/audio/key (1).MP3', CAST(0x0000A54F00BCFADE AS DateTime), N'151')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7a2842f9-5fba-46af-aba0-1b237f00f448', N'He doesn''t like the double bed.', N'Anh ấy không thích giường đôi.', N'/dist/hp/audio/double (1).MP3', CAST(0x0000A54F00BD037A AS DateTime), N'391')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7a2caaf2-9cdf-4705-840b-f0845747251e', N'They are potential consumers of the company.', N'Họ là những khách hàng tiềm năng của công ty.', N'/dist/hp/audio/consumer (2).MP3', CAST(0x0000A54F00BD04FC AS DateTime), N'1533')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7a3342c7-dd2b-460c-82be-638cfb2ce22c', N'He has a quick mind.', N'Thằng bé có đầu óc lanh lợi.', N'/dist/hp/audio/quick (1).MP3', CAST(0x0000A54F00BCFD80 AS DateTime), N'224')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7aefaf92-d8a3-4b7f-b07e-25da58ed91f6', N'Let go eat and then go shopping afterwards.', N'Hãy đi ăn rồi sau đó đi mua sắm.', N'/dist/hp/audio/afterwards (1).MP3', CAST(0x0000A54F00BD09C3 AS DateTime), N'2022')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7b3e7639-183c-437a-bb15-e76af3393971', N'A desert is an area that is covered with sand and rock.', N'Sa mạc là một khu vực chỉ toàn cát và đá.', N'/dist/hp/audio/desert (1).MP3', CAST(0x0000A54F00BD0353 AS DateTime), N'387')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7b46112c-619b-4cc4-a754-949acda57bab', N'My grandfather told a fairy tales to us.', N'Ông tôi đã kể cho chúng tôi nghe 1 câu chuyện cổ tích.', N'/dist/hp/audio/tell (2).MP3', CAST(0x0000A54F00BCFFBF AS DateTime), N'286')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7b76d0e6-c2be-45a3-b8e5-2a7970c6660e', N'My younger brother plays in a rock band.', N'Em trai tôi chơi trong một ban nhạc rock.', N'/dist/hp/audio/band (1).MP3', CAST(0x0000A54F00BCF612 AS DateTime), N'20')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7b9cce01-e6c7-4112-a8d6-f8b024739de3', N'He was not only intelligent but also handsome.', N'Anh ấy không những thông minh mà còn đẹp trai nữa.', N'/dist/hp/audio/also (2).MP3', CAST(0x0000A54F00BD020F AS DateTime), N'351')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7be652e0-d5a1-4421-83ca-ae59a31ed5d8', N'My grandpa doesn''t like the girls with blonde hair.', N'Ông nội tôi không thích những đứa con gái tóc vàng hoe.', N'/dist/hp/audio/blonde (2).MP3', CAST(0x0000A54F00BD0A9B AS DateTime), N'2041')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7c182904-bbab-4cb6-a488-331c05f38179', N'The cows were standing in one corner of the field.', N'Những con bò đang đứng ở một góc cánh đồng.', N'/dist/hp/audio/corner (2).MP3', CAST(0x0000A54F00BD02FA AS DateTime), N'377')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7c442ff8-abdc-4992-b472-5510c890dbe8', N'Cat have very sensitive noses.', N'Loài mèo có mũi rất nhạy.', N'/dist/hp/audio/nose (1).MP3', CAST(0x0000A54F00BCFCA5 AS DateTime), N'200')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7c9ce47e-96a2-467f-aa9a-a69b7564bd62', N'Belinda doesn''t have the courage to tell a lie.', N'Belinda không đủ dũng cảm để nói dối.', N'/dist/hp/audio/courage (2).MP3', CAST(0x0000A54F00BD054B AS DateTime), N'1542')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7d4f9f82-3358-4cb9-8946-971981b00033', N'He killed himself with a knife.', N'Anh ta tự sát bằng một con dao.', N'/dist/hp/audio/kill (2).MP3', CAST(0x0000A54F00BCFAE7 AS DateTime), N'152')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7d5e1de8-5fe4-4cdb-a0a7-dab929ecb0e6', N'The global economy is in recession.', N'Nền kinh tế toàn cầu đang trên đà suy thoái.', N'/dist/hp/audio/economy (1).MP3', CAST(0x0000A54F00BD06CD AS DateTime), N'1582')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7df7cc9b-339b-4dc4-be1f-3969b86c6233', N'She stood on tiptoe to reach a book on the shelf.', N'Cô ấy nhón chân để với tới quyển sách trên kệ.', N'/dist/hp/audio/stand (2).MP3', CAST(0x0000A54F00BCFF0F AS DateTime), N'267')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7e19759d-58d7-4583-98a0-e93c0e78efdb', N'There is an ATM on the corner.', N'Có một cái máy rút tiền tự động ở góc đường.', N'/dist/hp/audio/corner (1).MP3', CAST(0x0000A54F00BD02FA AS DateTime), N'377')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7e2b8083-7569-40a8-9553-a4aa703574d7', N'His car crashed into the safety barrier.', N'Xe hơi của ông ấy đâm sầm vào rào chắn.', N'/dist/hp/audio/barrier (2).MP3', CAST(0x0000A54F00BD0A88 AS DateTime), N'2039')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7e854258-20b3-4887-b785-1c26b50d1de7', N'His dog is barking outside.', N'Con chó của ông ta đang sủa ở ngoài kia.', N'/dist/hp/audio/his (2).MP3', CAST(0x0000A54F00BCFA6A AS DateTime), N'138')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7ebb2ec5-d949-4464-bea2-416a1d681337', N'The boat is ten metre in length.', N'Chiếc thuyền có chiều dài 10 mét.', N'/dist/hp/audio/ten (2).MP3', CAST(0x0000A54F00BCFFC8 AS DateTime), N'287')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7ef1f1d8-f2b8-442a-a778-e9d6b41e4906', N'Ava hates wearing the grey shirt.', N'Ava ghét mặc áo sơ mi xám.', N'/dist/hp/audio/gray (2).MP3', CAST(0x0000A54F00BCF9A1 AS DateTime), N'117')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7f3c62fb-922c-45f8-b64a-9b065a067697', N'He is a lucky man.', N'Anh ta là một người may mắn.', N'/dist/hp/audio/man (1).MP3', CAST(0x0000A54F00BCFB9F AS DateTime), N'172')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7f64627e-0542-4cde-b008-a5f9f890e670', N'He has a pain in his back.', N'Anh ấy bị thương ở lưng.', N'/dist/hp/audio/back (2).MP3', CAST(0x0000A54F00BCF5F6 AS DateTime), N'17')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7f906ad3-25c4-4912-8321-b9139577afbf', N'Do you have any papers?', N'Bạn có tờ giấy nào không?', N'/dist/hp/audio/any (1).MP3', CAST(0x0000A54F00BD0233 AS DateTime), N'355')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fa3586a-d983-45a6-a041-6c73b9b1d061', N'Can you drive?', N'Bạn có thể lái xe không?', N'/dist/hp/audio/drive (1).MP3', CAST(0x0000A54F00BD0395 AS DateTime), N'394')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fc3b35c-0345-42d8-9109-dc39f0911507', N'The company has a long foundation.', N'Công ty này có nền tảng lâu đời.', N'/dist/hp/audio/foundation (1).MP3', CAST(0x0000A54F00BD0890 AS DateTime), N'1631')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fe5e8b5-7317-4715-83b4-1478170fc786', N'It''s not much fun going to a party alone.', N'Thật chẳng vui vẻ gì khi đi dự tiệc một mình.', N'/dist/hp/audio/fun (2).MP3', CAST(0x0000A54F00BCF973 AS DateTime), N'112')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fe63092-bacf-48af-aa18-233d28bd0844', N'I have worked here for 3 months.', N'Tôi đã làm việc ở đây khoảng 3 tháng.', N'/dist/hp/audio/month (1).MP3', CAST(0x0000A54F00BCFC0F AS DateTime), N'184')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fe83a8a-f281-4fea-81ea-4de379bba873', N'He died in a car accident.', N'Anh ấy qua đời trong một vụ tai nạn xe hơi.', N'/dist/hp/audio/die (2).MP3', CAST(0x0000A54F00BCF803 AS DateTime), N'72')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fe9b8c9-1dd0-4f11-a495-2b0be91643dc', N'Strawberries and milk is a perfect combination.', N'Dâu và sữa là một sự kết hợp hoàn hảo.', N'/dist/hp/audio/combination (2).MP3', CAST(0x0000A54F00BD0466 AS DateTime), N'1516')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7fef6a68-39fb-42f5-890d-326576f2dd52', N'I always consider you as one of the family.', N'Tôi luôn coi anh như một người trong gia đình.', N'/dist/hp/audio/family (2).MP3', CAST(0x0000A54F00BCF8CF AS DateTime), N'94')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'7ff69abf-b984-4bbe-80a5-005fdf54112d', N'He can run as fast as a leopard.', N'Anh ấy có thể chạy nhanh như một con báo.', N'/dist/hp/audio/as (1).MP3', CAST(0x0000A54F00BCF5D1 AS DateTime), N'13')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'800e1f87-d4a5-4a3d-ae9c-ed807c54c7c4', N'What will you do when you are in an emergency situation?', N'Bạn sẽ làm gì khi trong tình trạng khẩn cấp?', N'/dist/hp/audio/emergency (2).MP3', CAST(0x0000A54F00BD070F AS DateTime), N'1589')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8018f940-52b6-468c-998b-7112aa0d43eb', N'Put your gun down, otherwise she will die.', N'Bỏ súng xuống nếu không cô ta sẽ chết.', N'/dist/hp/audio/put (2).MP3', CAST(0x0000A54F00BCFD78 AS DateTime), N'223')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8021abe4-0848-4d0c-b17f-b349748d1be0', N'The children deserve a good academic background.', N'Trẻ em xứng đáng được hưởng một nền giáo dục tốt.', N'/dist/hp/audio/academic (2).MP3', CAST(0x0000A54F00BD0965 AS DateTime), N'2015')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8032c696-a024-4a87-94d3-fc467e9b9b29', N'It''s necessary to have appropriate punishment for the killers.', N'Cần có những hình phạt thích đáng cho những kẻ sát nhân.', N'/dist/hp/audio/appropriate (2).MP3', CAST(0x0000A54F00BD0A19 AS DateTime), N'2029')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8081617f-df7f-437a-ab11-cd09709cfdb0', N'I must thank my mom for the present.', N'Tôi phải cảm ơn mẹ vì món quà.', N'/dist/hp/audio/thank (1).MP3', CAST(0x0000A54F00BCFFF8 AS DateTime), N'292')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'80b5b9f1-d6b2-44f4-b7f4-3127e8fa9234', N'I think that Caleb should expand his knowledge.', N'Tôi nghĩ rằng Caleb nên mở rộng kiến thức của mình.', N'/dist/hp/audio/expand (2).MP3', CAST(0x0000A54F00BD07C3 AS DateTime), N'1608')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'80b73334-91bb-482d-a872-cf1be7374cba', N'My eyes tear up when I chop onions.', N'Nước mắt tôi trào ra khi tôi xắt những củ hành.', N'/dist/hp/audio/eye (1).MP3', CAST(0x0000A54F00BCF8B3 AS DateTime), N'91')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'80c4008e-7ab7-4b48-9a97-9f6d31da9dbc', N'We stand up in order to get a better view.', N'Chúng tôi đứng lên để nhìn rõ hơn.', N'/dist/hp/audio/stand (1).MP3', CAST(0x0000A54F00BCFF0F AS DateTime), N'267')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'80d17050-f29a-47b5-915e-c8cce071d124', N'Our anxieties was removed.', N'Những lo lắng của chúng tôi đã được xóa bỏ.', N'/dist/hp/audio/anxiety (1).MP3', CAST(0x0000A54F00BD0A06 AS DateTime), N'2027')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8101eb81-5d4f-4801-a84a-ea2bc39fa81a', N'The boy is copying his friend''s Math test.', N'Thằng bé đang chép bài kiểm tra toán của bạn nó.', N'/dist/hp/audio/copy (2).MP3', CAST(0x0000A54F00BCF7A7 AS DateTime), N'62')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'81034500-362f-4cc4-92c5-05a3342b8082', N'It''s hard to find a good job.', N'Rất khó để tìm được một công việc tốt.', N'/dist/hp/audio/job (1).MP3', CAST(0x0000A54F00BCFAC3 AS DateTime), N'148')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8116203e-8674-40b0-a049-47244544bc27', N'They anticipate that consumer demand is likely to increase at the end of this year.', N'Họ lường trước rằng nhu cầu của người tiêu dùng sẽ tăng vào cuối năm nay.', N'/dist/hp/audio/anticipate (2).MP3', CAST(0x0000A54F00BD09FA AS DateTime), N'2026')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8122aa97-714f-4821-8650-ade92b5bb95c', N'This game is silly. ', N'Trò chơi này thật ngớ ngẩn.', N'/dist/hp/audio/game (2).MP3', CAST(0x0000A54F00BCF97D AS DateTime), N'113')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'81fd89a3-ecd8-4018-87f8-a248b2d7998b', N'I like to cook for my family.', N'Tôi thích nấu ăn cho gia đình mình.', N'/dist/hp/audio/cook (2).MP3', CAST(0x0000A54F00BCF793 AS DateTime), N'60')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8210c924-bb29-4747-864c-fc0031cc0236', N'See you later after school.', N'Hẹn gặp lại cậu sau giờ học.', N'/dist/hp/audio/after (1).MP3', CAST(0x0000A54F00BCF574 AS DateTime), N'3')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'821b18e9-c90c-42a4-8079-aee894b3278f', N'I can''t touch the bottom.', N'Tôi không thể chạm tới đáy được.', N'/dist/hp/audio/bottom (1).MP3', CAST(0x0000A54F00BD0284 AS DateTime), N'364')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8236e34e-d770-4fab-ab12-835744df39f8', N'She has lived here more than 20 years.', N'Bà ấy đã sống ở đây hơn 20 năm rồi.', N'/dist/hp/audio/here (1).MP3', CAST(0x0000A54F00BCFA4A AS DateTime), N'135')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8244af4b-2745-4e3e-b204-a74542c6f6ea', N'I don''t know why I feel bad.', N'Tôi không biết vì sao tôi bỗng thấy khó chịu.', N'/dist/hp/audio/why (1).MP3', CAST(0x0000A54F00BD016E AS DateTime), N'333')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'827fac89-f8cc-45cd-aae8-70667861f1ef', N'She likes to eat chicken egg.', N'Cô ấy thích ăn trứng gà.', N'/dist/hp/audio/egg (1).MP3', CAST(0x0000A54F00BCF87C AS DateTime), N'85')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'82ffe292-e44b-4841-b5b4-19168fe70829', N'He likes the black car.', N'Anh ta thích chiếc xe màu đen.', N'/dist/hp/audio/car (1).MP3', CAST(0x0000A54F00BCF71F AS DateTime), N'48')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'830ca43a-9caa-409c-bf8e-97ea99be38f3', N'I have continuous pains in my back.', N'Tôi bị những cơn đau liên tục ở lưng.', N'/dist/hp/audio/continuous (1).MP3', CAST(0x0000A54F00BD051E AS DateTime), N'1537')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'834aef62-db3b-4e21-871f-0cb39eacd18e', N'Anthony''s mother disappointed because he gambles.', N'Mẹ của Anthony rất thất vọng vì anh ấy đánh bạc. ', N'/dist/hp/audio/gamble (2).MP3', CAST(0x0000A54F00BD08DA AS DateTime), N'1639')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'83536c19-cd10-4349-b131-6d07a87f876e', N'Which unit are you from?', N'Anh đến từ đơn vị nào?', N'/dist/hp/audio/unit (2).MP3', CAST(0x0000A54F00BD0094 AS DateTime), N'309')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8384f4f5-0765-4a9f-804c-6e2b39b15fe2', N'We have a boat to Cam Ranh every hour.', N'Mỗi giờ chúng tôi có một chuyến tàu ra Cam Ranh.', N'/dist/hp/audio/boat (2).MP3', CAST(0x0000A54F00BD0272 AS DateTime), N'362')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'83cdd4ce-7c2d-4c44-8411-9b844517cfbb', N'Neil Armstrong was the first person to walk on the moon.', N'Neil Armstrong là người đầu tiên đặt chân lên mặt trăng.', N'/dist/hp/audio/moon (2).MP3', CAST(0x0000A54F00BCFC1A AS DateTime), N'185')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'83dad2a1-6b27-4f23-8c45-55dbb9574876', N'"Happiness" is an abstract noun.', N'"Niềm hạnh phúc" là một danh từ trừu tượng.', N'/dist/hp/audio/noun (1).MP3', CAST(0x0000A54F00BCFCAE AS DateTime), N'201')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8412e11f-fcfd-45f7-9243-5e683b3114a8', N'Why don''t we go on the picnic this weekend?', N'Sao chúng ta không đi cắm trại vào cuối tuần này?', N'/dist/hp/audio/we (1).MP3', CAST(0x0000A54F00BD0113 AS DateTime), N'323')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'841fc190-6814-4bcc-8b04-ecd2c80545af', N'She has a happy family.', N'Cô ấy có một gia đình hạnh phúc.', N'/dist/hp/audio/family (1).MP3', CAST(0x0000A54F00BCF8CF AS DateTime), N'94')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'84708c94-12d3-44e4-b172-173f19c06fdb', N'I''ll be there around noon.', N'Tôi sẽ có mặt ở đó vào khoảng trưa.', N'/dist/hp/audio/noon (1).MP3', CAST(0x0000A54F00BCFC9C AS DateTime), N'199')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'847e6e27-0f0e-4065-9d0d-f0284aa1ccc7', N'He is as thin as a pole.', N'Anh ta gầy như một cái sào.', N'/dist/hp/audio/thin (1).MP3', CAST(0x0000A54F00BD0026 AS DateTime), N'297')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'849e1a05-61b7-4dd0-8bd7-004a240508a8', N'There are many new urban areas east of Ho Chi Minh city.', N'Có rất nhiều khu đô thị mới ở phía đông thành phố Hồ Chí Minh.', N'/dist/hp/audio/east (2).MP3', CAST(0x0000A54F00BD03B0 AS DateTime), N'397')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'84a52f5c-019c-45e8-a158-2550387feb85', N'She is a really nice woman.', N'Cô ấy là một người phụ nữ dễ mến.', N'/dist/hp/audio/woman (1).MP3', CAST(0x0000A54F00BD01AD AS DateTime), N'340')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'84d1de77-2e08-4686-944f-053345be3f52', N'This shop only sells baby clothes.', N'Cửa hàng này chỉ bán đồ sơ sinh.', N'/dist/hp/audio/baby (1).MP3', CAST(0x0000A54F00BCF5ED AS DateTime), N'16')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'85913f69-34f2-4a65-b80e-dd8483ffd6f6', N'Many flowers bloom in spring.', N'Muôn hoa khoe sắc vào mùa xuân.', N'/dist/hp/audio/spring (1).MP3', CAST(0x0000A54F00BCFF06 AS DateTime), N'266')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'85d20d56-d9c2-4731-bd93-7b5eeb39b2e1', N'My decision depends on the weather.', N'Quyết định của tôi phụ thuộc vào thời tiết.', N'/dist/hp/audio/depend (2).MP3', CAST(0x0000A54F00BD05F1 AS DateTime), N'1560')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'863865dd-9dd0-47a3-812e-d5aa4f11058a', N'Many people disagreed with the conclusion of the speech.', N'Rất nhiều người không đồng ý với phần kết của bài phát biểu ấy.', N'/dist/hp/audio/conclusion (2).MP3', CAST(0x0000A54F00BD04CF AS DateTime), N'1528')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'869f9a9e-1fe2-454d-ae62-a919175073a6', N'The teacher devides the class into 6 groups.', N'Cô giáo đã chia lớp thành 6 nhóm.', N'/dist/hp/audio/group (2).MP3', CAST(0x0000A54F00BCF9BB AS DateTime), N'120')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'86a8f7af-92ea-42ee-bfca-6af939b0e40a', N'Did you call me last night?', N'Tối qua cậu đã gọi điện cho tôi phải không?', N'/dist/hp/audio/me (1).MP3', CAST(0x0000A54F00BCFBD0 AS DateTime), N'177')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8725bf17-86dc-45c3-936e-fa50fd060e74', N'The classic novel was first published in 1921.', N'Quyển tiểu thuyết kinh điển được xuất bản lần đầu năm 1921.', N'/dist/hp/audio/classic (2).MP3', CAST(0x0000A54F00BD0439 AS DateTime), N'1511')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8743c661-def1-41b7-9581-58ca1b430e89', N'Can Lauren pay off all her debt?', N'Liệu Lauren có thể trả hết khoản nợ của mình không?', N'/dist/hp/audio/debt (2).MP3', CAST(0x0000A54F00BD05A8 AS DateTime), N'1552')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8785572a-6cbb-4664-922c-541c719dd49f', N'His house is one among three.', N'Nhà của anh ta là ngôi nhà ở giữa trong 3 nhà.', N'/dist/hp/audio/among (2).MP3', CAST(0x0000A54F00BD0221 AS DateTime), N'353')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'87c17160-d74d-46a7-acfc-ca029b0194ed', N'My T-shirt is yellow.', N'Cái áo phông của tôi có màu vàng.', N'/dist/hp/audio/yellow (1).MP3', CAST(0x0000A54F00BD01DA AS DateTime), N'345')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'87d6f43a-693b-4f5e-948b-717bbc8c058b', N'He decided to accept this challenge.', N'Anh ta đã quyết định chấp nhận thử thách này.', N'/dist/hp/audio/challenge (1).MP3', CAST(0x0000A54F00BD0B08 AS DateTime), N'2053')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'87fe6bb6-6e4b-4c2a-825c-ebef04b608a9', N'Harry played tennis at a high level.', N'Harry chơi tennis ở cấp độ cao.', N'/dist/hp/audio/level (2).MP3', CAST(0x0000A54F00BCFB4D AS DateTime), N'163')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8815f24a-f846-45be-89b6-ba046e83d1b6', N'He takes the dog for a walk every afternoon.', N'Ông ấy thường dắt chú chó cưng của mình đi dạo vào mỗi buổi chiều.', N'/dist/hp/audio/dog (2).MP3', CAST(0x0000A54F00BCF81F AS DateTime), N'75')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'883ca766-22fc-4566-9f6b-772399149618', N'David changed the flight.', N'David đã thay đổi chuyến bay.', N'/dist/hp/audio/flight (1).MP3', CAST(0x0000A54F00BD0863 AS DateTime), N'1626')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'88a132ca-6bff-4e03-a1cc-d9745563fe80', N'Do you know the answer to the question?', N'Bạn có biết đáp án của câu này không?', N'/dist/hp/audio/answer (2).MP3', CAST(0x0000A54F00BD022A AS DateTime), N'354')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'88b9e090-4133-400c-bc11-ea371f188efc', N'The government should find solutions to reduce air pollution.', N'Chính phủ nên tìm ra một số giải pháp để làm giảm bớt sự ô nhễm không khí.', N'/dist/hp/audio/air (2).MP3', CAST(0x0000A54F00BCF590 AS DateTime), N'6')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'88d60a57-08dd-40c4-851c-356f6055738f', N'The soldiers was fighting for their country.', N'Những người lính đã chiến đấu cho quê hương mình.', N'/dist/hp/audio/for (2).MP3', CAST(0x0000A54F00BCF930 AS DateTime), N'105')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'88f0cfdb-3fa7-4670-87b1-ee828eacd162', N'Justin gives me an envelope.', N'Justin đưa tôi một cái bì thư.', N'/dist/hp/audio/envelope (2).MP3', CAST(0x0000A54F00BD0778 AS DateTime), N'1600')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'88fd6818-9335-4c0a-a8f2-4cfc87d28b70', N'His task is to keep the goal.', N'Nhiệm vụ của anh ta là giữ gôn.', N'/dist/hp/audio/keep (2).MP3', CAST(0x0000A54F00BCFAD5 AS DateTime), N'150')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8934a82e-cbe4-4558-ad25-a88efaca534e', N'The East-West Avenue is my favourite street in Ho Chi Minh city.', N'Đại lộ Đông Tây là con đường yêu thích nhất của tôi ở thành phố Hồ Chí Minh.', N'/dist/hp/audio/street (2).MP3', CAST(0x0000A54F00BCFF51 AS DateTime), N'274')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'89d8b122-b57c-40ab-b2f7-db38226c8eb7', N'The price of gasoline rises again.', N'Giá xăng lại tăng nữa.', N'/dist/hp/audio/gasoline (1).MP3', CAST(0x0000A54F00BD08E2 AS DateTime), N'1640')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8a82463a-760e-4737-9edf-3c81e02a38e7', N'Whose book are you reading?', N'Cậu đang đọc sách của ai vậy?', N'/dist/hp/audio/whose (1).MP3', CAST(0x0000A54F00BD0166 AS DateTime), N'332')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8a8bd94e-23c6-4bc6-9066-e0035499834a', N'I choose answer B.', N'Tôi chọn đáp án B.', N'/dist/hp/audio/choose (1).MP3', CAST(0x0000A54F00BD0326 AS DateTime), N'382')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8af40416-c362-4a6c-bc7a-bdd4fc8dc3f3', N'The crime rate is increasing.', N'Tỷ lệ tội phạm đang gia tăng.', N'/dist/hp/audio/crime (2).MP3', CAST(0x0000A54F00BD055E AS DateTime), N'1544')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8bb461c3-38a2-4c13-a9f0-0e08fd321c0f', N'He is milking the cow.', N'Anh ấy đang vắt sữa bò.', N'/dist/hp/audio/cow (1).MP3', CAST(0x0000A54F00BCF7AF AS DateTime), N'63')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8bee4a50-f0a8-433d-8721-014de55fbe28', N'There is a dog under the table.', N'Có một con chó ở dưới cái bàn.', N'/dist/hp/audio/table (2).MP3', CAST(0x0000A54F00BCFF89 AS DateTime), N'280')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8bfb62b8-8ff0-4f5f-affd-4042190cac30', N'He give us a picture as a wedding present.', N'Anh ấy tặng chúng tôi một bức tranh làm quà cưới.', N'/dist/hp/audio/us (2).MP3', CAST(0x0000A54F00BD00A7 AS DateTime), N'311')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8c570919-f391-4c5b-8b39-73d035358221', N'Jack is very dear to us.', N'Jack rất mến chúng tôi.', N'/dist/hp/audio/dear (2).MP3', CAST(0x0000A54F00BD034A AS DateTime), N'386')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8c8c1d8f-b2cd-40e5-8da2-46c564b900a8', N'Anna needs to explain in more detail.', N'Anna cần giải thích chi tiết hơn.', N'/dist/hp/audio/detail (1).MP3', CAST(0x0000A54F00BD0616 AS DateTime), N'1564')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8cd4b158-6fdc-4ca7-ac72-f8708d8f84f4', N'I believe I can touch the sky.', N'Tôi tin rằng tôi có thể chạm đến bầu trời.', N'/dist/hp/audio/sky (1).MP3', CAST(0x0000A54F00BCFEB0 AS DateTime), N'257')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8d0522a7-fede-4e58-857b-d41406ce4c7c', N'My hobby is travelling around the world.', N'Sở thích của tôi là đi du lịch khắp nơi trên thế giới.', N'/dist/hp/audio/travel (2).MP3', CAST(0x0000A54F00BD0066 AS DateTime), N'304')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8d4b696f-15fe-471f-8424-21484e64848d', N'My family will go to Phu Quoc in this summer.', N'Gia đình tôi sẽ đi du lịch Phú Quốc mùa hè này.', N'/dist/hp/audio/summer (1).MP3', CAST(0x0000A54F00BCFF6E AS DateTime), N'277')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8d56311a-d552-4de1-a8f0-7d396c1260f8', N'He said that he never gives up.', N'Anh ta nói rằng anh ta không bao giờ bỏ cuộc.', N'/dist/hp/audio/never (1).MP3', CAST(0x0000A54F00BCFC6F AS DateTime), N'194')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8d5e2ec3-f129-430c-910d-83bfc7639cb5', N'The fence is tall.', N'Cái hàng rào này thì cao.', N'/dist/hp/audio/fence (1).MP3', CAST(0x0000A54F00BD083F AS DateTime), N'1622')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8db17c64-ef80-4d36-986b-08163af1cb4e', N'Economy will affect the development of a country.', N'Kinh tế sẽ ảnh hưởng đến sự phát triển của một quốc gia.', N'/dist/hp/audio/development (1).MP3', CAST(0x0000A54F00BD0620 AS DateTime), N'1565')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8e14a41d-7e94-45bc-bc6d-5f63221d3ddb', N'She only let her kids watch television on the weekends.', N'Cô ấy chỉ cho bọn trẻ xem ti vi vào những ngày cuối tuần.', N'/dist/hp/audio/watch (2).MP3', CAST(0x0000A54F00BD00F8 AS DateTime), N'320')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8e1b99e9-4175-434b-80e8-204a2370661a', N'Don''t grab it!', N'Đừng có túm nó!', N'/dist/hp/audio/grab (2).MP3', CAST(0x0000A54F00BD092E AS DateTime), N'1648')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8e891d70-0f1a-4014-b7c0-b6136c743b02', N'She is good at cake decorating.', N'Cô ấy rất giỏi việc trang trí bánh.', N'/dist/hp/audio/decoration (2).MP3', CAST(0x0000A54F00BD05C3 AS DateTime), N'1555')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8eaf8515-533d-458f-8460-d767bc9cf33c', N'We cut down staff to reduce the cost.', N'Chúng tôi cắt giảm nhân sự để giảm bớt chi phí.', N'/dist/hp/audio/down (2).MP3', CAST(0x0000A54F00BCF83A AS DateTime), N'78')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8eaf9bb6-f448-46c0-8ce1-c7bc852c9cc4', N'Phu My Hung new urban area is really modern and luxurious.', N'Khu đô thị mới Phú Mỹ Hưng rất hiện đại và sang trọng.', N'/dist/hp/audio/area (2).MP3', CAST(0x0000A54F00BD023B AS DateTime), N'356')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8ebe453d-c24e-4ac0-b2a1-37f4b09171f1', N'Joseph can smell gasoline here.', N'Joseph có thể ngửi thấy mùi xăng ở đây.', N'/dist/hp/audio/gasoline (2).MP3', CAST(0x0000A54F00BD08E2 AS DateTime), N'1640')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8ed9fadc-586b-4468-888c-05f523a9619d', N'Can you help me open the champagne?', N'Anh có thể mở giúp tôi chai sâm panh này không?', N'/dist/hp/audio/open (2).MP3', CAST(0x0000A54F00BCFCF9 AS DateTime), N'209')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8ef1f4ab-9665-4adf-85d4-ba9c9e472e5a', N'I will make a dessert if you make the main course.', N'Nếu bạn làm món chính thì tôi sẽ làm món tráng miệng.', N'/dist/hp/audio/make (2).MP3', CAST(0x0000A54F00BCFB96 AS DateTime), N'171')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8f73b4cf-eb09-402e-9339-8e90fbaab391', N'We want to go further.', N'Chúng tôi muốn đi xa hơn nữa.', N'/dist/hp/audio/further (1).MP3', CAST(0x0000A54F00BD082D AS DateTime), N'1620')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8f7fda89-da4f-4964-a335-b23441a53af8', N'She wore a pink dress with matching shoes.', N'Cô mặc một chiếc váy màu hồng với đôi giày phù hợp.', N'/dist/hp/audio/shoe (2).MP3', CAST(0x0000A54F00BCFE5F AS DateTime), N'248')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8fa59646-9cf2-4f89-8689-2409ea0abd48', N'Do you like snow?', N'Anh có thích tuyết không?', N'/dist/hp/audio/snow (1).MP3', CAST(0x0000A54F00BCFED5 AS DateTime), N'261')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8facf5ff-ddc3-4d89-b7e6-4c47626eb9f4', N'What is the function of this machine?', N'Chức năng của cái máy này là gì?', N'/dist/hp/audio/function (2).MP3', CAST(0x0000A54F00BD08BE AS DateTime), N'1636')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'8fcebb78-4e1a-4516-b7cf-b7f7b12f255e', N'We had a long conversation.', N'Chúng tôi đã có một cuộc nói chuyện dài.', N'/dist/hp/audio/conversation (1).MP3', CAST(0x0000A54F00BD052F AS DateTime), N'1539')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9034e48a-88ef-4d5b-bbe8-d05505b83a3f', N'Hospitals need to be kept extremely clean.', N'Bệnh viện cần được giữ hoàn toàn sạch sẽ.', N'/dist/hp/audio/clean (2).MP3', CAST(0x0000A54F00BD02C5 AS DateTime), N'371')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'907251aa-e869-4546-957f-bd469e09b6be', N'There''s not much meat in the refrigerator.', N'Không có nhiều thịt trong tủ lạnh.', N'/dist/hp/audio/meat (2).MP3', CAST(0x0000A54F00BCFBD9 AS DateTime), N'178')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'90df4001-57c7-40d1-b2ad-93e91de8d57b', N'Her hobby is reading book.', N'Sở thích của cô ấy là đọc sách.', N'/dist/hp/audio/book (2).MP3', CAST(0x0000A54F00BCF696 AS DateTime), N'34')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'90e606cc-047e-45d2-8efb-3d2a3b375b24', N'Liam is very confident about his ability.', N'Liam rất tự tin về khả năng của anh ấy.', N'/dist/hp/audio/confident (1).MP3', CAST(0x0000A54F00BD04D8 AS DateTime), N'1529')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9117744b-e089-40de-849c-b68405aca437', N'Those are his bag.', N'Những cái này là túi của anh ta.', N'/dist/hp/audio/those (1).MP3', CAST(0x0000A54F00BD004C AS DateTime), N'301')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'911c7db8-753b-43ed-a9dc-c23c36fb85b3', N'They have a cow.', N'Họ có 1 con bò cái.', N'/dist/hp/audio/cow (2).MP3', CAST(0x0000A54F00BCF7AF AS DateTime), N'63')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'912defbb-f147-4917-884b-2f40d0b69f9f', N'Natalie has an interesting conversation with Tom.', N'Natalie có cuộc nói chuyện vui vẻ với Tom.', N'/dist/hp/audio/conversation (2).MP3', CAST(0x0000A54F00BD052F AS DateTime), N'1539')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'914dd6f0-5938-4263-b59d-fce8daad6666', N'The doctor remove the bandage around her arm.', N'Bác sĩ tháo băng khỏi cánh tay con bé.', N'/dist/hp/audio/bandage (2).MP3', CAST(0x0000A54F00BD0A70 AS DateTime), N'2038')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9155c6f3-2773-4bfd-81b4-6ea70fbb19ae', N'This is an ​important document.', N'Đây là một tài liệu quan trọng.', N'/dist/hp/audio/document (1).MP3', CAST(0x0000A54F00BD069D AS DateTime), N'1577')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'91d101d6-563f-4bdf-93d7-9b67d4d2f47a', N'Music is the best way to relax.', N'Âm nhạc là cách tốt nhất để thư giãn.', N'/dist/hp/audio/music (2).MP3', CAST(0x0000A54F00BCFC40 AS DateTime), N'189')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'91de5156-4c76-4782-814f-c4fde780a73b', N'My teacher found an effective teaching method.', N'Thầy tôi đã tìm ra một phương pháp học hiệu quả.', N'/dist/hp/audio/effective (1).MP3', CAST(0x0000A54F00BD06F3 AS DateTime), N'1586')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'91f09d2b-42d2-489b-878e-7499da7ee767', N'I didn''t recognize him because he has completely changed.', N'Tôi không nhận ra anh ấy vì anh ấy đã thay đổi hoàn toàn.', N'/dist/hp/audio/him (2).MP3', CAST(0x0000A54F00BCFA5F AS DateTime), N'137')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'92137b94-5dec-4007-9752-e27a962ab630', N'Rachel should put more effort into his study.', N'Rachel cần đặt nhiều nỗ lực hơn vào việc học của anh ấy.', N'/dist/hp/audio/effort (1).MP3', CAST(0x0000A54F00BD06FC AS DateTime), N'1587')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'92328fdc-b539-47b9-9f0d-1eb27b68b23b', N'High tides combined with strong winds can cause flooding.', N'Thuỷ triều cao kết hợp với những con gió mạnh có thể gây lũ lụt.', N'/dist/hp/audio/combine (2).MP3', CAST(0x0000A54F00BD046E AS DateTime), N'1517')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'925be155-e6e6-457d-b582-c568ef767f2d', N'The clouds finally parted and the Sun came out.', N'Cuối cùng những đám mây tan ra và Mặt Trời bắt đầu ló dạng.', N'/dist/hp/audio/sun (2).MP3', CAST(0x0000A54F00BCFF77 AS DateTime), N'278')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'92d9b57c-edda-4024-b567-f5cdb4eeef2c', N'Japan was the first foreign country she had visited.', N'Nhật Bản là quốc gia đầu tiên mà bà ấy đến thăm.', N'/dist/hp/audio/foreign (1).MP3', CAST(0x0000A54F00BD0875 AS DateTime), N'1628')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'92f570a7-cca2-4d24-93f1-866c2312c5be', N'He is looking for a place to live.', N'Anh ta đang tìm chỗ ở.', N'/dist/hp/audio/place (1).MP3', CAST(0x0000A54F00BCFD54 AS DateTime), N'219')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'931fdbbb-7945-4af8-bebc-616fca1cf755', N'She has a natural beauty .', N'Cô ấy có một nét đẹp tự nhiên.', N'/dist/hp/audio/beauty (1).MP3', CAST(0x0000A54F00BD024D AS DateTime), N'358')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'93a0b4ed-f6e3-46d9-9b1c-40ebcbb181c8', N'Bailey grabs the tail of dog.', N'Bailey túm lấy đuôi của con chó.', N'/dist/hp/audio/grab (1).MP3', CAST(0x0000A54F00BD092E AS DateTime), N'1648')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'93c9a0d7-96b1-424d-8f15-c486c5cea6bd', N'There is a bird''s nest on top of the tree behind his house.', N'Có một tổ chim trên ngọn cây phía sau nhà anh ta.', N'/dist/hp/audio/tree (2).MP3', CAST(0x0000A54F00BD0070 AS DateTime), N'305')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9409922c-5ca4-448f-9b90-75692e50af1e', N'My niece likes playing rubber ducks.', N'Cháu gái tôi thích chơi với mấy con vịt bằng cao su.', N'/dist/hp/audio/duck (1).MP3', CAST(0x0000A54F00BCF85F AS DateTime), N'82')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9432a28c-b50d-4ef1-99cc-3b6f2fbadb34', N'You should make eye contact when presenting.', N'Bạn nên giao tiếp bằng mắt khi thuyết trình.', N'/dist/hp/audio/eye (2).MP3', CAST(0x0000A54F00BCF8B3 AS DateTime), N'91')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'945a61dd-0118-4557-b0a0-c5cef08d845e', N'The trip from Ho Chi Minh city to Phnom Penh takes about 6 hours by bus.', N'Chuyến đi từ thành phố Hồ Chí Minh đến Phnom Penh mất 6 tiếng bằng xe buýt.', N'/dist/hp/audio/trip (2).MP3', CAST(0x0000A54F00BD0078 AS DateTime), N'306')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9462d38c-9cdb-4a3b-8c22-f8cc6f7cd777', N'I help her get clothe in a new dress.', N'Tôi giúp cô ấy mặc chiếc váy mới.', N'/dist/hp/audio/clothe (1).MP3', CAST(0x0000A54F00BD02DF AS DateTime), N'374')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9468e5f9-433b-454a-92e5-b1a35de3dca6', N'They have closely associated with the government.', N'Họ đã liên kết chặt chẽ với chính phủ.', N'/dist/hp/audio/associate (2).MP3', CAST(0x0000A54F00BD0A40 AS DateTime), N'2033')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'94cf8f4c-c722-43b6-a8aa-1b5443fb30c2', N'She has a new job in a store.', N'Cô ấy đã tìm được một công việc mới ở một cửa hàng.', N'/dist/hp/audio/store (1).MP3', CAST(0x0000A54F00BCFF3F AS DateTime), N'272')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'94e7a6c3-d947-4561-976d-fc6e14765813', N'There is a basic fault in the design.', N'Có một lỗi trong bản thiết kế này.', N'/dist/hp/audio/basic (1).MP3', CAST(0x0000A54F00BCF630 AS DateTime), N'23')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9521d759-621a-4fc4-89d9-51df89316f60', N'My mother was 18 when she got married.', N'Mẹ tôi kết hôn lúc 18 tuổi.', N'/dist/hp/audio/mother (2).MP3', CAST(0x0000A54F00BCFC2D AS DateTime), N'187')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'965219fe-d673-4c7b-8177-477beb5867ee', N'She has long dark hair.', N'Cô ấy có một mái tóc đen dài.', N'/dist/hp/audio/dark (1).MP3', CAST(0x0000A54F00BD0338 AS DateTime), N'384')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9657564f-34cb-4c14-aa6b-d4005de33bfa', N'Rachel sends me a document by email.', N'Rachel gửi tài liệu cho tôi bằng thư điện tử.', N'/dist/hp/audio/document (2).MP3', CAST(0x0000A54F00BD069D AS DateTime), N'1577')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'965c4c83-d77f-48fb-8947-2775b2903bcc', N'The children are reading books.', N'Bọn trẻ đang đọc sách.', N'/dist/hp/audio/read (1).MP3', CAST(0x0000A54F00BCFD9C AS DateTime), N'227')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'96c10ace-97f7-488c-896e-345e6fdf3fe6', N'This idea only exists in your head.', N'Ý tưởng này chỉ có trong đầu bạn mà thôi.', N'/dist/hp/audio/exist (2).MP3', CAST(0x0000A54F00BD07BB AS DateTime), N'1607')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'970a761f-9cbf-4d2c-a42e-fc8acf22860e', N'We will take a boat to Con Dao island.', N'Chúng tôi sẽ đi thuyền ra Côn Đảo.', N'/dist/hp/audio/boat (1).MP3', CAST(0x0000A54F00BD0272 AS DateTime), N'362')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'97140f83-2a4f-430a-bd34-8240b2527f63', N'They started a fire to bake bricks.', N'Họ đốt lửa để nung gạch.', N'/dist/hp/audio/bake (1).MP3', CAST(0x0000A54F00BD0A67 AS DateTime), N'2037')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'972bc850-398a-4108-8db0-4bd72f03c9a6', N'They will never get there in time.', N'Họ sẽ chẳng thể đến đó đúng giờ.', N'/dist/hp/audio/there (1).MP3', CAST(0x0000A54F00BD0014 AS DateTime), N'295')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'97a62bea-39ad-4470-b2b9-5fd94acab74c', N'That clock is not accurate.', N'Cái đồng hồ đó không còn chính xác nữa.', N'/dist/hp/audio/accurate (2).MP3', CAST(0x0000A54F00BD0986 AS DateTime), N'2018')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'97d38761-4fe3-4814-a134-43cda416c41e', N'How high is Fansipan?', N'Núi Phan-xi-păng cao bao nhiêu?', N'/dist/hp/audio/high (1).MP3', CAST(0x0000A54F00BCFA54 AS DateTime), N'136')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'97e1cc18-a3b6-4001-b4d6-006b751b401c', N'They communicate with each other through body language.', N'Họ giao tiếp với nhau bằng ngôn ngữ cơ thể.', N'/dist/hp/audio/communicate (1).MP3', CAST(0x0000A54F00BD048A AS DateTime), N'1520')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'986e6350-5386-4f97-9ceb-d902e1f44f2c', N'I will only drink tea or coffee.', N'Tôi sẽ chỉ uống trà hoặc cà phê.', N'/dist/hp/audio/or (1).MP3', CAST(0x0000A54F00BCFD03 AS DateTime), N'210')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'98705eae-67c7-4286-8bd6-4efcc5e15d3e', N'He couldn''t find her address.', N'Anh ta không thể tìm thấy địa chỉ của cô ấy.', N'/dist/hp/audio/find (2).MP3', CAST(0x0000A54F00BCF8F4 AS DateTime), N'98')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'98ad0302-923e-4b0f-a3c2-5612f5654f4e', N'You can ask any question about me.', N'Các em có thể hỏi bất cứ câu hỏi nào về cô.', N'/dist/hp/audio/ask (2).MP3', CAST(0x0000A54F00BCF5DC AS DateTime), N'14')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'98db68e2-ad44-4125-a1fe-c1d00c9152de', N'Sit down, please!', N'Vui lòng ngồi xuống ghế!', N'/dist/hp/audio/please (1).MP3', CAST(0x0000A54F00BCFD67 AS DateTime), N'221')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'991908a3-f568-4166-8b9b-6daae0e77f77', N'She''s very anxious about her health.', N'Bà ấy rất lo lắng về sức khoẻ của mình.', N'/dist/hp/audio/anxious (1).MP3', CAST(0x0000A54F00BD0A10 AS DateTime), N'2028')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9956347d-0185-4f18-bf00-563bf6f43509', N'You shouldn''t go out in the present circumstances.', N'Bạn không nên ra ngoài trong hoàn cảnh hiện tại.', N'/dist/hp/audio/circumstance (2).MP3', CAST(0x0000A54F00BD0B37 AS DateTime), N'2057')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'995d7e21-07d4-4d0d-bd12-2cc21f6563fa', N'Three years ago, I saw a field of corn.', N'Tôi đã từng nhìn thấy một cánh đồng bắp cách nay 3 năm.', N'/dist/hp/audio/corn (2).MP3', CAST(0x0000A54F00BD02F0 AS DateTime), N'376')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'99b2f6e4-c582-4253-8bf4-d74f95b85cc6', N'Don''t drive too fast, you will be in danger.', N'Đừng lái quá nhanh, anh sẽ gặp nguy hiểm đấy.', N'/dist/hp/audio/drive (2).MP3', CAST(0x0000A54F00BD0395 AS DateTime), N'394')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'99e403cf-191a-4a40-a1d9-bf2a851af796', N'Max will confirm next Tuesday.', N'Max sẽ xác nhận lại vào thứ 3 tuần tới.', N'/dist/hp/audio/confirm (1).MP3', CAST(0x0000A54F00BD04E2 AS DateTime), N'1530')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9a3dd6af-9a79-49a3-8427-2c21c6176f10', N'There is something on your back.', N'Có cái gì sau lưng cậu kìa.', N'/dist/hp/audio/back (1).MP3', CAST(0x0000A54F00BCF5F6 AS DateTime), N'17')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9aae9feb-e7e8-45d0-a8fc-480fe9b5f200', N'What''s his name?', N'Tên anh ta là gì vậy?', N'/dist/hp/audio/his (1).MP3', CAST(0x0000A54F00BCFA6A AS DateTime), N'138')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9ae23473-e40c-4c08-81d8-6f90dd57b56f', N'Would you like ice in your lemonade?', N'Chị có muốn bỏ đá vào ly nước chanh không ạ?', N'/dist/hp/audio/ice (2).MP3', CAST(0x0000A54F00BCFAA9 AS DateTime), N'145')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9aecf2e4-011a-46f5-a0a5-c31f7799d793', N'Is he still in the crowd?', N'Anh ta vẫn ở trong đám đông phải không?', N'/dist/hp/audio/in (1).MP3', CAST(0x0000A54F00BCFABB AS DateTime), N'147')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9c242c9b-3bed-4d53-84fb-54bf4d3e4eb8', N'She wore a pearl necklace around her neck.', N'Bà ấy đeo một chuỗi ngọc trai quanh cổ.', N'/dist/hp/audio/neck (2).MP3', CAST(0x0000A54F00BCFC66 AS DateTime), N'193')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9c2710f0-7877-4001-854a-c9ee3c47f898', N'I don''t like fish because of its bones.', N'Tôi không thích cá bởi vì xương của nó.', N'/dist/hp/audio/bone (2).MP3', CAST(0x0000A54F00BD027B AS DateTime), N'363')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9cee2aec-61eb-40a0-b950-bcdee09a9c4a', N'I stay awake all night.', N'Tôi nằm thao thức suốt đêm.', N'/dist/hp/audio/night (2).MP3', CAST(0x0000A54F00BCFC8A AS DateTime), N'197')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9d4cb784-4886-4901-9ab0-2019a10ed3ce', N'You should bring some water.', N'Các bạn nên mang theo một ít nước.', N'/dist/hp/audio/bring (1).MP3', CAST(0x0000A54F00BCF6C4 AS DateTime), N'39')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9d5ebea7-7e41-4829-b368-4c79b31451da', N'There are many kinds of fuel in the world.', N'Trên thế giới có nhiều loại nhiên liệu.', N'/dist/hp/audio/fuel (2).MP3', CAST(0x0000A54F00BD08B5 AS DateTime), N'1635')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9daa5272-e4f3-40ee-9e7e-b31b32b0ceda', N'Tyler, your closet is dirty.', N'Tyler à, tủ đồ của con dơ quá đấy.', N'/dist/hp/audio/closet (1).MP3', CAST(0x0000A54F00BD0453 AS DateTime), N'1514')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9dacc128-47ba-41fa-925f-14149a6589fe', N'Lily''s collection contains 200 shoes.', N'Bộ sưu tập của Lily có 200 đôi giày.', N'/dist/hp/audio/collection (2).MP3', CAST(0x0000A54F00BD045C AS DateTime), N'1515')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9dd7bcb8-6214-4efd-a530-712f5d6f129a', N'Don''t get too close to that dog, Elsa.', N'Elsa, đừng đến gần con chó đó.', N'/dist/hp/audio/that (2).MP3', CAST(0x0000A54F00BD0001 AS DateTime), N'293')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9de87bc1-e170-47c5-86f1-80c81dadbb9d', N'She has dark curly hair.', N'Cô ấy có một mái tóc đen và xoăn.', N'/dist/hp/audio/hair (1).MP3', CAST(0x0000A54F00BCF9DC AS DateTime), N'124')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9e66ab1b-f9b5-4438-a17c-c4305c295c0a', N'The farmer was sad because he lost this crop.', N'Nông dân buồn bã vì vụ mùa thất thu.', N'/dist/hp/audio/crop (1).MP3', CAST(0x0000A54F00BD0303 AS DateTime), N'378')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9ed06abc-dec3-4b82-823e-eca132f28526', N'He is a very kind man.', N'Anh ta là một người rất tử tế.', N'/dist/hp/audio/kind (1).MP3', CAST(0x0000A54F00BCFAEF AS DateTime), N'153')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9eec5e4b-9dc5-4d88-80ca-b58ecaa0bb5e', N'Most animals have four legs.', N'Hầu hết các loài động vật có 4 chân.', N'/dist/hp/audio/four (2).MP3', CAST(0x0000A54F00BCF939 AS DateTime), N'106')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9f824c3c-8f72-4ba1-b4c8-63ff1ed91539', N'I''m ashamed of myself.', N'Tôi thấy hổ thẹn với bản thân mình.', N'/dist/hp/audio/ashamed (1).MP3', CAST(0x0000A54F00BD0A2C AS DateTime), N'2031')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9f9e0eee-260a-4016-9cfd-70b10d9f0a56', N'She came home late last night.', N'Tối qua cô ấy về nhà trễ.', N'/dist/hp/audio/home (2).MP3', CAST(0x0000A54F00BCFA72 AS DateTime), N'139')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'9fafc694-d396-4fb3-a13e-da77fe14283a', N'I help a blind cross the road.', N'Con đã giúp một người bị mù băng qua đường.', N'/dist/hp/audio/help (1).MP3', CAST(0x0000A54F00BCFA35 AS DateTime), N'133')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a00f52b9-3505-404f-9a52-88f3ed73376b', N'Today, I helped a man cross the road.', N'Hôm nay tôi đã giúp một cụ già băng qua đường.', N'/dist/hp/audio/cross (2).MP3', CAST(0x0000A54F00BD030C AS DateTime), N'379')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a011fa72-7a2b-4e03-8a5d-a3e1987033b1', N'Whose bag is this?', N'Cái túi này của ai vậy?', N'/dist/hp/audio/whose (2).MP3', CAST(0x0000A54F00BD0166 AS DateTime), N'332')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a08ec99f-5fa1-4ea9-96ed-5b56cf9fc98e', N'Their parents are always fun when we come.', N'Cha mẹ của họ luôn vui vẻ khi chúng tôi đến chơi.', N'/dist/hp/audio/their (2).MP3', CAST(0x0000A54F00BD000B AS DateTime), N'294')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a1137c5a-b41c-4391-8e72-c91d01b58944', N'Can you start early next month?', N'Anh có thể bắt đầu làm việc vào đầu tháng không?', N'/dist/hp/audio/start (2).MP3', CAST(0x0000A54F00BCFF24 AS DateTime), N'269')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a1197070-7e62-40c2-9280-469383e1b882', N'My mother is busy in the kitchen.', N'Mẹ tôi đang bận rộn trong bếp.', N'/dist/hp/audio/busy (2).MP3', CAST(0x0000A54F00BCF6DF AS DateTime), N'42')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a1297d8c-3a8c-42d5-aa64-1565bf39c908', N'Do you want to have lunch now or wait later?', N'Ông có muốn ăn trưa bây giờ luôn không hay chờ lát nữa?', N'/dist/hp/audio/or (2).MP3', CAST(0x0000A54F00BCFD03 AS DateTime), N'210')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a14a4631-4068-4e43-b4f2-9472d7fe89a4', N'The house is surrounded by a white fence.', N'Ngôi nhà được bao quanh bởi một hàng rào màu trắng.', N'/dist/hp/audio/fence (2).MP3', CAST(0x0000A54F00BD083F AS DateTime), N'1622')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a1711c97-5aae-45c3-a2d7-c72619fbaec7', N'Did you send me an email?', N'Anh đã gửi cho tôi một bức thư điện tử phải không?', N'/dist/hp/audio/send (2).MP3', CAST(0x0000A54F00BCFE42 AS DateTime), N'245')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a255c39f-af3d-48e8-bbde-02c09f552743', N'Grace has grey eyes.', N'Grace có đôi mắt xám.', N'/dist/hp/audio/gray (1).MP3', CAST(0x0000A54F00BCF9A1 AS DateTime), N'117')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a2591cfd-f512-4963-aacb-f527b5f8d736', N'Hurry up! You''re so slow.', N'Nhanh lên đi! Cậu chậm chạp quá đấy.', N'/dist/hp/audio/slow (1).MP3', CAST(0x0000A54F00BCFEC2 AS DateTime), N'259')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a290ee9b-a83b-4209-a662-37d8dd85d333', N'I''m ​worried about John.', N'Tôi lo lắng cho John.', N'/dist/hp/audio/about (2).MP3', CAST(0x0000A54F00BCF56B AS DateTime), N'1')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a290ee9b-a83b-4209-a662-37d8de85d333', N'You shouldn’t add sugar in that.', N'Đừng thêm đường vào đó.', N'/dist/hp/audio/add (1).MP3', CAST(0x0000A54F00BCF56B AS DateTime), N'2')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a290ee9b-a83b-4209-a662-37d8de85df33', N'What is that film about?', N'Bộ phim đó nói về cái gì vậy?', N'/dist/hp/audio/about (1).MP3', CAST(0x0000A54F00BCF56B AS DateTime), N'1')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a2c98fba-e828-4200-9cc5-d0f712546caf', N'Adam frightens me when he drives so fast.', N'Adam làm tôi hoảng sợ khi anh ta lái xe quá nhanh.', N'/dist/hp/audio/frighten (1).MP3', CAST(0x0000A54F00BD08A3 AS DateTime), N'1633')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a2ed4127-e456-44ed-9b18-bd9473dc6a71', N'He want to build a restaurant chain.', N'Anh ấy muốn xây dựng một chuỗi nhà hàng.', N'/dist/hp/audio/chain (1).MP3', CAST(0x0000A54F00BD03E6 AS DateTime), N'1502')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a2f20b3b-91b8-4789-9763-3ad9f3e76a29', N'Her father was also an engineer.', N'Bố cô ấy cũng là một kĩ sư.', N'/dist/hp/audio/also (1).MP3', CAST(0x0000A54F00BD020F AS DateTime), N'351')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a387ea07-a6d8-4b74-a88d-8511205e6da2', N'Look! The bus is over there.', N'Nhìn kìa! Xe buýt ở đằng kia.', N'/dist/hp/audio/look (1).MP3', CAST(0x0000A54F00BCFB83 AS DateTime), N'169')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a3d7fbab-e6f3-4788-be3c-abc3bd9a5728', N'It tooks a lot of effort to celebrate the event.', N'Tôi đã dành rất nhiều nỗ lực để tổ chức sự kiện.', N'/dist/hp/audio/effort (2).MP3', CAST(0x0000A54F00BD06FC AS DateTime), N'1587')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a4069482-9bac-4c69-8e30-797e483ae469', N'He lives on Tran Hung Dao street.', N'Ông ấy ở trên đường Trần Hưng Đạo.', N'/dist/hp/audio/live (1).MP3', CAST(0x0000A54F00BCFB70 AS DateTime), N'167')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a419900a-2fa9-47d4-a6ca-618595f0e5ff', N'He jumped out of bed.', N'Thằng bé nhảy ra khỏi giường.', N'/dist/hp/audio/out (1).MP3', CAST(0x0000A54F00BCFD14 AS DateTime), N'212')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a44e50e5-ecc9-49d0-ad8c-59e163dac5cf', N'The Sun was down.', N'Mặt Trời đã lặn.', N'/dist/hp/audio/down (1).MP3', CAST(0x0000A54F00BCF83A AS DateTime), N'78')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a4cb91b5-348e-441f-b617-7707f15abc44', N'Will we play on the beach, mom?', N'Chúng con sẽ được chơi ở biển phải không mẹ?', N'/dist/hp/audio/play (1).MP3', CAST(0x0000A54F00BCFD5E AS DateTime), N'220')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a4da9be9-6304-4648-b731-9e82c92c5da8', N'The human body temperature is 37 degree celsius.', N'Nhiệt độ cơ thể người là 37 độ C.', N'/dist/hp/audio/body (2).MP3', CAST(0x0000A54F00BCF68B AS DateTime), N'33')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a4db305d-65cd-4ce5-9069-b5d616c9489d', N'The cycle lasts three months.', N'Chu trình này kéo dài 3 tháng.', N'/dist/hp/audio/cycle (1).MP3', CAST(0x0000A54F00BD059F AS DateTime), N'1551')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a4fe78db-d980-4be4-8b1a-e7055c048d94', N'Fish is good for your health.', N'Cá rất tốt cho sức khỏe của bạn.', N'/dist/hp/audio/fish (1).MP3', CAST(0x0000A54F00BCF905 AS DateTime), N'100')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a511e088-14d8-449d-b1c5-dab4cbba7efd', N'She is the only girl in my class.', N'Cô ấy là đứa con gái duy nhất của lớp tôi.', N'/dist/hp/audio/girl (1).MP3', CAST(0x0000A54F00BCF9CC AS DateTime), N'122')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a541653f-9354-4d40-a05b-5c4660a9acf3', N'I assume we need more time.', N'Anh nghĩ là chúng ta cần thêm một chút thời gian.', N'/dist/hp/audio/assume (2).MP3', CAST(0x0000A54F00BD0A54 AS DateTime), N'2035')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a56f1d37-ff7b-451a-8257-b724433409fe', N'The soldiers who died in the war was buried in city cemetery.', N'Những người lính đã hy sinh trong chiến tranh được an táng ở nghĩa trang thành phố.', N'/dist/hp/audio/bury (2).MP3', CAST(0x0000A54F00BD0AD2 AS DateTime), N'2047')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a58ef50c-4fc8-4195-8b4a-412c8adcc12e', N'He works as a clerk for a big corporation.', N'Anh ấy làm việc với tư cách là thư ký của một tập đoàn lớn.', N'/dist/hp/audio/clerk (2).MP3', CAST(0x0000A54F00BD0B54 AS DateTime), N'2059')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a5f49fa4-a665-42c3-92e4-127dc069128f', N'She is standing among the crowd.', N'Cô ta đang đứng giữa đám đông.', N'/dist/hp/audio/among (1).MP3', CAST(0x0000A54F00BD0221 AS DateTime), N'353')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a64842d4-20ed-4ad2-93f5-2c5e316b0799', N'She gets a new dress.', N'Cô ấy nhận được một cái váy mới.', N'/dist/hp/audio/get (1).MP3', CAST(0x0000A54F00BCF985 AS DateTime), N'114')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a685e5d4-9058-426f-9978-610485423ea6', N'It''s good to see you again.', N'Rất vui khi được gặp lại bạn.', N'/dist/hp/audio/see (1).MP3', CAST(0x0000A54F00BCFE30 AS DateTime), N'243')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a6dde52a-2c2b-4e55-8846-c890e2ff1e0a', N'Did you ask the price of the room?', N'Bạn đã hỏi giá căn phòng đó chưa?', N'/dist/hp/audio/ask (1).MP3', CAST(0x0000A54F00BCF5DC AS DateTime), N'14')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a71ad391-248f-48c0-9c99-e029ae0fd374', N'Why did you choose to live in Ho Chi Minh city?', N'Tại sao bạn chọn sống ở thành phố Hồ Chí Minh?', N'/dist/hp/audio/choose (2).MP3', CAST(0x0000A54F00BD0326 AS DateTime), N'382')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a767964d-828b-4003-88f2-41a63e554f0d', N'Please confirm your order.', N'Xin vui lòng xác nhận lại đơn đặt hàng của bạn.', N'/dist/hp/audio/confirm (2).MP3', CAST(0x0000A54F00BD04E2 AS DateTime), N'1530')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a78c47ea-69d2-4bdc-b34b-6abc48ec00bb', N'The film is based on a true story.', N'Bộ phim dựa trên một câu chuyện có thật.', N'/dist/hp/audio/true (2).MP3', CAST(0x0000A54F00BD01F5 AS DateTime), N'348')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a7cb8c72-c9b5-4ebe-ad8d-865fea9100bd', N'The water was rising fast.', N'Nước đang dâng lên rất nhanh.', N'/dist/hp/audio/water (1).MP3', CAST(0x0000A54F00BD0101 AS DateTime), N'321')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a7e488ca-d1a3-4783-8507-9b3f9e6223e4', N'I''m going to get my haircut.', N'Tôi sẽ đi cắt tóc.', N'/dist/hp/audio/hair (2).MP3', CAST(0x0000A54F00BCF9DC AS DateTime), N'124')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8196741-3b05-49ea-9bd2-e40a1cb666c2', N'Would you like some fruit for dessert?', N'Anh có muốn một chút trái cây tráng miệng không?', N'/dist/hp/audio/fruit (1).MP3', CAST(0x0000A54F00BCF960 AS DateTime), N'110')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a83df56f-32a7-484a-b400-158eba526cd5', N'I need a table in my bedroom to work.', N'Tôi cần một cái bàn ở trong phòng ngủ để làm việc.', N'/dist/hp/audio/table (1).MP3', CAST(0x0000A54F00BCFF89 AS DateTime), N'280')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a85ba676-2c7e-438e-bac2-e0e97c8ed135', N'Her mother gives me a cupcake.', N'Mẹ của chị ấy cho tôi một cái bánh nướng nhỏ.', N'/dist/hp/audio/give (1).MP3', CAST(0x0000A54F00BCF9D4 AS DateTime), N'123')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8610a06-3d99-4e49-b3f7-0cd179d11a24', N'The sky is as black as ink.', N'Bầu trời tối đen như mực.', N'/dist/hp/audio/black (1).MP3', CAST(0x0000A54F00BCF671 AS DateTime), N'30')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a89e820d-6540-46ce-9715-587152d97688', N'This project started one month ago.', N'Dự án này đã bắt đầu cách đây một tháng.', N'/dist/hp/audio/ago (2).MP3', CAST(0x0000A54F00BD0206 AS DateTime), N'350')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8b67e56-8fd1-4f92-a6ee-f15f25fefa0d', N'I usually buy goods in the supermarket.', N'Tôi thường mua hàng hóa ở siêu thị.', N'/dist/hp/audio/goods (1).MP3', CAST(0x0000A54F00BD0924 AS DateTime), N'1647')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8c81416-999e-4550-b67e-751651ff0e5f', N'My name is Anna, but you can call me Ann.', N'Tên tôi là Anna, bạn cũng có thể gọi tôi là Ann.', N'/dist/hp/audio/call (2).MP3', CAST(0x0000A54F00BCF704 AS DateTime), N'46')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8cc95ed-395c-45da-bbcd-384c4d578e71', N'I''ll show you how to load the software.', N'Anh sẽ chỉ cho em cách tải một phần mềm.', N'/dist/hp/audio/how (2).MP3', CAST(0x0000A54F00BCFA9F AS DateTime), N'144')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a8d04898-5e2b-4d4e-bbd7-a6284257aa5a', N'Most junk food is high in sugar.', N'Hầu hết các đồ ăn vặt có một lượng đường cao.', N'/dist/hp/audio/sugar (1).MP3', CAST(0x0000A54F00BCFF65 AS DateTime), N'276')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a92a89bf-610b-4600-a688-0410dcb31342', N'He gives his seat on the bus to a pregnant woman.', N'Anh ấy nhường chỗ ngồi của mình trên xe buýt cho một người phụ nữ mang thai.', N'/dist/hp/audio/seat (2).MP3', CAST(0x0000A54F00BCFE25 AS DateTime), N'242')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a92d779f-248b-4775-bdee-08bae1875f1d', N'My daughter began learning violin at the age of six.', N'Con gái tôi bắt đầu học đàn vĩ cầm từ lúc 6 tuổi.', N'/dist/hp/audio/age (2).MP3', CAST(0x0000A54F00BCF587 AS DateTime), N'5')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a949eb7d-a4f2-4f4b-a312-d362ed8da8f6', N'His sword blade is really sharp.', N'Lưỡi kiếm của anh ta rất bén.', N'/dist/hp/audio/blade (2).MP3', CAST(0x0000A54F00BD0A91 AS DateTime), N'2040')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'a9a3adfa-f5d3-4162-a55b-9d3e7218e80b', N'Ho Chi Minh city is a big city.', N'Thành phố Hồ Chí Minh là một thành phố lớn.', N'/dist/hp/audio/city (1).MP3', CAST(0x0000A54F00BCF745 AS DateTime), N'52')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aa1f1a32-c7a7-48fe-ae69-26d643300b81', N'Her brother is living in Japan.', N'Anh của cô ấy đang sống ở Nhật.', N'/dist/hp/audio/brother (1).MP3', CAST(0x0000A54F00BCF6CD AS DateTime), N'40')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aa4ed009-dad5-4a5c-bac7-4d52475f0e41', N'He likes to walk around the park every morning.', N'Ông ấy thích đi bộ quanh công viên mỗi buổi sáng.', N'/dist/hp/audio/walk (2).MP3', CAST(0x0000A54F00BD00CB AS DateTime), N'315')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aa768a7a-380d-4f15-92e5-c68aab7d1050', N'Which is your?', N'Cái nào là của bạn vậy?', N'/dist/hp/audio/which (1).MP3', CAST(0x0000A54F00BD0149 AS DateTime), N'329')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aa9d4769-5cce-49e0-928a-80706946989d', N'Children should brush their teeth before going to bed.', N'Trẻ em nên đánh răng trước khi đi ngủ.', N'/dist/hp/audio/teeth (2).MP3', CAST(0x0000A54F00BCFFEE AS DateTime), N'291')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aaa2e358-5161-4c76-a823-79c4a8facb90', N'If I had money, I would travel around the world.', N'Nếu tôi có tiền tôi sẽ đi du lịch khắp thế giới.', N'/dist/hp/audio/if (2).MP3', CAST(0x0000A54F00BCFAB2 AS DateTime), N'146')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aad2c762-748b-4d6c-aff7-a2cfcd0207c6', N'You are late again this morning.', N'Sáng nay cậu lại đi trễ nữa.', N'/dist/hp/audio/morning (1).MP3', CAST(0x0000A54F00BCFC23 AS DateTime), N'186')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aadeb791-3853-4b37-a0ff-9288d9197056', N'Sophia was married to a company chairman.', N'Sophia đã kết hôn với chủ tịch của công ty.', N'/dist/hp/audio/chairman (2).MP3', CAST(0x0000A54F00BD03F0 AS DateTime), N'1503')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ab26860b-dec9-48d5-b1a5-f985e81b3674', N'Have you recieved the certificate yet?', N'Cậu đã nhận giấy chứng nhận chưa?', N'/dist/hp/audio/certificate (1).MP3', CAST(0x0000A54F00BD03DD AS DateTime), N'1501')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ab7e8a0b-374d-4e72-9972-07c38bf85c09', N'How do you use this machine?', N'Cái máy này dùng như thế nào vậy?', N'/dist/hp/audio/use (1).MP3', CAST(0x0000A54F00BD00AF AS DateTime), N'312')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ab9afd3b-aa20-411c-a1a3-90ea5ba1517d', N'Vietcombank was established in 1963.', N'Ngân hàng Vietcombank được thành lập năm 1963.', N'/dist/hp/audio/establish (2).MP3', CAST(0x0000A54F00BD079D AS DateTime), N'1604')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'abc7a3ac-7b12-4726-adff-e65e38d700a0', N'Joel went further than he thought.', N'Joel đã tiến xa hơn xanh ấy nghĩ.', N'/dist/hp/audio/further (2).MP3', CAST(0x0000A54F00BD082D AS DateTime), N'1620')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'abd75e18-c462-4bb2-a7a6-bca2840738ca', N'She is the CEO of a famous company.', N'Bà ấy là tổng giám đốc điều hành của một công ty nổi tiếng.', N'/dist/hp/audio/she (1).MP3', CAST(0x0000A54F00BCFE55 AS DateTime), N'247')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'abe20457-eb4d-4f35-b96b-5f795717d221', N'He caught the boy smoking behind the house.', N'Ông ta bắt gặp thằng bé hút thuốc phía sau nhà.', N'/dist/hp/audio/catch (2).MP3', CAST(0x0000A54F00BD02B2 AS DateTime), N'369')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ac349ce0-b9c8-4847-9006-a1ea5595fb0c', N'He has a wound on the chin.', N'Ông ấy có một vết thương ở cằm.', N'/dist/hp/audio/chin (2).MP3', CAST(0x0000A54F00BD0B24 AS DateTime), N'2056')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ac9cea8b-11be-45ec-aa27-ad50680bd967', N'There are about 30,000 species of fish in the world.', N'Trên thế giới có khoảng 30.000 loài cá khác nhau.', N'/dist/hp/audio/fish (2).MP3', CAST(0x0000A54F00BCF905 AS DateTime), N'100')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'acc11580-8bb9-4527-a48a-7600a861dbdb', N'Peter and Nancy relationship is complicated.', N'Mối quan hệ của Peter và Nancy thật phức tạp.', N'/dist/hp/audio/complicated (2).MP3', CAST(0x0000A54F00BD04B5 AS DateTime), N'1525')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'acf70f8d-f489-4608-a7a0-941b05fe01f7', N'How many shoes do you have?', N'Bạn có bao nhiêu đôi giày vậy?', N'/dist/hp/audio/many (2).MP3', CAST(0x0000A54F00BCFBA7 AS DateTime), N'173')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ad56911b-88df-4fd5-bcb3-3dfb2b07c16f', N'Adam has a pair of gloves.', N'Adam có một đôi găng tay.', N'/dist/hp/audio/glove (1).MP3', CAST(0x0000A54F00BD0912 AS DateTime), N'1645')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ad8ae4ed-a0d5-4b5c-af3e-911fff042976', N'The fund is setup for poor children.', N'Quỹ được lập ra cho trẻ em nghèo.', N'/dist/hp/audio/fund (1).MP3', CAST(0x0000A54F00BD08C7 AS DateTime), N'1637')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ad9121c2-33cf-489b-b18a-37ce6f8d75cc', N'Her first visit to America will be in 2010.', N'Lần đầu tiên cô ấy đến Mỹ là vào năm 2010.', N'/dist/hp/audio/to (1).MP3', CAST(0x0000A54F00BCFFE6 AS DateTime), N'290')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ae58a9fd-4057-40ea-b6d9-583a7536fd05', N'Can Tho bridge crosses Hau river.', N'Cầu Cần Thơ bắc ngang qua sông Hậu.', N'/dist/hp/audio/cross (1).MP3', CAST(0x0000A54F00BD030C AS DateTime), N'379')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'aea7179e-0a94-4d2f-ad6b-6bd697608ffc', N'The Earth goes around the Sun.', N'Trái Đất xoay quanh Mặt Trời.', N'/dist/hp/audio/earth (1).MP3', CAST(0x0000A54F00BD03A8 AS DateTime), N'396')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'af07025c-b912-42d3-b1cf-cb55a0527aae', N'A man was killed in his house.', N'Một người đàn ông bị giết ngay tại nhà mình.', N'/dist/hp/audio/kill (1).MP3', CAST(0x0000A54F00BCFAE7 AS DateTime), N'152')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'af190969-37a3-483d-8dad-4a767477a783', N'Michelle has built a chain of 11 supermarkets across the country.', N'Michelle đã xây dựng một chuỗi gồm 11 siêu thị trên toàn quốc.', N'/dist/hp/audio/chain (2).MP3', CAST(0x0000A54F00BD03E6 AS DateTime), N'1502')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'af410e9d-1f37-446a-8610-9ef92cc7b5eb', N'I want to chew gum.', N'Tôi muốn nhai kẹo gum.', N'/dist/hp/audio/chew (2).MP3', CAST(0x0000A54F00BD0430 AS DateTime), N'1510')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'af5e3cc6-6f57-4a7d-b0b7-ced6524be576', N'My aunt is a single woman.', N'Dì tôi là một người phụ nữ độc thân.', N'/dist/hp/audio/woman (2).MP3', CAST(0x0000A54F00BD01AD AS DateTime), N'340')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b0019167-6bea-4afa-a7be-f14368c8955c', N'He is worried about development of the company.', N'Ông ấy đang lo lắng về sự phát triển của công ty.', N'/dist/hp/audio/development (2).MP3', CAST(0x0000A54F00BD0620 AS DateTime), N'1565')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b01325c5-798a-4a21-896c-9c3a46b08eed', N'You had to run to catch the bus.', N'Cậu phải chạy nhanh lên mới bắt kịp chuyến xe buýt.', N'/dist/hp/audio/run (1).MP3', CAST(0x0000A54F00BCFDF8 AS DateTime), N'237')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b01bfe33-a9e7-4d46-bb75-31304a897669', N'She have to take a test before she get the job.', N'Cô ấy phải tham gia một kì thi sát hạch trước khi nhận việc.', N'/dist/hp/audio/test (2).MP3', CAST(0x0000A54F00BCFFD2 AS DateTime), N'288')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b04b74e8-a47e-4e1c-b0e7-1866e668942d', N'We can combine hydrogen and oxygen to form water.', N'Chúng ta có thể kết hợp hi-đrô và o-xi để tạo ra nước.', N'/dist/hp/audio/combine (1).MP3', CAST(0x0000A54F00BD046E AS DateTime), N'1517')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b0f84d65-a766-4c6e-bc59-8f7b6c9c00be', N'I have to get up early tomorrow morning.', N'Sáng nay tôi phải thức dậy sớm.', N'/dist/hp/audio/early (1).MP3', CAST(0x0000A54F00BD039E AS DateTime), N'395')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b11d492c-a333-45b5-b2c5-629eba76df52', N'They spoke so fast, I couldn''t keep up.', N'Họ nói quá nhanh vì vậy tôi không thể theo kịp.', N'/dist/hp/audio/speak (2).MP3', CAST(0x0000A54F00BCFEF1 AS DateTime), N'264')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b196b8c0-d87a-43b2-8f8d-7510c7a62164', N'I don''t think it is a small problem.', N'Tôi không nghĩ nó là một vấn đề nhỏ đâu.', N'/dist/hp/audio/small (1).MP3', CAST(0x0000A54F00BCFECC AS DateTime), N'260')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b199cf2a-a7c1-4c04-a2d3-660c06504c94', N'The academic year normally begins in September.', N'Một năm học thường bắt đầu vào tháng 9.', N'/dist/hp/audio/academic (1).MP3', CAST(0x0000A54F00BD0965 AS DateTime), N'2015')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b22f0e8f-fccf-47c6-9d27-474f2b74d6fd', N'The cloud passed over the Sun.', N'Đám mây bay ngang qua Mặt Trời.', N'/dist/hp/audio/cloud (1).MP3', CAST(0x0000A54F00BCF76B AS DateTime), N'56')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b2f7c990-14d1-4142-a399-4718b978559d', N'I wasted an entire day on playing games.', N'Tôi đã lãng phí cả ngày để chơi game.', N'/dist/hp/audio/entire (1).MP3', CAST(0x0000A54F00BD0763 AS DateTime), N'1598')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b301037e-429c-4092-b1af-b5d5b4648161', N'Come and sit by me, my dear!', N'Đến đây và ngồi xuống bên bà nào cháu yêu!', N'/dist/hp/audio/by (1).MP3', CAST(0x0000A54F00BCF6FA AS DateTime), N'45')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b47642fb-1cfc-4a3a-a32c-b7a86c0eab4d', N'Victor Hugo is one of the great writers of world. ', N'Victor Hugo là một trong những nhà văn vĩ đại trên thế giới.', N'/dist/hp/audio/great (2).MP3', CAST(0x0000A54F00BCF9A9 AS DateTime), N'118')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b4dd4fbd-81d6-4e8f-8b0f-c5fbb6f21978', N'I want the information to be accurate.', N'Tôi muốn những thông tin chính xác.', N'/dist/hp/audio/accurate (1).MP3', CAST(0x0000A54F00BD0986 AS DateTime), N'2018')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b4e5d431-2466-41c2-8b70-bd1545e9bbae', N'I''m not happy with this way of working.', N'Tôi không thích cách làm việc này.', N'/dist/hp/audio/way (2).MP3', CAST(0x0000A54F00BD010A AS DateTime), N'322')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b4ee1641-7589-48fb-8764-8a6056975c09', N'Both my parents are doctors.', N'Cả cha và mẹ tôi đều là bác sĩ.', N'/dist/hp/audio/my (1).MP3', CAST(0x0000A54F00BCFC4A AS DateTime), N'190')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b50c8238-b8b7-4be5-a61b-222441553f1e', N'I have a wedding party this weekend.', N'Tuần này tôi phải dự một bữa tiệc cưới.', N'/dist/hp/audio/party (1).MP3', CAST(0x0000A54F00BCFD30 AS DateTime), N'215')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b549c304-53e2-46a5-b947-64e1bbbfc1c5', N'Has there been an accident?', N'Ở đó có tai nạn phải không?', N'/dist/hp/audio/there (2).MP3', CAST(0x0000A54F00BD0014 AS DateTime), N'295')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b567b988-95c3-443b-87e2-08c797839527', N'Let''s play game!', N'Chúng ta chơi trò gì đó đi!', N'/dist/hp/audio/game (1).MP3', CAST(0x0000A54F00BCF97D AS DateTime), N'113')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b5697014-f500-4e6c-901e-f55970cf082d', N'I told you a thousand times.', N'Tôi đã nói với anh hàng nghìn lần rồi.', N'/dist/hp/audio/thousand (1).MP3', CAST(0x0000A54F00BD0055 AS DateTime), N'302')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b5c872ca-96c1-4d07-b77b-985633124239', N'Bats usually feed at night.', N'Dơi thường ăn vào ban đêm.', N'/dist/hp/audio/bat (2).MP3', CAST(0x0000A54F00BCF639 AS DateTime), N'24')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b5c8faa6-aedb-4435-839b-9cb0422f8321', N'Was your neighbor really poor before?', N'Hàng xóm của chị trước đây rất nghèo phải không?', N'/dist/hp/audio/poor (2).MP3', CAST(0x0000A54F00BCFD6F AS DateTime), N'222')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b65f4982-9b19-4c53-8bf1-31c706f1686a', N'I will always remember you.', N'Mình sẽ luôn nhớ đến bạn.', N'/dist/hp/audio/always (1).MP3', CAST(0x0000A54F00BD0218 AS DateTime), N'352')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b6c00bf2-c60b-45d4-9490-14047b999e9a', N'You have to follow all of the rules.', N'Anh phải tuân theo mọi nguyên tắc.', N'/dist/hp/audio/rule (1).MP3', CAST(0x0000A54F00BCFDEE AS DateTime), N'236')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b6ed65f9-d56e-47a3-bfc1-e1322d3592a6', N'Jessica doesn’t have any evidence to prove herself.', N'Jessica không có bằng chứng để chứng minh cho mình.', N'/dist/hp/audio/evidence (2).MP3', CAST(0x0000A54F00BD07A7 AS DateTime), N'1605')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b7023094-611d-463b-8364-0723f8269d9a', N'He reached the goal first.', N'Thằng bé về đích đầu tiên.', N'/dist/hp/audio/first (1).MP3', CAST(0x0000A54F00BCF8FC AS DateTime), N'99')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b70f8551-dcea-49b2-9cbe-8c19a9245576', N'Hurry up! I will miss the bus.', N'Nhanh lên, bạn sẽ lỡ chuyến xe buýt mất.', N'/dist/hp/audio/miss (2).MP3', CAST(0x0000A54F00BCFBFE AS DateTime), N'182')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b750c337-2eaa-4bfe-9cbb-9bf8545240c8', N'The life cycle of the butterfly is short.', N'Vòng đời của bướm rất ngắn.', N'/dist/hp/audio/cycle (2).MP3', CAST(0x0000A54F00BD059F AS DateTime), N'1551')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b7a4249f-4af4-4d8d-bd32-3547e926ce68', N'It was dark outside and I couldn''t see anything.', N'Ngoài trời tối quá tôi không nhìn thấy gì cả.', N'/dist/hp/audio/dark (2).MP3', CAST(0x0000A54F00BD0338 AS DateTime), N'384')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b7b9aa4b-19ee-4f3f-aa06-a7f38859218f', N'I don''t know anything about that company.', N'Tôi không biết gì về công ty đó cả.', N'/dist/hp/audio/know (2).MP3', CAST(0x0000A54F00BCFB01 AS DateTime), N'155')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b80e30b4-75a0-40b5-bbae-e72f19b2f597', N'I never eat dog meat.', N'Tôi không bao giờ ăn thịt chó.', N'/dist/hp/audio/meat (1).MP3', CAST(0x0000A54F00BCFBD9 AS DateTime), N'178')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b8fbfb1a-4ef0-433e-894e-47c8a4c344f6', N'We will need to discuss.', N'Chúng ta cần thảo luận.', N'/dist/hp/audio/discuss (1).MP3', CAST(0x0000A54F00BD0367 AS DateTime), N'389')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b8fee76c-e1e5-4af4-8c50-0a18190a7bf7', N'Our boss has been extremely kind to us.', N'Ông chủ của chúng tôi rất rất tử tế với chúng tôi.', N'/dist/hp/audio/kind (2).MP3', CAST(0x0000A54F00BCFAEF AS DateTime), N'153')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b923db76-b1f6-4795-bfca-474e1683913f', N'That is a talented young football team.', N'Đó là một đội bóng trẻ tài năng.', N'/dist/hp/audio/young (2).MP3', CAST(0x0000A54F00BD01EC AS DateTime), N'347')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b9b77bd1-de37-4df8-8165-1c681056ac73', N'I didn''t know whether the fish was dead or alive.', N'Tôi không biết con cá đã chết hay còn sống.', N'/dist/hp/audio/dead (2).MP3', CAST(0x0000A54F00BD0342 AS DateTime), N'385')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'b9f8fa6e-798b-470d-a41d-596761e9dd1c', N'The entire building was fired.', N'Toàn bộ tòa nhà đã bị thiêu rụi.', N'/dist/hp/audio/entire (2).MP3', CAST(0x0000A54F00BD0763 AS DateTime), N'1598')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ba02e71d-cc42-4048-91ae-920ea4b4f189', N'The central accent is quite difficult to hear.', N'Giọng miền Trung hơi khó nghe.', N'/dist/hp/audio/accent (2).MP3', CAST(0x0000A54F00BD0971 AS DateTime), N'2016')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'baa319b4-a644-4b64-9ef8-852fc7383e39', N'What time is it?', N'Mấy giờ rồi?', N'/dist/hp/audio/time (1).MP3', CAST(0x0000A54F00BCFFDC AS DateTime), N'289')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'baf2fa1a-177e-4126-b956-d4bd6e232349', N'There’s a great demand for books nowadays.', N'Hiện nay nhu cầu về sách luôn rất lớn.', N'/dist/hp/audio/demand (2).MP3', CAST(0x0000A54F00BD05E0 AS DateTime), N'1558')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bb73b2d2-d6e4-488d-ac7d-2d4c33a16173', N'Do you want to join in the campaign against HIV/AIDS?', N'Bạn có muốn tham gia vào chiến dịch phòng chống HIV/AIDS không?', N'/dist/hp/audio/campaign (2).MP3', CAST(0x0000A54F00BD0AE4 AS DateTime), N'2049')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bbc259d0-c535-4ddf-b8b2-73775fecacd1', N'Anna will join a cultural event tonight.', N'Anna sẽ tham dự sự kiện văn hóa tối nay.', N'/dist/hp/audio/cultural (2).MP3', CAST(0x0000A54F00BD0579 AS DateTime), N'1547')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bbcc2992-b6b0-495c-8a37-1d8804faab62', N'Bacteria is often a cause of diseases.', N'Vi khuẩn thường là nguyên nhân của các căn bệnh.', N'/dist/hp/audio/bacteria (2).MP3', CAST(0x0000A54F00BD0A5E AS DateTime), N'2036')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bbf5a346-cf58-49ae-ac23-fb4411a21fac', N'I prefer coffee in the morning.', N'Tôi thích uống cà phê buổi sáng.', N'/dist/hp/audio/morning (2).MP3', CAST(0x0000A54F00BCFC23 AS DateTime), N'186')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bc315d91-863d-4bfd-9df5-c3dd4fde231a', N'I feel bad about making you sad.', N'Anh thấy thật tồi tệ khi làm cho em buồn.', N'/dist/hp/audio/bad (1).MP3', CAST(0x0000A54F00BCF5FF AS DateTime), N'18')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bc44c9eb-5ad9-4175-8ac5-fa016b4b4f56', N'Ben didn''t explain why he is late.', N'Ben đã không giải thích tại sao anh ấy đi trễ.', N'/dist/hp/audio/explain (2).MP3', CAST(0x0000A54F00BD07E6 AS DateTime), N'1612')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bc7ed66c-67d1-471c-bc3e-1cb10bd4e3bf', N'You have to jump over the stream.', N'Cậu phải nhảy qua con suối này thôi.', N'/dist/hp/audio/jump (2).MP3', CAST(0x0000A54F00BCFACC AS DateTime), N'149')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bc8322f7-025d-4dd4-9150-837ba2471c06', N'That is a war crime.', N'Hắn ta là tội phạm chiến tranh.', N'/dist/hp/audio/crime (1).MP3', CAST(0x0000A54F00BD055E AS DateTime), N'1544')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bc9890e3-4733-4b82-9f1b-149bca4cf87a', N'Jack and I go to the cinema.', N'Jack và tôi cùng đi xem phim.', N'/dist/hp/audio/and (1).MP3', CAST(0x0000A54F00BCF5A3 AS DateTime), N'8')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bd227d90-1fc2-4855-acd2-ac1f8810cab6', N'Today, we have a meeting at noon.', N'Chúng tôi có một cuộc họp vào buổi trưa.', N'/dist/hp/audio/noon (2).MP3', CAST(0x0000A54F00BCFC9C AS DateTime), N'199')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bd85894b-8874-4c17-b1ab-60154e73fe0a', N'We need to have a discussion after school.', N'Chúng tôi cần một cuộc thảo luận sau giờ học.', N'/dist/hp/audio/discussion (2).MP3', CAST(0x0000A54F00BD067E AS DateTime), N'1574')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bdccc0f3-4a4d-4462-bb15-fd4ac3a6223b', N'Have you read his new book?', N'Bạn đã đọc cuốn sách mới xuất bản của ông ấy chưa?', N'/dist/hp/audio/new (1).MP3', CAST(0x0000A54F00BCFC78 AS DateTime), N'195')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bdd9c416-aecd-4d88-8e59-dc52d4c265f4', N'She lost her father when she was six.', N'Cô ấy đã bị lạc mất cha mình khi mới sáu tuổi.', N'/dist/hp/audio/father (2).MP3', CAST(0x0000A54F00BCF8E1 AS DateTime), N'96')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bde662f4-252a-4d6d-8a36-756151511ddb', N'She went on vacation with her mum and dad.', N'Cô ấy đi nghỉ mát với cha mẹ cô ấy.', N'/dist/hp/audio/dad (2).MP3', CAST(0x0000A54F00BCF7DE AS DateTime), N'68')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'be3bce03-2f3f-42c1-a0a7-56566ec632da', N'When are you going to Hanoi?', N'Khi nào anh đi Hà Nội?', N'/dist/hp/audio/when (1).MP3', CAST(0x0000A54F00BD0137 AS DateTime), N'327')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'be4dc669-8164-4ca8-8a2c-ff989d4e7264', N'She ​looks familiar to him.', N'Cô ấy quen thuộc đối với ông ta.', N'/dist/hp/audio/familiar (2).MP3', CAST(0x0000A54F00BD0824 AS DateTime), N'1619')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'be84daaf-ad1a-4e09-b7f3-a23ea342d0b0', N'Please ensure that all doors are closed.', N'Hãy đảm bảo tất cả các cửa đều đóng.', N'/dist/hp/audio/ensure (2).MP3', CAST(0x0000A54F00BD075A AS DateTime), N'1597')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bf02dc03-bbc3-4d84-a611-f6446245a378', N'Max studied drama at university.', N'Max đã học kịch ở trường đại học.', N'/dist/hp/audio/drama (2).MP3', CAST(0x0000A54F00BD06AF AS DateTime), N'1579')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bf0aa4a5-2367-41e2-9c01-4695fab2ed64', N'The light suddenly flash.', N'Tia chớp bỗng nhiên lóe lên.', N'/dist/hp/audio/flash (1).MP3', CAST(0x0000A54F00BD0859 AS DateTime), N'1625')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bf4a539a-115c-4270-9992-c257d80d0ffb', N'That pair of shoes is too small for him.', N'Đôi giày đó quá nhỏ với anh ấy.', N'/dist/hp/audio/small (2).MP3', CAST(0x0000A54F00BCFECC AS DateTime), N'260')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bf5d3146-a1a8-49d8-b59d-2941d74de053', N'His life changed completely.', N'Cuộc đời của ông ta đã hoàn toàn thay đổi.', N'/dist/hp/audio/change (1).MP3', CAST(0x0000A54F00BD0314 AS DateTime), N'380')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bfbdd744-c2c1-4a82-bf9c-33726e439ade', N'We buy some food at the supermarket.', N'Chúng tôi mua một ít thức ăn ở siêu thị.', N'/dist/hp/audio/buy (2).MP3', CAST(0x0000A54F00BCF6F0 AS DateTime), N'44')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'bfcd3048-7737-470f-8127-1a42a348ae29', N'They are very generous people.', N'Họ là những người rất hào phóng.', N'/dist/hp/audio/they (1).MP3', CAST(0x0000A54F00BD001C AS DateTime), N'296')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c0046faf-9888-482e-904e-524e1ffb5e29', N'Andrew has a cheerful smile.', N'Andrew nở một nụ cười hào hứng.', N'/dist/hp/audio/cheerful (1).MP3', CAST(0x0000A54F00BD040B AS DateTime), N'1506')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c012b58d-69ed-41c5-900f-f9700449b41e', N'A giraffe has a long neck.', N'Hươu cao cổ có một cái cổ dài.', N'/dist/hp/audio/neck (1).MP3', CAST(0x0000A54F00BCFC66 AS DateTime), N'193')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c0152c05-eb23-4219-bf8e-12674ffdd3a7', N'Nguyen Kiem street is one way street.', N'Đường Nguyễn Kiệm là đường một chiều.', N'/dist/hp/audio/street (1).MP3', CAST(0x0000A54F00BCFF51 AS DateTime), N'274')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c0424c25-9cdf-44df-913e-dd8777a45ce4', N'The temperature has been above average.', N'Nhiệt độ đã lên cao hơn mức trung bình.', N'/dist/hp/audio/above (2).MP3', CAST(0x0000A54F00BD01FD AS DateTime), N'349')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c04c8b7b-c1a4-4de2-b6d8-47539168c5fc', N'Blake folds his arms across his chest.', N'Blake khoanh tay trước ngực.', N'/dist/hp/audio/chest (1).MP3', CAST(0x0000A54F00BD0427 AS DateTime), N'1509')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c07df339-fb28-4d1a-8a79-13acfb920d20', N'They''ve invited 200 people to their wedding. ', N'Họ đã mời 200 người đến đự đám cưới của mình.', N'/dist/hp/audio/people (2).MP3', CAST(0x0000A54F00BCFD39 AS DateTime), N'216')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c09472c6-3206-49fe-8895-a10837710c3b', N'It''s time to conduct our campaign.', N'Đã đến lúc tiến hành chiến dịch của chúng ta!', N'/dist/hp/audio/campaign (1).MP3', CAST(0x0000A54F00BD0AE4 AS DateTime), N'2049')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c1253a92-cdeb-484e-ab7f-d01d3a8d931c', N'Logan should focus on studying.', N'Logan nên tập trung vào việc học.', N'/dist/hp/audio/focus (2).MP3', CAST(0x0000A54F00BD086C AS DateTime), N'1627')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c13a6ac8-9910-45a9-88c6-e370bc7d4a2d', N'Mitchell earns $20,000 each year.', N'Mitchell kiếm được 20.00 đô một năm.', N'/dist/hp/audio/earn (1).MP3', CAST(0x0000A54F00BD06C4 AS DateTime), N'1581')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c182dce9-4d38-4844-a7dd-4c7b15d7f991', N'The walls are covered in oil painting.', N'Những bức tường được che phủ bởi tranh sơn dầu.', N'/dist/hp/audio/oil (1).MP3', CAST(0x0000A54F00BCFCDF AS DateTime), N'206')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c1a314bb-dc33-43da-88e5-e0bd4e9b833a', N'She gives me a description of each product.', N'Cô ấy đưa tôi bản mô tả của từng sản phẩm.', N'/dist/hp/audio/description (1).MP3', CAST(0x0000A54F00BD05FA AS DateTime), N'1561')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c1b8f9b6-673a-4156-a834-3c3d24823fa2', N'She caught the ball in mid-air.', N'Cô ấy bắt quả bóng trong không trung.', N'/dist/hp/audio/catch (1).MP3', CAST(0x0000A54F00BD02B2 AS DateTime), N'369')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c1cb76f5-499b-43a5-8f50-20d2f3e63369', N'She must be very proud of her son.', N'Bà ấy chắc hẳn là rất tự hào về con trai mình.', N'/dist/hp/audio/son (2).MP3', CAST(0x0000A54F00BCFEDF AS DateTime), N'262')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c210821f-815e-43ba-83b2-fb1ee8b8cc8d', N'He doesn''t gamble anymore.', N'Anh ấy không dám đánh bạc nữa.', N'/dist/hp/audio/gamble (1).MP3', CAST(0x0000A54F00BD08DA AS DateTime), N'1639')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c24237dd-d6cf-4f2d-9a25-373b18bc63a7', N'I would like to thank everyone who attended the event.', N'Tôi muốn cảm ơn tất cả mọi người đã tới tham dự sự kiện.', N'/dist/hp/audio/event (2).MP3', CAST(0x0000A54F00BCF8A1 AS DateTime), N'89')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c2563f78-5517-4521-9e2c-dd5321a28bdd', N'She anticipates what will happen.', N'Cô ấy lường trước những gì sắp xảy ra.', N'/dist/hp/audio/anticipate (1).MP3', CAST(0x0000A54F00BD09FA AS DateTime), N'2026')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c2833d2a-604e-4f79-8b15-7300c44f1150', N'Accommodations in Tokyo are very expensive.', N'Phòng ở tại thủ đô Tokyo rất đắt đỏ.', N'/dist/hp/audio/accommodation (1).MP3', CAST(0x0000A54F00BD097B AS DateTime), N'2017')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c28d8b36-181b-4720-8a2a-0afaff5043d8', N'I want a room with the double bed.', N'Tôi muốn một phòng đơn với giường đôi.', N'/dist/hp/audio/bed (2).MP3', CAST(0x0000A54F00BCF643 AS DateTime), N'25')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c2e0483d-9adf-484e-9615-93fa812ca251', N'How long will you be staying in his house?', N'Anh sẽ ở lại nhà ông ấy bao lâu?', N'/dist/hp/audio/will (2).MP3', CAST(0x0000A54F00BD0180 AS DateTime), N'335')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c325a204-0601-49db-8cc0-9a52a12e5a83', N'She rented a room above the shop.', N'Cô ấy thuê một căn phòng phía trên một cửa hàng.', N'/dist/hp/audio/above (1).MP3', CAST(0x0000A54F00BD01FD AS DateTime), N'349')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c3be9920-61fd-4b52-ae0d-6fa3292e3ae6', N'Are the children still in school?', N'Bọn trẻ vẫn ở trường phải không?', N'/dist/hp/audio/school (2).MP3', CAST(0x0000A54F00BCFE12 AS DateTime), N'240')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c3bfce68-f4a7-4ac5-a9f2-b6f2221b0e5c', N'She had to wait a long time for him.', N'Cô đã phải chờ anh rất lâu rồi.', N'/dist/hp/audio/wait (2).MP3', CAST(0x0000A54F00BD00C2 AS DateTime), N'314')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c3d42c08-7d53-433e-8655-84609573a368', N'The exercise is too complicated.', N'Bài tập này quá phức tạp.', N'/dist/hp/audio/complicated (1).MP3', CAST(0x0000A54F00BD04B5 AS DateTime), N'1525')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c401a098-3806-4d1d-b912-6c7a6f34ff99', N'Bella could not remember her duty.', N'Bella không thể nhớ nhiệm vụ của cô ấy.', N'/dist/hp/audio/duty (1).MP3', CAST(0x0000A54F00BD06BB AS DateTime), N'1580')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c4094105-ec85-4bfa-b5df-687a78b6618c', N'He gave me a bunch of red roses on Valentine Day.', N'Anh ấy đã tặng tôi một bó hoa hồng vào ngày lễ tình nhân.', N'/dist/hp/audio/rose (2).MP3', CAST(0x0000A54F00BCFDE6 AS DateTime), N'235')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c4823d50-2395-4fea-8419-570c6982772a', N'They don''t have enough money to buy a new car.', N'Họ không có đủ tiền để mua một chiếc ô tô mới.', N'/dist/hp/audio/car (2).MP3', CAST(0x0000A54F00BCF71F AS DateTime), N'48')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c49e8a6c-2c41-446f-a222-4469382610b4', N'Can you bring it to me?', N'Cậu có thể mang nó tới cho tôi được không?', N'/dist/hp/audio/bring (2).MP3', CAST(0x0000A54F00BCF6C4 AS DateTime), N'39')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c4a6ea4f-4507-423c-a50d-5f1733d50281', N'You can know her emotions easily.', N'Bạn có thể dễ dàng biết được cảm xúc của cô ấy.', N'/dist/hp/audio/emotion (1).MP3', CAST(0x0000A54F00BD0717 AS DateTime), N'1590')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c529c44d-ac6b-4df1-a936-499e8172e4e7', N'The elevator door is closed.', N'Cửa thang máy đã đóng lại rồi.', N'/dist/hp/audio/elevator (1).MP3', CAST(0x0000A54F00BD0705 AS DateTime), N'1588')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c52d9294-443c-464e-b75b-30f84ba65054', N'You can close your mouth now.', N'Bây giờ con có thể ngậm miệng lại.', N'/dist/hp/audio/mouth (1).MP3', CAST(0x0000A54F00BCFC37 AS DateTime), N'188')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c54aab0e-1d13-4b57-9296-f4e6e446dfd7', N'I have a cold.', N'Tôi bị cảm lạnh.', N'/dist/hp/audio/cold (1).MP3', CAST(0x0000A54F00BCF773 AS DateTime), N'57')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c54e3e82-1e8c-4d69-87a9-81d27cca2689', N'In my home town, there is fresh air.', N'Không khí ở quê tôi rất trong lành.', N'/dist/hp/audio/air (1).MP3', CAST(0x0000A54F00BCF590 AS DateTime), N'6')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c569e467-be75-47fd-a1e9-996183ba84c8', N'Spring is my favourite season.', N'Mùa Xuân là mùa yêu thích của tôi.', N'/dist/hp/audio/spring (2).MP3', CAST(0x0000A54F00BCFF06 AS DateTime), N'266')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c5916aef-85fb-427d-9daf-d676d2e36122', N'You look so beautiful in the wedding dress.', N'Em trông thật xinh đẹp trong bộ váy cưới.', N'/dist/hp/audio/dress (1).MP3', CAST(0x0000A54F00BD038C AS DateTime), N'393')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c59292b7-2b67-448c-873c-dfcbb64bc284', N'That''s a good idea!', N'Ý hay đấy!', N'/dist/hp/audio/good (1).MP3', CAST(0x0000A54F00BCF998 AS DateTime), N'116')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c5a90195-8b61-4636-8820-4aa0ce6bcae9', N'I would get the best grade.', N'Tớ sẽ đạt điểm tốt nhất.', N'/dist/hp/audio/grade (2).MP3', CAST(0x0000A54F00BD0938 AS DateTime), N'1649')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c5c57094-6d27-42c2-8101-d734f8e4043e', N'I brush my teeth everyday.', N'Tôi đánh răng mỗi ngày.', N'/dist/hp/audio/teeth (1).MP3', CAST(0x0000A54F00BCFFEE AS DateTime), N'291')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c5ca9412-652c-495c-b699-82317f3e79f3', N'The contest was held in America.', N'Cuộc thi được tổ chức ở Mỹ.', N'/dist/hp/audio/contest (1).MP3', CAST(0x0000A54F00BD0515 AS DateTime), N'1536')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c626049e-0193-43c5-8749-ecc4374bd686', N'The boy is not capable of learning how to swim.', N'Thằng bé không có khả năng học bơi.', N'/dist/hp/audio/capable (2).MP3', CAST(0x0000A54F00BD0AF5 AS DateTime), N'2051')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c63d2ebd-b8fe-4325-ba4e-484a0222fb5e', N'Good fortune may help you.', N'May mắn sẽ mỉm cười với bạn.', N'/dist/hp/audio/fortune (1).MP3', CAST(0x0000A54F00BD0887 AS DateTime), N'1630')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c658a864-3342-4e29-8aa7-f2d7ba48af86', N'Jessie loves to explore space.', N'Jessie thích khám phá không gian', N'/dist/hp/audio/explore (1).MP3', CAST(0x0000A54F00BD07F0 AS DateTime), N'1613')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c65c24a5-aeb4-4990-8b1e-122fe17cd342', N'You will pay in US dollar.', N'Bạn sẽ phải trả bằng đô la Mỹ.', N'/dist/hp/audio/dollar (2).MP3', CAST(0x0000A54F00BCF828 AS DateTime), N'76')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c6640b57-371b-44c3-a7f2-c4f7cac24040', N'My father strongly disagree with me.', N'Ba tôi hoàn toàn không đồng ý với tôi.', N'/dist/hp/audio/disagree (2).MP3', CAST(0x0000A54F00BD0653 AS DateTime), N'1570')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c7321503-64ad-43bc-8fcc-443d9c530bc0', N'My closet is filled with dresses.', N'Tủ quần áo của tôi đầy váy.', N'/dist/hp/audio/closet (2).MP3', CAST(0x0000A54F00BD0453 AS DateTime), N'1514')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c743271c-63ea-4abc-8b28-627b60986293', N'The store buys medical equipments.', N'Cửa hàng bán những thiết bị y tế.', N'/dist/hp/audio/equipment (2).MP3', CAST(0x0000A54F00BD0781 AS DateTime), N'1601')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c7b6f462-27dd-409a-abd8-d509a603ec3e', N'I expect an answer from you. ', N'Tôi mong một câu trả lời từ anh.', N'/dist/hp/audio/answer (1).MP3', CAST(0x0000A54F00BD022A AS DateTime), N'354')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c81a84a1-73d2-4da9-906f-f87357ae7278', N'One day, I''ll be rich and famous all over the world.', N'Một ngày nào đó tôi sẽ trở nên giàu có và nổi tiếng khắp thế giới.', N'/dist/hp/audio/famous (2).MP3', CAST(0x0000A54F00BD03CB AS DateTime), N'400')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c84ed934-6ad6-45b9-ac00-6b60c9ffb6b3', N'See you again at the airport.', N'Hẹn gặp lại bạn ở sân bay.', N'/dist/hp/audio/at (2).MP3', CAST(0x0000A54F00BCF5E5 AS DateTime), N'15')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c891d642-0f9c-4f74-9bfe-6e42db4342b8', N'Mitchell kissed her on both cheeks.', N'Mitchell hôn lên cả hai má cô ấy.', N'/dist/hp/audio/cheek (2).MP3', CAST(0x0000A54F00BD0401 AS DateTime), N'1505')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c891e74c-38b3-4b27-8026-613f266b231c', N'I will give you a gift if you pass the test.', N'Ba sẽ tặng con một món quà nếu con vượt qua kì thi.', N'/dist/hp/audio/test (1).MP3', CAST(0x0000A54F00BCFFD2 AS DateTime), N'288')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c89600b1-a30b-40b6-8661-9586b7bcdf59', N'There is a young lady here to see you.', N'Có một phụ nữ trẻ muốn gặp ông.', N'/dist/hp/audio/lady (2).MP3', CAST(0x0000A54F00BCFB0B AS DateTime), N'156')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c8aa4a0c-9f50-4dc3-9a6d-c40d6780efa9', N'My son has toy guns.', N'Con trai tôi có vài cây súng đồ chơi.', N'/dist/hp/audio/gun (1).MP3', CAST(0x0000A54F00BCF9C3 AS DateTime), N'121')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c93e1e98-5503-4d8c-b90f-b7070f4d72ab', N'Rachel needs basic equipments.', N'Rachel cần những thiết bị cơ bản.', N'/dist/hp/audio/equipment (1).MP3', CAST(0x0000A54F00BD0781 AS DateTime), N'1601')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c9405171-e7d2-475b-b701-e470469a8338', N'They gave us a clock at the open house celebration.', N'Họ tặng chúng tôi một cái đồng hồ nhân ngày tân gia.', N'/dist/hp/audio/clock (2).MP3', CAST(0x0000A54F00BCF757 AS DateTime), N'54')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c9a747e6-2b7e-4f67-8f14-29f1b6b2f07e', N'Let me take your coat.', N'Để tôi lấy áo khoác cho bạn.', N'/dist/hp/audio/coat (1).MP3', CAST(0x0000A54F00BD02E8 AS DateTime), N'375')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c9b123c8-d44c-4e25-a09b-e3c01aa6e4b5', N'I hope my dream will come true.', N'Tôi hi vọng ước mơ của tôi sẽ trở thành hiện thực. ', N'/dist/hp/audio/dream (1).MP3', CAST(0x0000A54F00BCF842 AS DateTime), N'79')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'c9cfe276-4d96-45f6-b4e1-04bc75b5ac83', N'There is an empty cupboard in Sophia''s bedroom.', N'Có một cái tủ trống trong phòng của Sophia.', N'/dist/hp/audio/cupboard (2).MP3', CAST(0x0000A54F00BD0582 AS DateTime), N'1548')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ca37a63c-5c63-485c-97f8-8483d6ad06f5', N'My friends disagree with my idea.', N'Những người bạn của tôi không đồng ý với ý kiến đó.', N'/dist/hp/audio/disagree (1).MP3', CAST(0x0000A54F00BD0653 AS DateTime), N'1570')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ca4babd5-e4fd-4109-a0e6-9c211880e756', N'He is wearing a clean white shirt.', N'Anh ấy đang mặc một cái áo trắng tinh.', N'/dist/hp/audio/clean (1).MP3', CAST(0x0000A54F00BD02C5 AS DateTime), N'371')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ca6cc5e9-98d6-4a8b-995d-dacb63c808c9', N'My mother bakes bread for breakfast.', N'Mẹ tôi nướng bánh mì cho bữa sáng.', N'/dist/hp/audio/bake (2).MP3', CAST(0x0000A54F00BD0A67 AS DateTime), N'2037')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cac326ad-040d-451a-8afa-0074c24ff33b', N'They stood under a tree to avoid getting wet.', N'Họ đứng dưới gốc cây để tránh bị ướt.', N'/dist/hp/audio/under (2).MP3', CAST(0x0000A54F00BD008A AS DateTime), N'308')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cad7897a-cce4-4c4d-8d98-afd8809f17ee', N'My cousin is very cute.', N'Em họ của tôi rất dễ thương.', N'/dist/hp/audio/cousin (2).MP3', CAST(0x0000A54F00BD0554 AS DateTime), N'1543')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cb31f05b-6bf9-407d-b9c8-1a9fa310dd5a', N'I hate to fry fish.', N'Tôi ghét chiên cá.', N'/dist/hp/audio/fry (2).MP3', CAST(0x0000A54F00BD08AC AS DateTime), N'1634')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cb35b254-8b10-4895-805c-2fe2aa82d543', N'She works at the local hospital.', N'Cô ấy làm việc tại một bệnh viện địa phương.', N'/dist/hp/audio/work (1).MP3', CAST(0x0000A54F00BD01C0 AS DateTime), N'342')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cb503119-7b0b-4b2e-b6a9-a6a1ced37762', N'A year consists of 12 months.', N'Một năm có 12 tháng.', N'/dist/hp/audio/month (2).MP3', CAST(0x0000A54F00BCFC0F AS DateTime), N'184')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cb92c2b6-3c21-4230-94d2-5d04cd60822e', N'Do you feel ashamed of such things?', N'Anh có thấy xấu hổ khi làm những việc như vậy không?', N'/dist/hp/audio/ashamed (2).MP3', CAST(0x0000A54F00BD0A2C AS DateTime), N'2031')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cbb9b966-dc91-4fb3-bcc7-22d87873204c', N'The cultural class begins at 8 a.m.', N'Lớp học văn hóa bắt đầu lúc 8 giờ.', N'/dist/hp/audio/cultural (1).MP3', CAST(0x0000A54F00BD0579 AS DateTime), N'1547')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cbbb9a06-198b-44cf-b77e-dd22807b79bd', N'Jennifer is an expert in skin care.', N'Jennifer là một chuyên gia về chăm sóc da.', N'/dist/hp/audio/expert (2).MP3', CAST(0x0000A54F00BD07DE AS DateTime), N'1611')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cbd0b730-0a02-4c0c-8f47-aa48e1c19348', N'Where did you get her?', N'Anh đã tìm được cô ấy ở đâu vậy?', N'/dist/hp/audio/her (2).MP3', CAST(0x0000A54F00BCFA3F AS DateTime), N'134')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cbefb4ea-4181-4fbe-802c-5c8d17aed463', N'He presented me the first edition of the book.', N'Anh ấy tặng tôi ấn bản đầu tiên của quyển sách.', N'/dist/hp/audio/edition (2).MP3', CAST(0x0000A54F00BD06D6 AS DateTime), N'1583')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cc0a43ad-0fd5-402a-b6e7-ff7df39fa411', N'Cody works with an engineering firm.', N'Cody làm việc với công ty kỹ thuật.', N'/dist/hp/audio/firm (2).MP3', CAST(0x0000A54F00BD0851 AS DateTime), N'1624')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cca01bc7-e872-4c74-b78d-ba33078fc53c', N'Coal is a kind of fuel.', N'Than đá là một loại nhiên liệu.', N'/dist/hp/audio/coal (1).MP3', CAST(0x0000A54F00BD0B63 AS DateTime), N'2060')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ccf7cedb-93bf-491c-9419-d06682b0278e', N'It''s amazing to see you here.', N'Thật ngạc nhiên khi thấy anh ở đây.', N'/dist/hp/audio/amazing (2).MP3', CAST(0x0000A54F00BD09D2 AS DateTime), N'2023')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cd48e373-0081-4226-a036-6936a0ac0a38', N'She has blonde hair.', N'Cô ấy có mái tóc vàng hoe.', N'/dist/hp/audio/blonde (1).MP3', CAST(0x0000A54F00BD0A9B AS DateTime), N'2041')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cd581890-688a-4e75-9ecb-7d48a36d89cc', N'Flynn puts an envelope in the desk.', N'Flynn đặt một cái bì thư lên bàn.', N'/dist/hp/audio/envelope (1).MP3', CAST(0x0000A54F00BD0778 AS DateTime), N'1600')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cd810a95-3499-4246-8c98-0d14c9976aa3', N'They are living in a big city in America.', N'Họ đang sống ở một thành phố lớn của nước Mỹ.', N'/dist/hp/audio/city (2).MP3', CAST(0x0000A54F00BCF745 AS DateTime), N'52')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cdd05895-1f26-4926-b4d2-527b14711ed5', N'An old man is crossing the street.', N'Một cụ già đang băng qua đường.', N'/dist/hp/audio/old (2).MP3', CAST(0x0000A54F00BCFCE7 AS DateTime), N'207')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cdf2c005-0cfc-4bcb-9df4-24a65c117719', N'Last week, I went to Nha Trang.', N'Tuần trước tôi đi Nha Trang.', N'/dist/hp/audio/week (1).MP3', CAST(0x0000A54F00BD0125 AS DateTime), N'325')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cdf824fb-25bb-47ec-8717-5758ad4efcba', N'I often go to the park when I have free time.', N'Tôi thường đi công viên khi có thời gian rảnh.', N'/dist/hp/audio/time (2).MP3', CAST(0x0000A54F00BCFFDC AS DateTime), N'289')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ce2268d6-f1bf-4659-b5c7-d5825c3758e4', N'The boy is painting a circle with red.', N'Thằng bé đang tô hình tròn bằng màu đỏ.', N'/dist/hp/audio/circle (1).MP3', CAST(0x0000A54F00BD02BC AS DateTime), N'370')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ce32738d-877c-4339-b4b1-cf3436af72ff', N'We sell these notebooks for $1 each.', N'Chúng tôi bán những quyển sổ tay với giá 1 đô la.', N'/dist/hp/audio/sell (2).MP3', CAST(0x0000A54F00BCFE39 AS DateTime), N'244')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ce6ac48c-d1a5-4fd1-b73f-21058e441234', N'How can you be a citizen of the world?', N'Làm sao để trở thành một công dân toàn cầu?', N'/dist/hp/audio/citizen (2).MP3', CAST(0x0000A54F00BD0B45 AS DateTime), N'2058')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ce8adf89-1297-422e-a611-a9d4e471776d', N'The fire was burning everywhere.', N'Ánh lửa được thắp lên mọi ngóc ngách.', N'/dist/hp/audio/burn (2).MP3', CAST(0x0000A54F00BD0296 AS DateTime), N'366')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ce9f4440-c2ab-4cc0-982e-03c8a639f41b', N'Before I conclude, I would like to tell you an important thing.', N'Trước khi kết luận, tôi muốn nói với bạn một điều quan trọng.', N'/dist/hp/audio/conclude (2).MP3', CAST(0x0000A54F00BD04C7 AS DateTime), N'1527')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cf16a471-83b8-4444-8644-987ec58c8a01', N'The match between Vietnam and Malaysia football team will broadcast at 3 p.m.', N'Trận đấu giữa 2 đội bóng Việt Nam và Malaysia được phát sóng vào lúc 3 giờ chiều.', N'/dist/hp/audio/broadcast (2).MP3', CAST(0x0000A54F00BD0AB8 AS DateTime), N'2044')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cfb75988-d096-4f45-8ef7-86bb583d2425', N'Come and meet my friend ,Anna.', N'Đến đây và gặp bạn mình nào, Anna!', N'/dist/hp/audio/meet (1).MP3', CAST(0x0000A54F00BCFBE2 AS DateTime), N'179')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cfb76b49-417e-4205-8107-caf37e840b7d', N'He broke his arm.', N'Anh ta bị gãy tay.', N'/dist/hp/audio/break (1).MP3', CAST(0x0000A54F00BCF6BC AS DateTime), N'38')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cfbe8a81-bd18-4ed2-b27d-84e8d82c3d1b', N'Her husband prefer boy over girl.', N'Chồng cô ấy thích con trai hơn con gái.', N'/dist/hp/audio/boy (2).MP3', CAST(0x0000A54F00BCF6A8 AS DateTime), N'36')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cfe33c30-126a-4014-b987-856b1bdb5763', N'John''s shoulder is broken.', N'Vai của John bị gãy.', N'/dist/hp/audio/shoulder (1).MP3', CAST(0x0000A54F00BCFE79 AS DateTime), N'251')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'cff0f0e9-1af2-43a3-ac82-d9ae7149813e', N'We are always supply consumers demand.', N'Chúng tôi luôn đáp ứng nhu cầu của người tiêu dùng.', N'/dist/hp/audio/consumer (1).MP3', CAST(0x0000A54F00BD04FC AS DateTime), N'1533')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd02a5ead-12e9-4286-b8c1-cf9311459f49', N'The new program encourages the poor to join.', N'Chương trình mới khuyến khích người nghèo tham gia.', N'/dist/hp/audio/encourage (1).MP3', CAST(0x0000A54F00BD0748 AS DateTime), N'1595')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd02aabca-af88-4c82-a581-14f3c29943f8', N'Everyone has their own ambition.', N'Mỗi người đều có những hoài bão của riêng mình.', N'/dist/hp/audio/ambition (1).MP3', CAST(0x0000A54F00BD09DE AS DateTime), N'2024')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd03b3889-41ae-4320-8791-eb2f4f62e3c1', N'It''s very hot today.', N'Hôm nay trời rất nóng.', N'/dist/hp/audio/hot (1).MP3', CAST(0x0000A54F00BCFA86 AS DateTime), N'141')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd0699bf8-5365-40b9-bc07-1b719b391eb1', N'You should change that razor blade.', N'Cậu nên thay cái lưỡi dao cạo đó đi.', N'/dist/hp/audio/blade (1).MP3', CAST(0x0000A54F00BD0A91 AS DateTime), N'2040')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd06a8500-872e-4139-b64f-238ab5b54622', N'The President''s speech was broadcast nationwide.', N'Bài diễn văn của Ngài Chủ tịch nước được truyền đi khắp cả nước.', N'/dist/hp/audio/broadcast (1).MP3', CAST(0x0000A54F00BD0AB8 AS DateTime), N'2044')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd0b48302-88e7-4f1d-9fdd-d4e2b5ff3849', N'I like wearing a white shirt and jean.', N'Tôi thích mặc áo sơ mi trắng và quần jean.', N'/dist/hp/audio/white (1).MP3', CAST(0x0000A54F00BD0152 AS DateTime), N'330')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd12114b4-bda5-4ca6-a1a8-a01d283a89be', N'You have to face the competition in this job.', N'Cậu phải đối mặt với sự cạnh tranh trong công việc này.', N'/dist/hp/audio/competition (1).MP3', CAST(0x0000A54F00BD049C AS DateTime), N'1522')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd1243c9b-3cc0-4e68-a1ba-e46d8ec44b60', N'Would you like small, medium or large?', N'Cô muốn cỡ nhỏ, cỡ vừa hay cỡ lớn?', N'/dist/hp/audio/large (2).MP3', CAST(0x0000A54F00BCFB14 AS DateTime), N'157')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd133322b-c4cd-4bd9-8330-37c412569de9', N'This motorbike consumes a lot of fuel.', N'Chiếc xe máy này tiêu tốn nhiều nhiên liệu.', N'/dist/hp/audio/fuel (1).MP3', CAST(0x0000A54F00BD08B5 AS DateTime), N'1635')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd15a8b3e-9114-4e74-b4c8-d4b8cc14cdc0', N'I''m living in a modern generation.', N'Tôi đang sống ở một thế hệ hiện đại.', N'/dist/hp/audio/generation (2).MP3', CAST(0x0000A54F00BD08EB AS DateTime), N'1641')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd1aafb2c-e88d-4921-9601-a23b6ab731f5', N'My breakfast is bread and eggs.', N'Bữa sáng của tôi là bánh mì và trứng.', N'/dist/hp/audio/egg (2).MP3', CAST(0x0000A54F00BCF87C AS DateTime), N'85')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd1d54b99-62aa-4a1b-b1b5-fe9f9697c87d', N'Remember to lock the door when you go out.', N'Nhớ khóa cửa khi đi ra ngoài.', N'/dist/hp/audio/door (2).MP3', CAST(0x0000A54F00BCF831 AS DateTime), N'77')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd23697ed-7643-40ae-930e-5bfcc1b31ce2', N'They are in competition with some other companies.', N'Họ đang trong một cuộc cạnh tranh với một số công ty khác.', N'/dist/hp/audio/competition (2).MP3', CAST(0x0000A54F00BD049C AS DateTime), N'1522')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd24d7b52-3296-4994-af0c-30d5723eff6d', N'Where is the content?', N'Phần mục lục ở đâu vậy?', N'/dist/hp/audio/content (2).MP3', CAST(0x0000A54F00BD050D AS DateTime), N'1535')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd27b9edd-902e-46cb-9406-036b982fafd3', N'Cody likes classic works.', N'Cody thích những tác phẩm kinh điển.', N'/dist/hp/audio/classic (1).MP3', CAST(0x0000A54F00BD0439 AS DateTime), N'1511')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd2dc4dd4-632c-4708-bbb7-7c184992b6fe', N'Liam is the first person who discovers the missing papers.', N'Liam là người đầu tiên phát hiện ra những giấy tờ còn thiếu.', N'/dist/hp/audio/discover (2).MP3', CAST(0x0000A54F00BD0667 AS DateTime), N'1572')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd30588ed-d7fc-4f7e-be8d-e4a3dd393a5f', N'He is learning linguistic at a famous university.', N'Anh ấy đang học về ngôn ngữ học tại một trường đại học nổi tiếng.', N'/dist/hp/audio/learn (2).MP3', CAST(0x0000A54F00BCFB26 AS DateTime), N'159')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd3094640-2373-467d-89c4-095bc8a88aff', N'She refused to listen to explanation.', N'Cô ấy từ chối nghe lời giải thích.', N'/dist/hp/audio/listen (2).MP3', CAST(0x0000A54F00BCFB68 AS DateTime), N'166')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd312d0d2-83e9-4d91-a7cd-2a2a39af3a51', N'A strong wind blew away the roof of the house.', N'Một cơn gió mạnh đã thổi bay mái nhà.', N'/dist/hp/audio/strong (2).MP3', CAST(0x0000A54F00BCFF5B AS DateTime), N'275')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd34c5b53-a429-4f3d-a7ff-7f6bff2ba470', N'The children always explore everything around them.', N'Trẻ em thích khám phá mọi thứ xung quanh chúng.', N'/dist/hp/audio/explore (2).MP3', CAST(0x0000A54F00BD07F0 AS DateTime), N'1613')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd3ee9117-11bc-41e9-ad44-51d2f5fe75bf', N'Let''s get out of this place now.', N'Hãy ra khỏi chỗ này ngay!', N'/dist/hp/audio/place (2).MP3', CAST(0x0000A54F00BCFD54 AS DateTime), N'219')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd421dca8-d343-4b58-a43c-f0c9fcc4b90b', N'It is a matter of life and death for the company.', N'Đó là vấn đề sống còn của công ty.', N'/dist/hp/audio/life (2).MP3', CAST(0x0000A54F00BCFB56 AS DateTime), N'164')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd46c33e4-0b00-465c-8c5b-781056a974be', N'He hangs a picture on the wall.', N'Anh ta đã treo một bức tranh trên tường.', N'/dist/hp/audio/picture (2).MP3', CAST(0x0000A54F00BCFD4C AS DateTime), N'218')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd51a577f-c9a0-499f-8e8e-4e5ca8e7ef80', N'I need a glass of cool water.', N'Cho tôi một ly nước lạnh.', N'/dist/hp/audio/cool (1).MP3', CAST(0x0000A54F00BCF79E AS DateTime), N'61')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd55c188a-0201-4d4e-8fd0-db2c0931db92', N'When Jacob was absent, everyone was concerned about him.', N'Khi Jacob vắng mặt, mọi người đều lo lắng cho anh ấy.', N'/dist/hp/audio/concern (2).MP3', CAST(0x0000A54F00BD04BE AS DateTime), N'1526')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd5b2f539-3d01-4f0e-96b2-2a020a02874b', N'Caleb works in the City People''s committee.', N'Caleb làm việc ở Ủy ban Nhân dân Thành phố .', N'/dist/hp/audio/committee (1).MP3', CAST(0x0000A54F00BD0480 AS DateTime), N'1519')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd5e227a7-e0df-4ac9-9ce8-91fd2a112170', N'His house is full of garbage.', N'Nhà của anh ta đầy rác.', N'/dist/hp/audio/full (1).MP3', CAST(0x0000A54F00BCF969 AS DateTime), N'111')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd5e70ee2-3921-413a-aaea-53c5f12c1146', N'They have been married for eight years.', N'Họ đã kết hôn được 8 năm rồi.', N'/dist/hp/audio/eight (1).MP3', CAST(0x0000A54F00BCF886 AS DateTime), N'86')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd5f8c91d-b275-4209-b316-3b4b6cfebb89', N'I''m taking a course in communication skill.', N'Tôi đang theo học khóa kĩ năng giao tiếp.', N'/dist/hp/audio/communication (2).MP3', CAST(0x0000A54F00BD0493 AS DateTime), N'1521')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd61daabd-f06b-41a8-a0fa-db3008614e7e', N'There was a long table in the centre of the room.', N'Có một cái bàn dài ở giữa phòng.', N'/dist/hp/audio/centre (2).MP3', CAST(0x0000A54F00BCF73C AS DateTime), N'51')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd69ab171-4a50-4f88-8c0c-5584fd84baab', N'The story has an unexpected ending.', N'Câu truyện có một kết thúc không mong đợi.', N'/dist/hp/audio/unexpected (2).MP3', CAST(0x0000A54F00BD07CC AS DateTime), N'1609')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd71da7aa-4d25-476a-a28d-6e512192d090', N'You''re right.', N'Bạn đúng rồi đấy.', N'/dist/hp/audio/right (1).MP3', CAST(0x0000A54F00BCFDCA AS DateTime), N'232')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd71df7cc-2da2-4371-8d10-5dd71e29ca2d', N'He tells me that he will come.', N'Anh ta nói với tôi rằng anh ta sẽ không đến.', N'/dist/hp/audio/tell (1).MP3', CAST(0x0000A54F00BCFFBF AS DateTime), N'286')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd7546dce-eac2-436c-8054-e6103ffc95dd', N'I trusted him absolutely.', N'Tôi hoàn toàn tin tưởng anh ta.', N'/dist/hp/audio/absolutely (1).MP3', CAST(0x0000A54F00BD095C AS DateTime), N'2014')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd756633c-9b03-4295-89c8-0bad535e8c31', N'He will design a software for Microsoft.', N'Anh ta sẽ thiết kế một phần mềm cho hãng Microsoft.', N'/dist/hp/audio/design (1).MP3', CAST(0x0000A54F00BD035D AS DateTime), N'388')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd75c6d15-7495-4056-b754-c80f5eebdc93', N'My mom cooks very well.', N'Mẹ tôi nấu ăn rất giỏi.', N'/dist/hp/audio/cook (1).MP3', CAST(0x0000A54F00BCF793 AS DateTime), N'60')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd761e6f6-375a-4d37-8661-0745de5ef89c', N'I always carry my dairy with me.', N'Tôi luôn mang theo cuốn nhật kí bên mình.', N'/dist/hp/audio/carry (1).MP3', CAST(0x0000A54F00BD02A9 AS DateTime), N'368')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd78a5a84-d13e-4f04-9f09-8f00f02a4f5f', N'Kai works as computer expert.', N'Kai làm việc như là một chuyên gia máy tính.', N'/dist/hp/audio/expert (1).MP3', CAST(0x0000A54F00BD07DE AS DateTime), N'1611')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd8082ce8-415a-4ad3-a242-64f1549dafea', N'The dentist said "Open your mouth wide and say "Ah"".', N'Nha sĩ nói " Con hãy mở miệng to ra và nói "A"".', N'/dist/hp/audio/mouth (2).MP3', CAST(0x0000A54F00BCFC37 AS DateTime), N'188')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd8e55c37-3760-4d92-b9c9-c9d60d8a3096', N'Where is the camp?', N'Chỗ cắm trại ở đâu vậy?', N'/dist/hp/audio/camp (1).MP3', CAST(0x0000A54F00BD029F AS DateTime), N'367')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd915d9dc-cebc-4730-99b0-3db5a949232c', N'Can you help me carry my luggage to the room?', N'Anh có thể giúp tôi mang hành lí lên phòng được không?', N'/dist/hp/audio/carry (2).MP3', CAST(0x0000A54F00BD02A9 AS DateTime), N'368')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd91f66f1-4e79-4593-b860-eb060ca963cd', N'The boy wearing a hat is my son.', N'Thằng bé đội nón là con trai tôi.', N'/dist/hp/audio/hat (2).MP3', CAST(0x0000A54F00BCFA00 AS DateTime), N'128')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd930ca8e-2054-4bcc-9b92-5f20819d6609', N'Thousands of people came to his concert.', N'Hàng nghìn người đã đến buổi hòa nhạc của anh ấy.', N'/dist/hp/audio/thousand (2).MP3', CAST(0x0000A54F00BD0055 AS DateTime), N'302')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd997af2f-364a-4386-b9f9-28b8006e83e4', N'He died of old age.', N'Ông ấy chết vì tuổi già.', N'/dist/hp/audio/die (1).MP3', CAST(0x0000A54F00BCF803 AS DateTime), N'72')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd9be0f9e-ea12-41e5-b6bc-c3cfbc718ccc', N'He studied music at the church.', N'Anh ấy đã học nhạc ở nhà thờ.', N'/dist/hp/audio/music (1).MP3', CAST(0x0000A54F00BCFC40 AS DateTime), N'189')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd9cd368f-c9dd-45c8-bdb0-5888dad1d816', N'His room is too messy.', N'Phòng của anh ta rất bừa bộn.', N'/dist/hp/audio/room (1).MP3', CAST(0x0000A54F00BCFDDD AS DateTime), N'234')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd9e7c1b7-e961-4ea2-8dca-16b0f46452cd', N'She washes her face.', N'Cô ấy rửa mặt.', N'/dist/hp/audio/wash (1).MP3', CAST(0x0000A54F00BD00EF AS DateTime), N'319')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'd9eb5842-dc42-4583-baa9-48f7a7980f70', N'The contract will be valid for five months.', N'Hợp đồng sẽ có hiệu lực 5 tháng.', N'/dist/hp/audio/five (2).MP3', CAST(0x0000A54F00BCF90D AS DateTime), N'101')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'da439fac-7761-43ea-a72a-ffaffbde7aa6', N'I will give you one chance to make it better.', N'Tôi sẽ cho anh một cơ hội nữa để sửa chữa nó.', N'/dist/hp/audio/give (2).MP3', CAST(0x0000A54F00BCF9D4 AS DateTime), N'123')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'da5faa5c-f00a-4a35-9c04-ff06fd9570dc', N'He is off to Japan tomorrow.', N'Ngày mai anh ấy sẽ rời khỏi đây để đến Nhật.', N'/dist/hp/audio/off (2).MP3', CAST(0x0000A54F00BCFCD5 AS DateTime), N'205')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'daa7db75-a3cf-420c-bc3f-06c7b334f0c4', N'I usually get up at 7 o''clock.', N'Tôi luôn luôn thức dậy lúc 7 giờ.', N'/dist/hp/audio/seven (2).MP3', CAST(0x0000A54F00BCFE4C AS DateTime), N'246')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dac8764c-939a-42b0-87ba-0523746c9615', N'Barack Obama is the president of the United States.', N'Ông Barack Obama là tổng thống  của nước Mỹ.', N'/dist/hp/audio/of (2).MP3', CAST(0x0000A54F00BCFCCA AS DateTime), N'204')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dae7626c-3239-448f-96cb-24921d2cc249', N'The baby will be frighten when you wear a mask.', N'Đứa bé sẽ hoảng sợ khi nhìn thấy bạn đeo mặt nạ.', N'/dist/hp/audio/frighten (2).MP3', CAST(0x0000A54F00BD08A3 AS DateTime), N'1633')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'daf5df4c-9ff7-4c30-a158-27e8e9e77bda', N'It can be difficult to be a good parents.', N'Rất khó để trở thành cha mẹ tốt.', N'/dist/hp/audio/parent (2).MP3', CAST(0x0000A54F00BCFD27 AS DateTime), N'214')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'db1b57df-fcd7-4d50-9fbb-bc506d01a94f', N'Would you like something to eat?', N'Anh có muốn ăn gì không?', N'/dist/hp/audio/eat (1).MP3', CAST(0x0000A54F00BCF873 AS DateTime), N'84')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'db28dfcd-681e-427d-8886-7f8dd295e421', N'Junk food can cause heart diseases.', N'Thức ăn nhanh có thể  gây ra các bệnh về tim.', N'/dist/hp/audio/food (1).MP3', CAST(0x0000A54F00BCF91E AS DateTime), N'103')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'db44c5e0-d1f0-4da4-a0f4-f9cca708e679', N'Linda is my cousin.', N'Linda là em họ của tôi.', N'/dist/hp/audio/cousin (1).MP3', CAST(0x0000A54F00BD0554 AS DateTime), N'1543')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'db5d7d6a-a935-4a66-b98b-6ffb708f662e', N'Newborn babies are like angels.', N'Trẻ sơ sinh giống như những thiên thần.', N'/dist/hp/audio/baby (2).MP3', CAST(0x0000A54F00BCF5ED AS DateTime), N'16')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dba47411-f2ec-4130-9d99-7506b120b5ec', N'Please pay at the counter.', N'Xin vui lòng thanh toán ở quầy thu tiền.', N'/dist/hp/audio/counter (1).MP3', CAST(0x0000A54F00BD0541 AS DateTime), N'1541')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dbb96e86-2929-4fac-9de4-c6c9f2057f7b', N'She is a fascinating person.', N'Cô ấy là một người rất hấp dẫn.', N'/dist/hp/audio/person (1).MP3', CAST(0x0000A54F00BCFD43 AS DateTime), N'217')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dbfc1bb2-ee0e-4322-9ca5-263856b5e15a', N'Body language is very important.', N'Ngôn ngữ cơ thể rất quan trọng.', N'/dist/hp/audio/body (1).MP3', CAST(0x0000A54F00BCF68B AS DateTime), N'33')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dc4fcd76-36df-49a3-81aa-5d41b5654f59', N'Bacteria has only one cell.', N'Vi khuẩn chỉ có một tế bào.', N'/dist/hp/audio/bacteria (1).MP3', CAST(0x0000A54F00BD0A5E AS DateTime), N'2036')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dc6f623c-b3f4-42ef-85f8-c66f64ccd928', N'I will send you a report.', N'Tôi gửi cho anh bản báo cáo.', N'/dist/hp/audio/send (1).MP3', CAST(0x0000A54F00BCFE42 AS DateTime), N'245')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dc953888-a23d-4f09-856c-5e917e4f5a8e', N'How tall are you?', N'Anh cao bao nhiêu?', N'/dist/hp/audio/tall (1).MP3', CAST(0x0000A54F00BCFFA5 AS DateTime), N'283')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dcd0aa39-053c-47f3-a575-148f711559df', N'I like hotels with the view of sea.', N'Tôi thích những khách sạn có thể nhìn ra biển.', N'/dist/hp/audio/sea (1).MP3', CAST(0x0000A54F00BCFE1B AS DateTime), N'241')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dd096ce0-6991-43cd-948b-7dae27263cee', N'John was educated when he was young.', N'John được giáo dục từ khi còn nhỏ.', N'/dist/hp/audio/educate (1).MP3', CAST(0x0000A54F00BD06E9 AS DateTime), N'1585')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dd3cbfb0-2ffe-4a9e-bd18-22073df80b5c', N'My aunt has a clothing store on Nguyen Trai street.', N'Dì tôi có một cửa hàng bán quần áo trên đường Nguyễn Trãi.', N'/dist/hp/audio/store (2).MP3', CAST(0x0000A54F00BCFF3F AS DateTime), N'272')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dd9469c1-4734-43f3-8dc2-a7cad2f9a0f4', N'The lion is king of the jungle.', N'Sư tử là chúa tể của rừng xanh.', N'/dist/hp/audio/king (1).MP3', CAST(0x0000A54F00BCFAF8 AS DateTime), N'154')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ddd7ac59-e6dc-4a8c-94da-aca73d1976b4', N'Giving lucky money is a custom of Vietnamese.', N'Lì xì là một phong tục của người Việt Nam.', N'/dist/hp/audio/custom (1).MP3', CAST(0x0000A54F00BD0597 AS DateTime), N'1550')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'dddd3483-d571-47fd-9293-76a18b21db27', N'There is a bookstore near our school.', N'Có một nhà sách ở gần trường chúng tôi.', N'/dist/hp/audio/near (2).MP3', CAST(0x0000A54F00BCFC5D AS DateTime), N'192')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ddfa71fa-828f-4f98-8f6d-8612a7bb9eca', N'Cotton is suitable to wear in the summer.', N'Vải cô-tông thì phù hợp để mặc vào mùa hè.', N'/dist/hp/audio/wear (2).MP3', CAST(0x0000A54F00BD011C AS DateTime), N'324')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'de3ad6e6-3231-4700-bcce-89d46df2acb1', N'I will do what you want to.', N'Tôi sẽ làm theo những gì em muốn.', N'/dist/hp/audio/what (1).MP3', CAST(0x0000A54F00BD012E AS DateTime), N'326')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'de5cb42a-fb61-4299-bae2-52716530ba2f', N'I have too much to tell you but I don''t know where to begin.', N'Em có rất nhiều điều muốn nói nhưng không biết phải bắt đầu từ đâu.', N'/dist/hp/audio/begin (2).MP3', CAST(0x0000A54F00BCF64C AS DateTime), N'26')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'de951b39-c875-443a-b0bb-a46a4abd5c1d', N'He works for a travel company.', N'Anh ấy làm việc cho một công ty du lịch.', N'/dist/hp/audio/travel (1).MP3', CAST(0x0000A54F00BD0066 AS DateTime), N'304')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'deac8f68-9b98-428f-b0d0-fe4cde1b693b', N'Bright colors suit you best.', N'Màu sáng rất hợp với em.', N'/dist/hp/audio/color (2).MP3', CAST(0x0000A54F00BCF77D AS DateTime), N'58')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'def754f0-7361-4442-8c80-547d5886f534', N'It is 11 a.m now.', N'Bây giờ là 11 giờ.', N'/dist/hp/audio/now (1).MP3', CAST(0x0000A54F00BCFCB7 AS DateTime), N'202')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'df9049fd-9ac9-4179-897b-b8e5cef17c82', N'The rain began heavily.', N'Cơn mưa dần trở nên nặng hạt.', N'/dist/hp/audio/rain (1).MP3', CAST(0x0000A54F00BCFD93 AS DateTime), N'226')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'df9ef6b0-0176-41a1-8d01-b6e7d06f1f01', N'My mom gives me a candy bar. ', N'Mẹ tôi cho tôi một thanh kẹo.', N'/dist/hp/audio/bar (2).MP3', CAST(0x0000A54F00BCF627 AS DateTime), N'22')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0310571-c37f-40ba-ab75-77729926be00', N'The bell is ringing!', N'Chuông đang reo kìa!', N'/dist/hp/audio/bell (1).MP3', CAST(0x0000A54F00BD0268 AS DateTime), N'361')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e03afc5c-cdd1-43c4-b474-c759a0605073', N'Maria canceled her departure to England.', N'Maria đã hủy chuyến khởi hành đến Anh.', N'/dist/hp/audio/departure (1).MP3', CAST(0x0000A54F00BD05E8 AS DateTime), N'1559')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0439ab8-d049-4484-8610-63bb344ee0b4', N'I have written twice but there are no reply.', N'Tôi đã viết 2 lần rồi mà vẫn không có hồi đáp.', N'/dist/hp/audio/write (2).MP3', CAST(0x0000A54F00BD01C8 AS DateTime), N'343')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0475155-4436-4f45-b266-142f42dae6cf', N'You shouldn''t cheat like this.', N'Em không được gian lận như vậy.', N'/dist/hp/audio/cheat (2).MP3', CAST(0x0000A54F00BD03F9 AS DateTime), N'1504')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e09b6a5a-12b3-43f4-9c38-a459c9c78f4a', N'They are never getting back together.', N'Bọn họ sẽ không bao giờ quay lại với nhau nữa.', N'/dist/hp/audio/never (2).MP3', CAST(0x0000A54F00BCFC70 AS DateTime), N'194')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0b985d0-839b-439c-ab69-782507646f32', N'Sam doesn''t swim.', N'Sam không biết bơi.', N'/dist/hp/audio/swim (1).MP3', CAST(0x0000A54F00BCFF7F AS DateTime), N'279')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0cf16de-a5f1-41a8-8ad3-0dc4bae56a2a', N'Which hat is yours?', N'Mũ nào là của con vậy?', N'/dist/hp/audio/hat (1).MP3', CAST(0x0000A54F00BCFA00 AS DateTime), N'128')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e0e54424-9fcf-4f32-8898-77780b6a26a9', N'Call me if you need any extra help.', N'Hãy gọi cho tôi nếu bạn cần thêm sự giúp đỡ.', N'/dist/hp/audio/extra (2).MP3', CAST(0x0000A54F00BD0802 AS DateTime), N'1615')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e169e9bc-12ae-433d-bb83-37ebe13b97f7', N'She gets a high score for creativity.', N'Cô nhận được một số điểm cao cho sự sáng tạo.', N'/dist/hp/audio/score (2).MP3', CAST(0x0000A54F00BCFE09 AS DateTime), N'239')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e1f62250-e7da-4446-9b2d-f8904ad26c28', N'He has a great role in this project.', N'Anh ấy có một vai trò to lớn trong dự án này.', N'/dist/hp/audio/great (1).MP3', CAST(0x0000A54F00BCF9A9 AS DateTime), N'118')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e246c0a3-ab4d-4a87-807e-95ce6c8d20fa', N'The boy doesn''t know how to read the map.', N'Thằng bé không biết cách đọc bản đồ.', N'/dist/hp/audio/map (2).MP3', CAST(0x0000A54F00BCFBB3 AS DateTime), N'174')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e254f1f8-d69b-49ac-acc9-34370c7f96e9', N'We need a coat hook on the back of this door.', N'Chúng ta cần một cái móc áo phía sau cánh cửa này.', N'/dist/hp/audio/this (2).MP3', CAST(0x0000A54F00BD0043 AS DateTime), N'300')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e272fe91-08c0-48a2-b4b8-a7b3b0c4ea8a', N'They need an excellent employer.', N'Họ cần một người chủ thông minh.', N'/dist/hp/audio/employer (2).MP3', CAST(0x0000A54F00BD0733 AS DateTime), N'1593')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e27fcaa2-b73a-4bde-9a2e-6172e8310796', N'Bill Gates is one of  the world''s richest people.', N'Bill Gates là một trong những người giàu nhất thế giới.', N'/dist/hp/audio/rich (2).MP3', CAST(0x0000A54F00BCFDB7 AS DateTime), N'230')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e294ff33-a9f5-47b8-9d70-313d9ca847fd', N'I don''t know if I can come but I''ll try.', N'Tôi không biết có đến được không nhưng tôi sẽ cố gắng.', N'/dist/hp/audio/try (1).MP3', CAST(0x0000A54F00BD0081 AS DateTime), N'307')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e2e7eff4-79cc-4748-ad25-25de735b5595', N'There is a cat under the table.', N'Có một con mèo ở dưới cái bàn.', N'/dist/hp/audio/cat (1).MP3', CAST(0x0000A54F00BCF733 AS DateTime), N'50')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e3320f30-99c5-45da-aa99-22da64af8360', N'Could you repeat what you said?', N'Em có thể nhắc lại những gì cô vừa nói không?', N'/dist/hp/audio/repeat (1).MP3', CAST(0x0000A54F00BCFDAE AS DateTime), N'229')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e36a8949-7928-4417-8814-4f43b6141062', N'She wishes she has skin as white as snow.', N'Cô ấy ước rằng mình có một làn da trắng như tuyết.', N'/dist/hp/audio/snow (2).MP3', CAST(0x0000A54F00BCFED5 AS DateTime), N'261')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e3a63841-89b9-4619-8c4f-341bce1a7419', N'She will graduate early next year.', N'Cô ấy sẽ tốt nghiệp vào đầu năm sau.', N'/dist/hp/audio/early (2).MP3', CAST(0x0000A54F00BD039E AS DateTime), N'395')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e441633e-5f36-4fe9-8895-45499c4bf1a6', N'That plane was lost in mysterious circumstances.', N'Chiếc máy bay đó đã biến mất trong một tình huống bí ẩn.', N'/dist/hp/audio/circumstance (1).MP3', CAST(0x0000A54F00BD0B37 AS DateTime), N'2057')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e461c431-b5bf-4168-a4c7-847c458088e6', N'I have to finish it before lunch.', N'Tôi phải làm xong nó trước bữa trưa.', N'/dist/hp/audio/before (1).MP3', CAST(0x0000A54F00BD0257 AS DateTime), N'359')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e497b222-8942-4f67-9bec-d8778d7ccaa5', N'She is my best friend. ', N'Cô ấy là người bạn tốt nhất của tôi.', N'/dist/hp/audio/best (1).MP3', CAST(0x0000A54F00BCF656 AS DateTime), N'27')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e4a9684b-af0b-4ad0-995c-4a311d7f59bb', N'It''s nine minutes to ten.', N'Chín phút nữa là đúng 10 giờ.', N'/dist/hp/audio/minute (2).MP3', CAST(0x0000A54F00BCFBF6 AS DateTime), N'181')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5375031-c7a7-4749-b7b8-c86edae5881b', N'I''m sitting next to a big fat man. ', N'Tôi đang ngồi cạnh một người đàn ông to béo.', N'/dist/hp/audio/fat (2).MP3', CAST(0x0000A54F00BCF8D9 AS DateTime), N'95')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e539d6ac-c540-4a76-a74a-0ca46604c6c0', N'The gas station is the way off.', N'Trạm xăng ở cách đây một đoạn.', N'/dist/hp/audio/off (1).MP3', CAST(0x0000A54F00BCFCD5 AS DateTime), N'205')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5456330-c4dd-4c45-a2ce-e67a1b1a8353', N'She is burning candles.', N'Cô ấy đang thắp lên những ngọn nến.', N'/dist/hp/audio/burn (1).MP3', CAST(0x0000A54F00BD0296 AS DateTime), N'366')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5bcbe1d-e88d-4d42-ae75-c0b1195b04e1', N'He rides his car to work.', N'Anh ấy lái xe đi làm.', N'/dist/hp/audio/ride (1).MP3', CAST(0x0000A54F00BCFDC1 AS DateTime), N'231')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5bcf599-006c-4985-a653-3de65badaa2e', N'My house is the green one.', N'Nhà tôi là ngôi nhà màu xanh.', N'/dist/hp/audio/green (1).MP3', CAST(0x0000A54F00BCF9B1 AS DateTime), N'119')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5fa20c8-4770-4510-9c9c-eb054207bbbd', N'I am very happy to be home again.', N'Tôi rất hạnh phúc vì lại được trở về nhà.', N'/dist/hp/audio/again (2).MP3', CAST(0x0000A54F00BCF57E AS DateTime), N'4')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e5fd00f9-287c-4926-936d-50b2cdd8daae', N'Who is that?', N'Ai đó?', N'/dist/hp/audio/that (1).MP3', CAST(0x0000A54F00BD0001 AS DateTime), N'293')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e6920159-4ce7-4414-9c68-9efa4305a4bb', N'Can you show me the book on your left?', N'Cho tôi xem cuốn sách bên tay trái bạn được không?', N'/dist/hp/audio/left (1).MP3', CAST(0x0000A54F00BCFB30 AS DateTime), N'160')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e6d83d39-ff19-4371-9e67-4a0d90ee7ccc', N'Trinity cooks us a delicious dish.', N'Trinity nấu cho chúng tôi một món ăn ngon.', N'/dist/hp/audio/dish (2).MP3', CAST(0x0000A54F00BD0689 AS DateTime), N'1575')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e6e47e71-e25d-4d90-b7de-6511287ef520', N'Hannah has curly hair.', N'Hannah có mái tóc quăn.', N'/dist/hp/audio/curly (1).MP3', CAST(0x0000A54F00BD058D AS DateTime), N'1549')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e6f50914-bc57-41c6-8a67-4246725f8aa9', N'You will have a new life after married.', N'Em sẽ có một cuộc sống mới sau khi kết hôn.', N'/dist/hp/audio/life (1).MP3', CAST(0x0000A54F00BCFB56 AS DateTime), N'164')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e6fbbbb9-c49c-493b-8586-1a25572b7a85', N'Put those books up on the top shelf.', N'Hãy đặt những quyển sách này lên kệ trên cùng.', N'/dist/hp/audio/up (2).MP3', CAST(0x0000A54F00BD009D AS DateTime), N'310')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e7302428-a77f-4d26-8459-64820ddfd784', N'My sister has a lovely baby.', N'Chị tôi có một đứa con rất đáng yêu.', N'/dist/hp/audio/sister (2).MP3', CAST(0x0000A54F00BCFE8B AS DateTime), N'253')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e76c3d17-adb9-4baf-b33e-f1edf6179a9e', N'We teach English with American accent.', N'Chúng tôi dạy tiếng Anh theo giọng Mỹ.', N'/dist/hp/audio/accent (1).MP3', CAST(0x0000A54F00BD0971 AS DateTime), N'2016')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e780b3fa-1fcd-4597-b572-db6bceb9086b', N'Her big brother is an engineer.', N'Anh trai lớn của cô ấy là một kĩ sư.', N'/dist/hp/audio/big (1).MP3', CAST(0x0000A54F00BCF65F AS DateTime), N'28')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e798461d-39bb-49ab-949b-d34604a930ee', N'He learns to fly.', N'Anh ta đang học lái máy bay.', N'/dist/hp/audio/fly (1).MP3', CAST(0x0000A54F00BCF915 AS DateTime), N'102')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e7bb1035-826c-46a4-acda-b8f2b65dacae', N'What''s your favorite color?', N'Màu sắc yêu thích của bạn là gì?', N'/dist/hp/audio/color (1).MP3', CAST(0x0000A54F00BCF77D AS DateTime), N'58')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8128bb0-e08f-4ac6-8527-bd5fe40ca709', N'We''d save time on our journey if we went by train.', N'Chúng ta sẽ tiết kiệm được thời gian cho chuyến hành trình nếu đi bằng xe lửa.', N'/dist/hp/audio/we (2).MP3', CAST(0x0000A54F00BD0113 AS DateTime), N'323')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e81329c9-c299-4326-bc05-4e7c6cefe826', N'My rule is never back down from a challenge.', N'Nguyên tắc của tôi là không bao giờ lùi bước trước khó khăn thử thách.', N'/dist/hp/audio/rule (2).MP3', CAST(0x0000A54F00BCFDEE AS DateTime), N'236')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e81e42a1-0afa-4367-abd5-24560685bb06', N'Next term I shall study chemistry.', N'Kì tới có thể tôi sẽ học môn hóa học.', N'/dist/hp/audio/study (1).MP3', CAST(0x0000A54F00BCFF48 AS DateTime), N'273')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e82c4b30-dba3-438e-8be5-36cbd1accdbf', N'She and my sister are close friend.', N'Cô ấy và chị tôi là bạn thân.', N'/dist/hp/audio/she (2).MP3', CAST(0x0000A54F00BCFE55 AS DateTime), N'247')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8365f95-0b42-4980-9a99-0b975588aa7e', N'Advertising on television is very effective.', N'Quảng cáo trên ti vi rất là hiệu quả.', N'/dist/hp/audio/effective (2).MP3', CAST(0x0000A54F00BD06F3 AS DateTime), N'1586')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8727dd6-2a9f-4c55-8d4d-1dd8c11e00f1', N'We want to build a better life.', N'Chúng tôi muốn tạo dựng một tương lai tốt đẹp hơn.', N'/dist/hp/audio/build (2).MP3', CAST(0x0000A54F00BD028D AS DateTime), N'365')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8733820-b97c-448e-9725-d9a74fdbed93', N'Caleb earns a lot of money when he goes to work.', N'Caleb kiếm được nhiều tiền khi anh ấy đi làm.', N'/dist/hp/audio/earn (2).MP3', CAST(0x0000A54F00BD06C4 AS DateTime), N'1581')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8a80791-b94b-4e2a-ab59-f15c2230c29e', N'Bats use echolocation to see.', N'Loài dơi dùng định vị bằng tiếng vang để định hướng.', N'/dist/hp/audio/bat (1).MP3', CAST(0x0000A54F00BCF639 AS DateTime), N'24')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8a82cf9-bf6f-431b-810c-89ffd0398b8b', N'He is taller than me.', N'Anh ấy cao hơn tôi.', N'/dist/hp/audio/me (2).MP3', CAST(0x0000A54F00BCFBD0 AS DateTime), N'177')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8f3f7dc-2e17-4612-9009-32c339b9c50d', N'Father''s Day is on the third Sunday of June.', N'Ngày của Cha là ngày Chủ nhật thứ ba của tháng 6.', N'/dist/hp/audio/day (2).MP3', CAST(0x0000A54F00BCF7F0 AS DateTime), N'70')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e8f51338-0cad-4b5a-b7a9-2e4e208f68c2', N'They will be a tough team to beat.', N'Họ sẽ là một đội khó để đánh bại.', N'/dist/hp/audio/beat (1).MP3', CAST(0x0000A54F00BD0244 AS DateTime), N'357')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e92fa6d5-022e-4e72-a7fd-ffa30e8fdd7f', N'Where''s my coat?', N'Áo khoác của tôi đâu rồi?', N'/dist/hp/audio/my (2).MP3', CAST(0x0000A54F00BCFC4A AS DateTime), N'190')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e93b57e8-7eef-4dce-9c9f-ea041140d03a', N'Here comes the bus!', N'Xe buýt đến rồi!', N'/dist/hp/audio/come (1).MP3', CAST(0x0000A54F00BCF788 AS DateTime), N'59')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e9482491-5f4a-4a29-af1e-401d07b17a4f', N'My grandfather used to be a chemist.', N'Ông tôi đã từng là nhà hóa học.', N'/dist/hp/audio/chemist (2).MP3', CAST(0x0000A54F00BD041F AS DateTime), N'1508')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e955b584-12a8-468d-a75c-84b7702c0127', N'I''m taller than him.', N'Tôi cao hơn anh ta.', N'/dist/hp/audio/him (1).MP3', CAST(0x0000A54F00BCFA5F AS DateTime), N'137')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e9e42675-1399-4989-a430-a66045e0bdde', N'The whole area was flooded.', N'Toàn bộ vùng đó đều bị lũ lụt.', N'/dist/hp/audio/area (1).MP3', CAST(0x0000A54F00BD023B AS DateTime), N'356')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'e9f210f6-7dcb-48a1-ad17-35a51082cdaa', N'I want to learn to ride a horse.', N'Tôi muốn học cưỡi ngựa.', N'/dist/hp/audio/horse (1).MP3', CAST(0x0000A54F00BCFA7C AS DateTime), N'140')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ea0785cc-cf09-4de4-8955-d9edcd985e21', N'Can I put this book on the table?', N'Tôi có thể đặt quyển sách lên bàn được không?', N'/dist/hp/audio/put (1).MP3', CAST(0x0000A54F00BCFD78 AS DateTime), N'223')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ea113b9e-c4a2-47ef-980f-d4d365c8edb6', N'I have lost my key.', N'Tôi làm mất chìa khóa rồi.', N'/dist/hp/audio/key (2).MP3', CAST(0x0000A54F00BCFADE AS DateTime), N'151')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ea3ce815-8e88-415e-a007-d246909fb57c', N'The girl who is wearing a green dress is my sister.', N'Cô gái đang mặc chiếc đầm màu xanh lá là chị tôi.', N'/dist/hp/audio/green (2).MP3', CAST(0x0000A54F00BCF9B1 AS DateTime), N'119')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ea558ab9-30f1-43fb-bcbe-bb08da6abc21', N'They live in an old cottage.', N'Họ sống trong một ngôi nhà tranh cũ kĩ.', N'/dist/hp/audio/in (2).MP3', CAST(0x0000A54F00BCFABB AS DateTime), N'147')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'eac96f84-5aae-401a-ac6e-304695ee492d', N'How can you overcome anxiety?', N'Làm thế nào để bạn vượt qua sự lo lắng?', N'/dist/hp/audio/anxiety (2).MP3', CAST(0x0000A54F00BD0A06 AS DateTime), N'2027')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'eb01c1fc-c1ae-4e45-b0c3-573ad1069ac2', N'Could you close the window, please!', N'Xin vui lòng đóng cửa sổ lại!', N'/dist/hp/audio/window (1).MP3', CAST(0x0000A54F00BD0192 AS DateTime), N'337')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'eb106ad9-b3ff-4d2e-b5fd-1ba1179660b4', N'Riley engaged with her when he was young.', N'Riley đã hẹn ước với cô ấy khi anh ấy còn nhỏ.', N'/dist/hp/audio/engage (1).MP3', CAST(0x0000A54F00BD0751 AS DateTime), N'1596')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ebaa2721-6593-412a-a0c7-ed254a20d4a5', N'Briefly, I don''t agree with you!', N'Nói một cách ngắn gọn là tôi không đồng ý.', N'/dist/hp/audio/briefly (1).MP3', CAST(0x0000A54F00BD0AA5 AS DateTime), N'2042')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ebf23c0f-85c8-44db-8b04-d75c78dd33b7', N'Apollo is the Sun God.', N'Apollo là thần Mặt Trời.', N'/dist/hp/audio/sun (1).MP3', CAST(0x0000A54F00BCFF77 AS DateTime), N'278')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ec048d22-6499-4645-aae3-15fc4ef19495', N'How long has Charlie been unemployed?', N'Charlie đã thất nghiệp bao lâu rồi?', N'/dist/hp/audio/unemployed (2).MP3', CAST(0x0000A54F00BD0720 AS DateTime), N'1591')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ec20c85a-9f70-420b-84a7-46dcf58d4d2c', N'The price includes your plane ticket and accommodation.', N'Giá bao gồm vé máy bay và chỗ ở.', N'/dist/hp/audio/accommodation (2).MP3', CAST(0x0000A54F00BD097B AS DateTime), N'2017')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ec263549-1592-45bf-9eb0-04487b48618d', N'I can''t read your writing because it is bad.', N'Tôi không thể đọc chữ của em được vì nó quá xấu.', N'/dist/hp/audio/read (2).MP3', CAST(0x0000A54F00BCFD9C AS DateTime), N'227')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ec36b6fb-92ed-40a4-904e-5c8cfb551ee3', N'You must follow the basic principles.', N'Anh phải tuân theo các nguyên tắc cơ bản.', N'/dist/hp/audio/basic (2).MP3', CAST(0x0000A54F00BCF630 AS DateTime), N'23')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ecb251ea-f912-44b4-9de9-23c65d2b7db7', N'I want a beer can.', N'Tôi muốn một lon bia.', N'/dist/hp/audio/can (1).MP3', CAST(0x0000A54F00BCF714 AS DateTime), N'47')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ed20b871-2bf5-445b-9c7f-7dd0afa3d814', N'You will be arrested if you lie.', N'Nếu nói dối anh sẽ bị bắt.', N'/dist/hp/audio/arrest (2).MP3', CAST(0x0000A54F00BD0A23 AS DateTime), N'2030')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ed23c3c0-2ad1-48c1-a31e-afc2cde22602', N'Bats have extremely sensitive ears.', N'Loài dơi có đôi tai cực kì nhạy.', N'/dist/hp/audio/ear (2).MP3', CAST(0x0000A54F00BCF86A AS DateTime), N'83')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ed39ad04-0521-4fee-ac52-48e43f7bf8e9', N'Thank you for driving us to the airport.', N'Xin cảm ơn vì đã đưa chúng tôi đến sân bay.', N'/dist/hp/audio/us (1).MP3', CAST(0x0000A54F00BD00A7 AS DateTime), N'311')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ed88ea53-1ce0-4370-b588-13634f58141e', N'I teach English for children.', N'Tôi dạy tiếng Anh cho bọn trẻ.', N'/dist/hp/audio/teach (2).MP3', CAST(0x0000A54F00BCFFAD AS DateTime), N'284')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'eda15a56-38c3-4fd1-b7da-0148810b6a25', N'I am going to change my hairstyle.', N'Tôi sẽ thay đổi kiểu tóc.', N'/dist/hp/audio/change (2).MP3', CAST(0x0000A54F00BD0314 AS DateTime), N'380')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'edf689ec-00ed-465f-a1f3-98dbb29f27ef', N'Check the computer frequently.', N'Hãy kiểm tra máy tính thường xuyên.', N'/dist/hp/audio/frequently (1).MP3', CAST(0x0000A54F00BD089A AS DateTime), N'1632')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ee15cfff-ca4e-4329-aa00-b570499b3eae', N'Our trip was delayed because of bad weather.', N'Chuyến đi của chúng ta đã bị hoãn lại vì thời tiết xấu.', N'/dist/hp/audio/bad (2).MP3', CAST(0x0000A54F00BCF5FF AS DateTime), N'18')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ee1d519a-2b87-4314-af9d-7202f0a1bbef', N'His head is as hard as a stone.', N'Đầu anh ta cứng như đá.', N'/dist/hp/audio/hard (1).MP3', CAST(0x0000A54F00BCF9F7 AS DateTime), N'127')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ee3ed3fc-912b-4998-86b2-5c15cc7ebd0a', N'My parents encourage me to play basketball.', N'Bố mẹ khuyến khích tôi chơi bóng rổ.', N'/dist/hp/audio/encourage (2).MP3', CAST(0x0000A54F00BD0748 AS DateTime), N'1595')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ee6b8a74-dc32-47e5-90e2-3abaa8cafbbd', N'It takes about 2 hour from here to my home town.', N'Từ đây về tới quê tôi mất khoảng 2 giờ đồng hồ.', N'/dist/hp/audio/hour (2).MP3', CAST(0x0000A54F00BCFA8F AS DateTime), N'142')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ee802b8c-c2ec-40b5-bb85-ef72b6b68747', N'I chose this university with high expectations.', N'Tôi chọn trường đại học này với kỳ vọng cao.', N'/dist/hp/audio/expectation (2).MP3', CAST(0x0000A54F00BD07D5 AS DateTime), N'1610')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ef5624b1-309b-4733-9223-6f65acbb2139', N'He always makes me laugh.', N'Anh ấy luôn làm tôi cười.', N'/dist/hp/audio/make (1).MP3', CAST(0x0000A54F00BCFB96 AS DateTime), N'171')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ef7a09e1-155f-4035-9fff-66e3984e1f8a', N'Do you have a map of Ho Chi Minh city?', N'Bạn đã có bản đồ của thành phố Hồ Chí Minh chưa?', N'/dist/hp/audio/map (1).MP3', CAST(0x0000A54F00BCFBB3 AS DateTime), N'174')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ef8a8473-bc3c-47fc-9cc3-305120238330', N'Zoe will explain the rules of the game.', N'Zoe sẽ giải thích về luật chơi.', N'/dist/hp/audio/explain (1).MP3', CAST(0x0000A54F00BD07E6 AS DateTime), N'1612')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'efa91191-7c53-4916-9beb-69636193d846', N'Kyle goes to the bookstore frequently.', N'Kyle đi nhà sách thường xuyên.', N'/dist/hp/audio/frequently (2).MP3', CAST(0x0000A54F00BD089A AS DateTime), N'1632')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f0314667-4160-43d1-8975-fb4118f4df9f', N'The course expectations are high.', N'Những kỳ vọng cho khoá học là rất cao.', N'/dist/hp/audio/expectation (1).MP3', CAST(0x0000A54F00BD07D5 AS DateTime), N'1610')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f0abf46d-cd26-4da4-98db-909567185743', N'It costs 6 dollars to travel from Ho Chi Minh city to Vung Tau city by bus.', N'Đi từ thành phố Hồ Chí Minh đến thành phố Vũng Tàu mất 6 đô.', N'/dist/hp/audio/six (2).MP3', CAST(0x0000A54F00BCFE9D AS DateTime), N'255')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f186b9ca-f869-4d2b-a9a0-a140cf811c15', N'She is studying how that machine operates.', N'Cô ấy đang nghiên cứu xem cái máy đó vận hành như thế nào.', N'/dist/hp/audio/study (2).MP3', CAST(0x0000A54F00BCFF48 AS DateTime), N'273')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f1abc29f-0ae0-4645-9fa5-61c4af120eab', N'The event will be held at the school.', N'Sự kiện này sẽ được tổ chức tại trường.', N'/dist/hp/audio/event (1).MP3', CAST(0x0000A54F00BCF8A1 AS DateTime), N'89')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f1b1db22-8f7c-4d68-bcc3-427fe1e23cda', N'Come here, I have a surprise for you!', N'Đến đây, anh có một bất ngờ cho em!', N'/dist/hp/audio/come (2).MP3', CAST(0x0000A54F00BCF788 AS DateTime), N'59')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f266cfc0-6512-4b07-b8e1-e103e8dd010d', N'My friend is going to Japan next week, so she celebrates with a farewell party.', N'Bạn tôi sẽ sang Nhật vào tuần sau, vì vậy cô ấy tổ chức một buổi tiệc chia tay.', N'/dist/hp/audio/party (2).MP3', CAST(0x0000A54F00BCFD30 AS DateTime), N'215')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f287aa43-677d-40d3-afb3-48f0aadac38a', N'The event is going to be a lot of extra works.', N'Sự kiện này sẽ có thêm rất nhiều công việc.', N'/dist/hp/audio/extra (1).MP3', CAST(0x0000A54F00BD0802 AS DateTime), N'1615')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f30b0000-6582-40af-bfe4-ee54f74dfb67', N'You are fired because you cannot afford the work.', N'Cậu đã bị sa thải vì không đủ khả năng.', N'/dist/hp/audio/afford (2).MP3', CAST(0x0000A54F00BD09B7 AS DateTime), N'2021')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f37b7782-a2a0-4d4a-b5b2-a3ffdcb5214d', N'My office is very near.', N'Văn phòng của tôi rất gần đây.', N'/dist/hp/audio/near (1).MP3', CAST(0x0000A54F00BCFC5D AS DateTime), N'192')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f39fcf98-60e9-4f44-8b24-696ed4425c40', N'Have you found my workbook yet?', N'Bạn đã tìm thấy sách bài tập của mình chưa?', N'/dist/hp/audio/find (1).MP3', CAST(0x0000A54F00BCF8F4 AS DateTime), N'98')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f3ba81bd-2b9a-4b2f-b6b6-e1aa6ac4704d', N'What is the level of this course?', N'Cấp độ của khóa học này là gì?', N'/dist/hp/audio/level (1).MP3', CAST(0x0000A54F00BCFB4D AS DateTime), N'163')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f40de0d8-8449-456b-97b2-e6d3d7d9e668', N'The weather in winter is very cold.', N'Thời tiết vào mùa đông thì rất lạnh.', N'/dist/hp/audio/winter (1).MP3', CAST(0x0000A54F00BD019B AS DateTime), N'338')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f4395bd9-c2dc-4461-80fa-d3a0baab9891', N'The company has over 1,000 employees.', N'Công ty có hơn 1.000 nhân công.', N'/dist/hp/audio/employee (1).MP3', CAST(0x0000A54F00BD072A AS DateTime), N'1592')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f458a98b-582e-4ee6-a00e-f6bb9281baef', N'Open your book!', N'Hãy mở sách ra!', N'/dist/hp/audio/open (1).MP3', CAST(0x0000A54F00BCFCF9 AS DateTime), N'209')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f59b9414-b726-44af-b3ca-fb1cdbc84cf1', N'That house is big but they want it bigger. ', N'Ngôi nhà đó lớn nhưng họ muốn nó lớn hơn nữa.', N'/dist/hp/audio/big (2).MP3', CAST(0x0000A54F00BCF65F AS DateTime), N'28')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f668731b-94e7-4c90-99d1-14e43b704354', N'Joel is so scared of seeing a giant.', N'Joel tỏ ra sợ hãi khi nhìn thấy người khổng lồ.', N'/dist/hp/audio/giant (2).MP3', CAST(0x0000A54F00BD0908 AS DateTime), N'1644')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f689b90a-c771-4b94-8876-032b3099adb4', N'What did you do last night?', N'Tối qua anh đã làm gì?', N'/dist/hp/audio/night (1).MP3', CAST(0x0000A54F00BCFC8A AS DateTime), N'197')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f695feea-ee37-4dcc-a8d7-6a01e16e4652', N'The programme will be repeated next year.', N'Chương trình sẽ được lặp lại vào năm sau.', N'/dist/hp/audio/repeat (2).MP3', CAST(0x0000A54F00BCFDAE AS DateTime), N'229')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f70ff60c-cd7c-4e9e-b39c-15f2e4248f25', N'She likes to bycicle below the row of trees in autumn.', N'Cô ấy thích đạp xe dưới những hàng cây vào mùa thu.', N'/dist/hp/audio/tree (1).MP3', CAST(0x0000A54F00BD0070 AS DateTime), N'305')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f7261a6a-7685-476a-a7f8-c5895ee8d20d', N'I want to talk to you after work.', N'Tôi muốn nói chyện với cậu sau giờ làm việc.', N'/dist/hp/audio/talk (1).MP3', CAST(0x0000A54F00BCFF9C AS DateTime), N'282')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f76fe936-5381-46f3-89a8-bc9166239acd', N'In 1897 the crown was offered to Mary.', N'Năm 1897, vương miện được trao cho Mary.', N'/dist/hp/audio/crown (2).MP3', CAST(0x0000A54F00BD0570 AS DateTime), N'1546')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f7712c2c-a3a3-481c-b026-6ad2a5231c39', N'Fruit juices contain natural sugars.', N'Các loại nước ép trái cây có chứa các loại đường tự nhiên.', N'/dist/hp/audio/sugar (2).MP3', CAST(0x0000A54F00BCFF65 AS DateTime), N'276')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f776d72c-d48a-4998-8dab-28411fe89e24', N'No love is greater than mother''s love.', N'Không có tình yêu nào to lớn hơn tình yêu của mẹ.', N'/dist/hp/audio/mother (1).MP3', CAST(0x0000A54F00BCFC2D AS DateTime), N'187')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f7bdaffa-6c66-4706-bb1f-5c396c80613e', N'I don''t care what people think of me.', N'Tôi không quan tâm người ta nghĩ gì về mình.', N'/dist/hp/audio/people (1).MP3', CAST(0x0000A54F00BCFD39 AS DateTime), N'216')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f7f292c9-62a3-4495-bdaf-166634d0909c', N'My mother always concern me.', N'Mẹ tôi luôn luôn lo lắng cho tôi.', N'/dist/hp/audio/concern (1).MP3', CAST(0x0000A54F00BD04BE AS DateTime), N'1526')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f7fd848c-a911-4428-a27f-f38b2173f3d6', N'This cake has a complex formula.', N'Loại bánh này có công thức phức tạp.', N'/dist/hp/audio/complex (1).MP3', CAST(0x0000A54F00BD04AC AS DateTime), N'1524')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f84113f5-c9cf-44ba-a5be-a58e2c20ba2e', N'They have to draw a diagram.', N'Họ phải vẽ một biểu đồ.', N'/dist/hp/audio/draw (1).MP3', CAST(0x0000A54F00BD0383 AS DateTime), N'392')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f849e51b-0926-4bf4-aae7-bc96e14fc410', N'They only have one child.', N'Họ chỉ có duy nhất một đứa con.', N'/dist/hp/audio/child (1).MP3', CAST(0x0000A54F00BCF7D5 AS DateTime), N'67')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f85348d4-33f7-4b8e-9896-93294fd3eefe', N'The doctor said he would make a quick recovery.', N'Bác sĩ nói rằng anh ta sẽ hồi phục nhanh thôi.', N'/dist/hp/audio/quick (2).MP3', CAST(0x0000A54F00BCFD80 AS DateTime), N'224')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f853ee6f-632a-43b1-8c51-a640f7c29bd7', N'You look so happy.', N'Trông em thật hạnh phúc.', N'/dist/hp/audio/happy (1).MP3', CAST(0x0000A54F00BCF9EE AS DateTime), N'126')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f8845770-dc77-414a-a1c2-9dab068270e7', N'She wears a yellow dress.', N'Cô ấy mặc một cái đầm màu vàng.', N'/dist/hp/audio/yellow (2).MP3', CAST(0x0000A54F00BD01DA AS DateTime), N'345')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f8930bff-7d5a-4f05-8296-64f0a568269c', N'The Football Association is founded on October 26, 1863.', N'Hiệp hội bóng đá được thành lập ngày 26 tháng Mười năm 1863.', N'/dist/hp/audio/association (2).MP3', CAST(0x0000A54F00BD0A4A AS DateTime), N'2034')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f89c2609-4e9a-4d7e-8df4-71852464e11d', N'I put my hands on Anna''s shoulder.', N'Tôi đặt tay lên vai của Anna.', N'/dist/hp/audio/shoulder (2).MP3', CAST(0x0000A54F00BCFE79 AS DateTime), N'251')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f8e5de66-e953-444c-8560-0a1799740f40', N'Now she is a citizen of Australia.', N'Bây giờ cô ấy đã là một công dân của nước Úc.', N'/dist/hp/audio/citizen (1).MP3', CAST(0x0000A54F00BD0B45 AS DateTime), N'2058')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f8ec7298-46f5-4ddb-8993-72b09a8c0822', N'The main crops grown for export are rice and coffee.', N'Cây trồng chính được trồng cho xuất khẩu là lúa và cà phê.', N'/dist/hp/audio/crop (2).MP3', CAST(0x0000A54F00BD0303 AS DateTime), N'378')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9075db4-04f1-44d8-9bf8-88c69c0d95e5', N'Close the door please!', N'Vui lòng đóng cửa lại!', N'/dist/hp/audio/door (1).MP3', CAST(0x0000A54F00BCF831 AS DateTime), N'77')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9159e58-1d5b-4ba8-a1ba-36871d2de9d1', N'I''ll be home in 5 minutes.', N'Con sẽ có mặt ở nhà trong vòng 5 phút nữa.', N'/dist/hp/audio/home (1).MP3', CAST(0x0000A54F00BCFA72 AS DateTime), N'139')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9814fb8-7094-43e5-a303-4230f720e3f3', N'He nodded his head in agreement.', N'Anh ta gật đầu đồng ý.', N'/dist/hp/audio/head (1).MP3', CAST(0x0000A54F00BCFA11 AS DateTime), N'130')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f99be3ea-c02d-4c60-ba9c-6dc29293f5a2', N'I want to have a very full life.', N'Tôi muốn có một cuộc sống thật trọn vẹn.', N'/dist/hp/audio/full (2).MP3', CAST(0x0000A54F00BCF969 AS DateTime), N'111')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9a7e2dd-cbba-4b77-8253-3caf0d0760dc', N'I have a final exam this Sunday.', N'Tôi có một bài thi cuối kì vào Chủ nhật này.', N'/dist/hp/audio/final (1).MP3', CAST(0x0000A54F00BCF8EB AS DateTime), N'97')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9d84dc0-5825-4a93-bea8-4c72c1129536', N'How much are those apples?', N'Những trái táo này bao nhiêu vậy?', N'/dist/hp/audio/those (2).MP3', CAST(0x0000A54F00BD004C AS DateTime), N'301')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9e45b15-b6a3-4132-9ae9-643511d39d9b', N'He made me cry.', N'Anh ấy làm tôi khóc.', N'/dist/hp/audio/cry (1).MP3', CAST(0x0000A54F00BCF7B9 AS DateTime), N'64')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9f17dc5-2343-495e-9288-021e0fab7c38', N'The boy wants to play ball.', N'Thằng bé muốn chơi bóng.', N'/dist/hp/audio/ball (1).MP3', CAST(0x0000A54F00BCF608 AS DateTime), N'19')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9f3435f-cf81-4e72-942e-ef99192f3543', N'The beauty of this place is amazing.', N'Vẻ đẹp nơi đây thật đáng kinh ngạc.', N'/dist/hp/audio/beauty (2).MP3', CAST(0x0000A54F00BD024D AS DateTime), N'358')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'f9fff6dc-9fb6-40dd-898f-f72372f68f88', N'My work starts at 8 o''clock.', N'Công việc của tôi bắt đầu lúc 8 giờ.', N'/dist/hp/audio/at (1).MP3', CAST(0x0000A54F00BCF5E5 AS DateTime), N'15')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fa3290bc-1476-4c48-b190-3fe96701988a', N'He forgot something at the counter.', N'Anh ta đã để quên một số thứ ở quầy tính tiền.', N'/dist/hp/audio/counter (2).MP3', CAST(0x0000A54F00BD0541 AS DateTime), N'1541')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fa4fb4a5-cefc-42a7-8892-f28058ce034a', N'Let''s establish basic rules.', N'Hãy thiết lập những nguyên tắc cơ bản.', N'/dist/hp/audio/establish (1).MP3', CAST(0x0000A54F00BD079D AS DateTime), N'1604')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fb2da003-18fa-4f5b-9e04-f2c7f2632621', N'There are many dark clouds, it is going to rain.', N'Trên trời có rất nhiều mây đen, chắc sắp mưa rồi.', N'/dist/hp/audio/cloud (2).MP3', CAST(0x0000A54F00BCF76B AS DateTime), N'56')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fb82dc69-c55e-4e7b-9a33-7edf8785da6a', N'Lily''s cheeks are wet with tears.', N'Hai má của Lily ướt đẫm nước mắt.', N'/dist/hp/audio/cheek (1).MP3', CAST(0x0000A54F00BD0401 AS DateTime), N'1505')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fb9f7825-526c-45e9-9959-b74968f5d32d', N'I don''t eat sweet things.', N'Tôi không ăn đồ ngọt.', N'/dist/hp/audio/thing (1).MP3', CAST(0x0000A54F00BD0039 AS DateTime), N'299')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fc1080f6-15d7-4032-91c7-d2e4b54f3c7e', N'The discussion lasts three hours.', N'Cuộc thảo luận kéo dài ba tiếng.', N'/dist/hp/audio/discussion (1).MP3', CAST(0x0000A54F00BD067E AS DateTime), N'1574')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fc1636a0-4d22-4f8d-85bd-ddc92d0f2193', N'She wants a bar of chocolate.', N'Con bé muốn một thanh sô-cô-la.', N'/dist/hp/audio/bar (1).MP3', CAST(0x0000A54F00BCF627 AS DateTime), N'22')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fc376d94-f4fd-46de-8ff7-f3400c574616', N'He is an art teacher.', N'Ông ấy là giáo viên mỹ thuật.', N'/dist/hp/audio/art (1).MP3', CAST(0x0000A54F00BCF5C8 AS DateTime), N'12')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fca2ce9d-8d0b-42f7-8286-54eb875ab81b', N'I don''t think you can come here now.', N'Tôi không nghĩ anh có thể đến đây ngay bây giờ.', N'/dist/hp/audio/think (1).MP3', CAST(0x0000A54F00BD0030 AS DateTime), N'298')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fcb0b1ed-4c60-4865-a644-cc8eed7ba104', N'She''s very excited about her small fortune.', N'Cô ấy rất phấn khích với một chút vận may của mình.', N'/dist/hp/audio/fortune (2).MP3', CAST(0x0000A54F00BD0887 AS DateTime), N'1630')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fd06ea48-af7c-4af3-a983-1cd86ce3d941', N'Birds build nests on trees.', N'Các loài chim thường xây tổ trên cây.', N'/dist/hp/audio/build (1).MP3', CAST(0x0000A54F00BD028D AS DateTime), N'365')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fd587e5f-3da4-4f17-bfba-1d4274068f3d', N'The chair leg was broken.', N'Cái chân ghế bị gãy rồi.', N'/dist/hp/audio/leg (2).MP3', CAST(0x0000A54F00BCFB3A AS DateTime), N'161')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fd5e7d07-8951-4c18-88aa-a0f361d74444', N'You should edit these additional items.', N'Cô nên chỉnh sửa lại những điều khoản bổ sung này.', N'/dist/hp/audio/additional (1).MP3', CAST(0x0000A54F00BD09A7 AS DateTime), N'2020')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fd66aefc-2359-4d32-bac9-20ccec56320f', N'Adam has financial difficulties.', N'Adam đang gặp khó khăn về tài chính.', N'/dist/hp/audio/financial (1).MP3', CAST(0x0000A54F00BD0849 AS DateTime), N'1623')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fda69dd6-48cf-47f8-84b5-6b36a7f367ce', N'You should have seen the size of the project.', N'Anh nên xem xét quy mô của dự án đó.', N'/dist/hp/audio/size (2).MP3', CAST(0x0000A54F00BCFEA6 AS DateTime), N'256')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fe3326e3-4f01-4042-961b-87415026b5f6', N'I get caught in traffic jam every morning when I go to work.', N'Sáng nào tôi cũng bị kẹt xe khi đi làm.', N'/dist/hp/audio/every (2).MP3', CAST(0x0000A54F00BCF8A9 AS DateTime), N'90')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fe99cf13-0978-41dd-aad5-c25dc4d864d1', N'I wants to talk to the director directly.', N'Tôi muốn nói chuyện trực tiếp với giám đốc.', N'/dist/hp/audio/directly (1).MP3', CAST(0x0000A54F00BD0649 AS DateTime), N'1569')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'febf5f8e-1888-4a5f-b797-a238ce456603', N'He has 2 sons and 2 daughters.', N'Ông có 2 con trai và 2 con gái.', N'/dist/hp/audio/son (1).MP3', CAST(0x0000A54F00BCFEDF AS DateTime), N'262')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fecc7e21-6894-4d23-9e3b-c8f319ed584c', N'Max didn''t give evidence in court.', N'Max đã không đưa ra được bằng chứng ở tòa án.', N'/dist/hp/audio/evidence (1).MP3', CAST(0x0000A54F00BD07A7 AS DateTime), N'1605')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'fefa09ab-577a-47a7-98f6-cbea38c7cdef', N'Ava has a blue shirt and a white dress.', N'Ava có một cái áo sơ mi màu xanh và một cái váy trắng.', N'/dist/hp/audio/and (2).MP3', CAST(0x0000A54F00BCF5A3 AS DateTime), N'8')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ff27f482-e55c-48c9-9947-fcf6113ab6ed', N'I''m just going out for a bit.', N'Tôi chỉ ra ngoài một chút thôi.', N'/dist/hp/audio/out (2).MP3', CAST(0x0000A54F00BCFD14 AS DateTime), N'212')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ff2ef1d9-e056-4b9a-ba09-203a0d09a449', N'My family has 5 generations.', N'Gia đình tôi có 5 thế hệ.', N'/dist/hp/audio/generation (1).MP3', CAST(0x0000A54F00BD08EB AS DateTime), N'1641')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ff3f6785-377d-46da-8470-b8ca6b258ace', N'An art exhibition will open next Monday.', N'Buổi triển lãm mỹ thuật sẽ được khai mạc vào thứ hai tuần sau.', N'/dist/hp/audio/art (2).MP3', CAST(0x0000A54F00BCF5C8 AS DateTime), N'12')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ffa9b9fe-4248-4eb5-98c4-ab96fb9e3609', N'I have many things to prepare before wedding.', N'Tôi có rất nhiều thứ phải chuẩn bị trước đám cưới.', N'/dist/hp/audio/thing (2).MP3', CAST(0x0000A54F00BD0039 AS DateTime), N'299')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ffd16bf2-ad92-49e3-92a6-191d298d3991', N'I don''t want to work with him.', N'Tôi không muốn làm việc với anh ta.', N'/dist/hp/audio/with (2).MP3', CAST(0x0000A54F00BD01A3 AS DateTime), N'339')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ffd48309-b165-4898-8908-2c81a8eabdb6', N'My aunt absolutely loves Pho.', N'Dì tôi rất rất yêu thích món Phở.', N'/dist/hp/audio/absolutely (2).MP3', CAST(0x0000A54F00BD095C AS DateTime), N'2014')
GO
INSERT [dbo].[WordExampleSentences] ([ExampleSentenceId], [Sentence], [Meaning], [AudioLink], [CreatedDate], [WordId]) VALUES (N'ffe333dc-9bec-45e7-96c1-ce8ab16e7c01', N'I like fruits such as apples, bananas, strawberries, and oranges. ', N'Tôi thích các loại trái cây như là táo, chuối, dâu tây và cam.', N'/dist/hp/audio/as (2).MP3', CAST(0x0000A54F00BCF5D1 AS DateTime), N'13')
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000001', N'JE8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000002', N'ZLH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000003', N'UR5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000004', N'67K', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000005', N'T80', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000006', N'CBE', 730, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000007', N'URA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000008', N'TR4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000009', N'STA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000010', N'749', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000011', N'VR2', 730, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000012', N'A1F', 730, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000013', N'EDS', 36135, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000014', N'57P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000015', N'T4O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000016', N'R96', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000017', N'3U2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000018', N'1HK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000019', N'S33', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000020', N'8GR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000021', N'470', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000022', N'45E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000023', N'YHC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000024', N'KT5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000025', N'YNH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000026', N'MEJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000027', N'G06', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000028', N'SRS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000029', N'8K3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000030', N'IUT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000031', N'MQD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000032', N'TIP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000033', N'FBM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000034', N'KYM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000035', N'XQ6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000036', N'3X1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000037', N'JLM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000038', N'W72', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000039', N'HC7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000040', N'49Y', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000041', N'HMT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000042', N'YZF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000043', N'0R6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000044', N'SPW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000045', N'01I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000046', N'LXS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000047', N'T93', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000048', N'Q1N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000049', N'30A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000050', N'6EB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000051', N'14H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000052', N'5OX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000053', N'EII', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000054', N'6JB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000055', N'JX0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000056', N'34G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000057', N'AO2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000058', N'7RZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000059', N'RMU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000060', N'OY0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000061', N'0EF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000062', N'JW6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000063', N'SFZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000064', N'QR9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000065', N'W8L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000066', N'XPP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000067', N'T7M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000068', N'M58', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000069', N'U5J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000070', N'XJM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000071', N'3BM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000072', N'JF1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000073', N'4WJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000074', N'5JG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000075', N'3X7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000076', N'KOE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000077', N'WQK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000078', N'LDI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000079', N'WFU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000080', N'X77', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000081', N'MU2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000082', N'GXE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000083', N'DJT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000084', N'ZWT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000085', N'0BN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000086', N'MTO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000087', N'26H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000088', N'1YG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000089', N'N4B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000090', N'G9R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000091', N'T58', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000092', N'S0N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000093', N'UCU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000094', N'HCD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000095', N'3Y7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000096', N'FV9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000097', N'BU2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000098', N'TD6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000099', N'OBA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000100', N'XTP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000101', N'LEV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000102', N'SBU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000103', N'WWD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000104', N'4C4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000105', N'IPJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000106', N'RO7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000107', N'8EY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000108', N'LTB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000109', N'CIE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000110', N'5CH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000111', N'FUC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000112', N'UNN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000113', N'FR3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000114', N'MDA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000115', N'MXJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000116', N'IAD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000117', N'UPU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000118', N'XXN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000119', N'K2Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000120', N'A80', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000121', N'W6T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000122', N'ZZ9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000123', N'L1H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000124', N'AWM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000125', N'WE1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000126', N'9BO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000127', N'WLY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000128', N'BOA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000129', N'NUD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000130', N'2YG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000131', N'XO4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000132', N'4BD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000133', N'FFL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000134', N'U76', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000135', N'CYG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000136', N'AYF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000137', N'CAE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000138', N'F5J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000139', N'GS1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000140', N'IKE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000141', N'0CK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000142', N'VFB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000143', N'RKI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000144', N'QQK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000145', N'CK7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000146', N'JTC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000147', N'BRV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000148', N'5YB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000149', N'KOQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000150', N'JKK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000151', N'T91', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000152', N'6U3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000153', N'9FI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000154', N'J7Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000155', N'336', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000156', N'ZHS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000157', N'JKQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000158', N'YPW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000159', N'680', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000160', N'T1F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000161', N'6AA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000162', N'WXJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000163', N'589', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000164', N'56I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000165', N'H0L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000166', N'YAL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000167', N'PKU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000168', N'ESZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000169', N'KXS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000170', N'97B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000171', N'GNZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000172', N'59B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000173', N'L39', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000174', N'04Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000175', N'BDS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000176', N'Z7H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000177', N'TEH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000178', N'DTX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000179', N'8OU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000180', N'LLB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000181', N'Q87', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000182', N'5KF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000183', N'JNB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000184', N'4Y6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000185', N'VA0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000186', N'WSB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000187', N'V2N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000188', N'2TU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000189', N'CQX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000190', N'UAY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000191', N'GT3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000192', N'YU2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000193', N'BQG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000194', N'YSN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000195', N'SKF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000196', N'EWO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000197', N'JCE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000198', N'ZEZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000199', N'YY9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000200', N'URR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000201', N'83S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000202', N'ZAQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000203', N'KJI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000204', N'WJ2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000205', N'087', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000206', N'A7T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000207', N'G2H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000208', N'C2Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000209', N'TQP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000210', N'A9D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000211', N'C71', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000212', N'1RN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000213', N'7OL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000214', N'T8Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000215', N'84Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000216', N'LCW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000217', N'LP3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000218', N'MC5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000219', N'CD9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000220', N'EO5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000221', N'U1W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000222', N'M6B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000223', N'HTH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000224', N'WWY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000225', N'E76', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000226', N'40Y', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000227', N'8ZZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000228', N'A0B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000229', N'C2M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000230', N'L4T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000231', N'Q4X', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000232', N'YWI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000233', N'PV1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000234', N'E00', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000235', N'6Q5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000236', N'E9W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000237', N'RP2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000238', N'T3L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000239', N'NKG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000240', N'G9O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000241', N'FL3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000242', N'UFX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000243', N'FP2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000244', N'4IW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000245', N'YF2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000246', N'56M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000247', N'S69', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000248', N'YM0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000249', N'0XD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000250', N'2TE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000251', N'3JL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000252', N'1V2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000253', N'1S0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000254', N'AGC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000255', N'9BX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000256', N'H4L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000257', N'FS9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000258', N'FM6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000259', N'GDD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000260', N'OJ5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000261', N'MYA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000262', N'N9S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000263', N'Q3D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000264', N'1X9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000265', N'M3U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000266', N'58W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000267', N'57T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000268', N'LSB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000269', N'0N8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000270', N'OFC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000271', N'KPN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000272', N'X38', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000273', N'VI6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000274', N'92D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000275', N'B44', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000276', N'JOM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000277', N'IRY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000278', N'B2Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000279', N'WEV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000280', N'TD8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000281', N'I6V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000282', N'U61', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000283', N'EG3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000284', N'PD2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000285', N'UHD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000286', N'LRO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000287', N'Q7K', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000288', N'4ZA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000289', N'WTR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000290', N'GP8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000291', N'H0J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000292', N'PAQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000293', N'GWA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000294', N'RRJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000295', N'H68', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000296', N'EH7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000297', N'03P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000298', N'M17', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000299', N'75G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000300', N'ST0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000301', N'2N7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000302', N'1VS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000303', N'E6Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000304', N'KOA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000305', N'1JE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000306', N'FJD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000307', N'8A2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000308', N'1TI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000309', N'CFC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000310', N'OKU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000311', N'L99', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000312', N'G1W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000313', N'NK4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000314', N'H3R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000315', N'A5E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000316', N'JBJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000317', N'MDK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000318', N'TT5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000319', N'ILG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000320', N'IIF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000321', N'I5R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000322', N'TSQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000323', N'AHW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000324', N'Y2A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000325', N'0UT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000326', N'NJW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000327', N'MM5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000328', N'75W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000329', N'ES4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000330', N'BNU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000331', N'UQ9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000332', N'O9N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000333', N'61G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000334', N'SND', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000335', N'556', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000336', N'AV3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000337', N'G2C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000338', N'CID', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000339', N'BG3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000340', N'37W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000341', N'G4F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000342', N'IGG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000343', N'5Y3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000344', N'OK8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000345', N'CV0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000346', N'8Z7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000347', N'6D3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000348', N'RW1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000349', N'NKQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000350', N'IPY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000351', N'UCY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000352', N'0K1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000353', N'L1R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000354', N'EPH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000355', N'BBN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000356', N'J1O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000357', N'0FA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000358', N'VMU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000359', N'JY0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000360', N'4RW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000361', N'DMZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000362', N'BO3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000363', N'VOP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000364', N'MY3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000365', N'FWD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000366', N'YE1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000367', N'RQU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000368', N'SFG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000369', N'6JO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000370', N'DAG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000371', N'ZUN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000372', N'348', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000373', N'M8H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000374', N'HKB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000375', N'YY6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000376', N'OE7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000377', N'X4T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000378', N'WS1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000379', N'TXJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000380', N'ZO1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000381', N'MJW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000382', N'7N4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000383', N'GC2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000384', N'244', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000385', N'PTM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000386', N'Z1M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000387', N'737', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000388', N'2C9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000389', N'DPK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000390', N'8PS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000391', N'F3T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000392', N'420', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000393', N'CVA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000394', N'ZP4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000395', N'T5R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000396', N'CPG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000397', N'QNE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000398', N'LAC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000399', N'CBI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000400', N'VR6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000401', N'Z57', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000402', N'SWD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000403', N'WQM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000404', N'A4S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000405', N'7OO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000406', N'BIT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000407', N'CHX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000408', N'H5L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000409', N'3AT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000410', N'ELL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000411', N'HC4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000412', N'PC2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000413', N'VOG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000414', N'BJY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000415', N'L68', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000416', N'KBY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000417', N'8B7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000418', N'YWH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000419', N'UPH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000420', N'9CN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000421', N'76Y', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000422', N'2J2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000423', N'NM9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000424', N'JMW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000425', N'UE9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000426', N'WHJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000427', N'YM3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000428', N'RU8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000429', N'YL7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000430', N'M4E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000431', N'IHQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000432', N'ZQA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000433', N'SME', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000434', N'MRQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000435', N'CWW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000436', N'JEF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000437', N'MSR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000438', N'COV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000439', N'7J7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000440', N'EWN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000441', N'XUB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000442', N'V5O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000443', N'KSW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000444', N'57N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000445', N'V2R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000446', N'IF4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000447', N'B9T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000448', N'9DI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000449', N'UML', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000450', N'TXR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000451', N'GT9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000452', N'506', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000453', N'7GA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000454', N'AYB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000455', N'3X6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000456', N'67M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000457', N'6I6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000458', N'AL9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000459', N'585', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000460', N'UI1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000461', N'3GK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000462', N'LR6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000463', N'LZ8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000464', N'28V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000465', N'TUF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000466', N'0L7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000467', N'PTJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000468', N'N4A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000469', N'HNV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000470', N'IJP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000471', N'Q22', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000472', N'DMT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000473', N'5IF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000474', N'6HY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000475', N'EV6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000476', N'ERJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000477', N'6B0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000478', N'04E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000479', N'H8F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000480', N'8HZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000481', N'FRZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000482', N'2GR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000483', N'J9I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000484', N'CSP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000485', N'1LQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000486', N'A6R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000487', N'P3W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000488', N'58D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000489', N'HDI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000490', N'4RM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000491', N'JUM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000492', N'F74', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000493', N'8PU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000494', N'9MY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000495', N'D39', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000496', N'XDR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000497', N'1YY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000498', N'PGJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000499', N'8QK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000500', N'BLJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000501', N'6RD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000502', N'TQM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000503', N'NQB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000504', N'3GO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000505', N'V7C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000506', N'9FX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000507', N'9RC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000508', N'28Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000509', N'QP7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000510', N'WFG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000511', N'F0W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000512', N'KJE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000513', N'K5E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000514', N'5P7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000515', N'NL1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000516', N'8XD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000517', N'DLS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000518', N'6KW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000519', N'YPQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000520', N'2BA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000521', N'W0I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000522', N'41I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000523', N'CRX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000524', N'OK6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000525', N'GJ5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000526', N'WSV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000527', N'BJA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000528', N'R9K', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000529', N'S1E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000530', N'BY4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000531', N'KFC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000532', N'GMW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000533', N'6T2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000534', N'7QJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000535', N'RDP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000536', N'N1G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000537', N'Y30', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000538', N'K2Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000539', N'UOD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000540', N'QFD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000541', N'I9V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000542', N'434', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000543', N'MY2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000544', N'GUF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000545', N'X43', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000546', N'SXB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000547', N'544', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000548', N'1H7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000549', N'370', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000550', N'P4T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000551', N'UUU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000552', N'4NZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000553', N'NLT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000554', N'JGX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000555', N'HB7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000556', N'9V7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000557', N'MMN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000558', N'Z7C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000559', N'DHL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000560', N'MNZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000561', N'6DC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000562', N'QXJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000563', N'3LH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000564', N'VAU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000565', N'KAP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000566', N'OV0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000567', N'QQA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000568', N'R56', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000569', N'Z8V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000570', N'S2G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000571', N'G8M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000572', N'E3R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000573', N'04R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000574', N'UZM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000575', N'6KR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000576', N'8AM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000577', N'PL8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000578', N'ZUW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000579', N'FG1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000580', N'OQM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000581', N'9HU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000582', N'V04', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000583', N'PC5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000584', N'ZPF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000585', N'L7K', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000586', N'JYZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000587', N'09O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000588', N'MNY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000589', N'45V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000590', N'RHC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000591', N'PMR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000592', N'HYW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000593', N'FAJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000594', N'ZD0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000595', N'7QL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000596', N'ABW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000597', N'WEB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000598', N'2XZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000599', N'8ZS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000600', N'0PY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000601', N'Y88', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000602', N'AMH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000603', N'6H0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000604', N'3G8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000605', N'KD3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000606', N'IR4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000607', N'N40', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000608', N'08U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000609', N'U1Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000610', N'OHQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000611', N'R1N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000612', N'DPH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000613', N'CCQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000614', N'0VU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000615', N'DYX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000616', N'XRY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000617', N'7TM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000618', N'0TH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000619', N'GO1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000620', N'YNM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000621', N'SZL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000622', N'WYA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000623', N'4XM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000624', N'SSB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000625', N'48U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000626', N'L9J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000627', N'136', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000628', N'D2L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000629', N'T19', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000630', N'JD4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000631', N'MIB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000632', N'DLU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000633', N'0HW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000634', N'RV2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000635', N'16M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000636', N'CPU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000637', N'D7P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000638', N'14U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000639', N'6UX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000640', N'91Y', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000641', N'9ND', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000642', N'7N9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000643', N'Z3F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000644', N'0EI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000645', N'PXA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000646', N'TVA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000647', N'58J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000648', N'J8R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000649', N'3PR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000650', N'9BB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000651', N'39C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000652', N'RQ2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000653', N'ZD1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000654', N'ROB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000655', N'DNH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000656', N'9UV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000657', N'3DH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000658', N'EVK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000659', N'L42', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000660', N'9IU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000661', N'5DZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000662', N'A6A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000663', N'LYH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000664', N'PQC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000665', N'6GO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000666', N'IHL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000667', N'DTO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000668', N'Q37', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000669', N'XGJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000670', N'I9M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000671', N'C79', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000672', N'FLW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000673', N'F91', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000674', N'52J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000675', N'3Q0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000676', N'GEL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000677', N'PKB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000678', N'ULH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000679', N'YAE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000680', N'WXL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000681', N'18H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000682', N'8NX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000683', N'3FF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000684', N'8R4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000685', N'PDQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000686', N'BRH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000687', N'UD7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000688', N'REE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000689', N'S19', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000690', N'6JH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000691', N'ZW0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000692', N'ZXC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000693', N'1ME', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000694', N'7E2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000695', N'C8J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000696', N'UKA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000697', N'5O7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000698', N'T8P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000699', N'XYP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000700', N'CNB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000701', N'V00', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000702', N'4ST', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000703', N'FPK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000704', N'IO9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000705', N'H6M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000706', N'O6U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000707', N'6ZT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000708', N'JEP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000709', N'SJW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000710', N'1C0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000711', N'6OD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000712', N'XEP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000713', N'6A7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000714', N'PSG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000715', N'5HW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000716', N'6SU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000717', N'91W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000718', N'QWG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000719', N'SAS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000720', N'1QY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000721', N'87N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000722', N'Z24', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000723', N'JJD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000724', N'5VW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000725', N'XWM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000726', N'L87', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000727', N'QHF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000728', N'AR7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000729', N'SGT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000730', N'I60', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000731', N'LXB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000732', N'6RF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000733', N'BQQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000734', N'X55', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000735', N'6XU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000736', N'I4M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000737', N'7C6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000738', N'JPS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000739', N'UVY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000740', N'HIM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000741', N'G4C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000742', N'RUG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000743', N'50U', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000744', N'1WA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000745', N'ACC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000746', N'6ZI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000747', N'9B6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000748', N'DHE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000749', N'EQH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000750', N'IL0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000751', N'AOV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000752', N'V1N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000753', N'K1E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000754', N'2UW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000755', N'2JM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000756', N'3LT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000757', N'ED6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000758', N'C0L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000759', N'M74', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000760', N'FWZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000761', N'00R', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000762', N'7P7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000763', N'WNL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000764', N'K1I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000765', N'P7D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000766', N'MD7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000767', N'ZIU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000768', N'8H3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000769', N'W17', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000770', N'Y1M', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000771', N'KM3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000772', N'LM0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000773', N'6PT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000774', N'91Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000775', N'YNS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000776', N'KDE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000777', N'1R6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000778', N'7P3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000779', N'C6T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000780', N'UJJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000781', N'Q60', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000782', N'Y68', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000783', N'9VA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000784', N'2AN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000785', N'5LC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000786', N'6L3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000787', N'7WD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000788', N'TU7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000789', N'KIL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000790', N'4QZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000791', N'3WW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000792', N'88O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000793', N'Q1O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000794', N'IRJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000795', N'JH3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000796', N'05O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000797', N'4RY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000798', N'K38', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000799', N'ZZC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000800', N'PDO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000801', N'GWI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000802', N'FBG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000803', N'EFD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000804', N'96E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000805', N'54W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000806', N'6ZK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000807', N'FG2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000808', N'BWM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000809', N'Z4F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000810', N'R86', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000811', N'1AV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000812', N'Z70', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000813', N'QP0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000814', N'DAF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000815', N'I8E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000816', N'VM3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000817', N'DZ5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000818', N'Q0O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000819', N'L78', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000820', N'OI4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000821', N'LYC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000822', N'FH8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000823', N'PR5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000824', N'Y2P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000825', N'472', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000826', N'LP7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000827', N'6ZO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000828', N'QLQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000829', N'O0V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000830', N'KH9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000831', N'PYR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000832', N'DIS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000833', N'YWA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000834', N'V76', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000835', N'0RI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000836', N'7Y5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000837', N'TYX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000838', N'IPD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000839', N'2P7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000840', N'63V', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000841', N'TBS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000842', N'WLW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000843', N'S4O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000844', N'8TU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000845', N'YF5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000846', N'XU8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000847', N'BIF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000848', N'D6Y', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000849', N'RTM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000850', N'WIV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000851', N'R04', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000852', N'WJR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000853', N'76S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000854', N'QYS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000855', N'T03', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000856', N'FZW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000857', N'GIN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000858', N'9W6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000859', N'CMH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000860', N'2M9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000861', N'T1T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000862', N'K4G', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000863', N'YAF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000864', N'31W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000865', N'2A3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000866', N'BUL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000867', N'JT1', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000868', N'P2B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000869', N'U28', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000870', N'F7F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000871', N'JNE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000872', N'53A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000873', N'U2D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000874', N'MJZ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000875', N'0ZT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000876', N'W54', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000877', N'U3N', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000878', N'E5B', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000879', N'S7I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000880', N'U7Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000881', N'2TA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000882', N'JWN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000883', N'6ZS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000884', N'WFD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000885', N'ABV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000886', N'ZO0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000887', N'L85', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000888', N'A7S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000889', N'M3J', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000890', N'QYJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000891', N'233', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000892', N'ULI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000893', N'YFP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000894', N'WI0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000895', N'27C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000896', N'O5I', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000897', N'J01', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000898', N'UKF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000899', N'92W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000900', N'VRL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000901', N'OW4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000902', N'XN8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000903', N'4JS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000904', N'SJV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000905', N'IVR', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000906', N'LBV', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000907', N'4VX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000908', N'Q19', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000909', N'O2W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000910', N'MMJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000911', N'DCL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000912', N'C49', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000913', N'J25', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000914', N'MB9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000915', N'SIE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000916', N'A4H', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000917', N'NC2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000918', N'NAS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000919', N'XBQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000920', N'I58', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000921', N'GUD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000922', N'SWK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000923', N'XN4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000924', N'JQT', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000925', N'UED', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000926', N'BXB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000927', N'DID', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000928', N'6QF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000929', N'MZE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000930', N'4DI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000931', N'8US', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000932', N'6J2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000933', N'SQ7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000934', N'IL6', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000935', N'XK8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000936', N'ATI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000937', N'7PD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000938', N'QVG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000939', N'82Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000940', N'G3L', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000941', N'IG5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000942', N'N74', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000943', N'RYG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000944', N'WQD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000945', N'DPD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000946', N'1SW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000947', N'F4A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000948', N'GRP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000949', N'QPJ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000950', N'AI4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000951', N'803', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000952', N'W0T', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000953', N'PRH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000954', N'A1K', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000955', N'REY', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000956', N'O9S', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000957', N'90E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000958', N'KQ5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000959', N'JQU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000960', N'21P', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000961', N'M6W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000962', N'XZP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000963', N'KJL', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000964', N'ZOI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000965', N'LNO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000966', N'YIP', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000967', N'O25', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000968', N'1Z4', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000969', N'LGB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000970', N'FAW', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000971', N'2KM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000972', N'0UE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000973', N'KXG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000974', N'52D', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000975', N'GIC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000976', N'L0A', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000977', N'32O', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000978', N'AVC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000979', N'2JU', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000980', N'P2Z', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000981', N'EW2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000982', N'BDD', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000983', N'EFH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000984', N'F7C', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000985', N'SLQ', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000986', N'JCH', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000987', N'RCE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000988', N'9T5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000989', N'W23', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000990', N'6V9', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000991', N'1VM', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000992', N'FOC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000993', N'L29', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000994', N'58Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000995', N'LDG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000996', N'J1W', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000997', N'S0F', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000998', N'ZSC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500000999', N'NFX', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001000', N'TQC', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001001', N'ME7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001002', N'AWN', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001003', N'2VO', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001004', N'RFA', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001005', N'755', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001006', N'QAI', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001007', N'QN8', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001008', N'XO5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001009', N'P7Q', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001010', N'H21', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001011', N'0ME', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001012', N'1ZE', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001013', N'6TG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001014', N'XU3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001015', N'6KK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001016', N'MMG', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001017', N'XK7', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001018', N'YG2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001019', N'2RK', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001020', N'JJF', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001021', N'SR5', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001022', N'KX3', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001023', N'8B2', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001024', N'LYB', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001025', N'XLS', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001026', N'R4E', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001027', N'112', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[HepaPassports] ([PassportId], [Code], [ExpiryDate], [CreateDate], [ActiveDate], [UserId]) VALUES (N'8902881500001028', N'XD0', 365, CAST(0x0000A54B00000000 AS DateTime), NULL, NULL)
GO
