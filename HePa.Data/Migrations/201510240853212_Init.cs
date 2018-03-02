namespace HePa.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.HepaPassports",
                c => new
                    {
                        PassportId = c.String(nullable: false, maxLength: 128),
                        Code = c.String(),
                        ExpiryDate = c.Int(),
                        CreateDate = c.DateTime(),
                        ActiveDate = c.DateTime(),
                        UserId = c.String(),
                    })
                .PrimaryKey(t => t.PassportId);
            
            CreateTable(
                "dbo.PromotionEvent",
                c => new
                    {
                        PromotionEventId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false),
                        Type = c.Int(nullable: false),
                        Value = c.Int(nullable: false),
                        Desciption = c.String(),
                        LimitedCondition = c.Int(nullable: false),
                        CreateDate = c.DateTime(),
                        EndDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.PromotionEventId);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        Role = c.String(),
                        IsVerified = c.Boolean(nullable: false),
                        IsPaid = c.Boolean(nullable: false),
                        IsBanned = c.Boolean(nullable: false),
                        Name = c.String(),
                        BirthDay = c.DateTime(),
                        Job = c.String(),
                        Place = c.String(),
                        Avatar = c.String(),
                        CreatedDate = c.DateTime(),
                        LastActive = c.DateTime(),
                        Language = c.Int(nullable: false),
                        LoginProvider = c.String(),
                        DisplayName = c.String(maxLength: 64),
                        AccessKey = c.String(maxLength: 10),
                        LastAccess = c.DateTime(),
                        IsBlocked = c.Boolean(nullable: false),
                        BlockCounter = c.Int(nullable: false),
                        CurrentExp = c.Int(nullable: false),
                        ContinousCounter = c.Int(nullable: false),
                        LastDiligentDate = c.DateTime(),
                        ExpDate = c.Int(nullable: false),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.UserId)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.ClassComments",
                c => new
                    {
                        ClassCommentId = c.String(nullable: false, maxLength: 128),
                        CommentContent = c.String(),
                        Votes = c.Int(nullable: false),
                        CommentParent = c.Int(nullable: false),
                        CreatedDate = c.DateTime(),
                        ClassId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.ClassCommentId)
                .ForeignKey("dbo.Classes", t => t.ClassId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.ClassId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Classes",
                c => new
                    {
                        ClassId = c.String(nullable: false, maxLength: 128),
                        ClassName = c.String(nullable: false),
                        StartDate = c.DateTime(),
                        EndDate = c.DateTime(),
                        Abstract = c.String(nullable: false),
                        Image = c.String(),
                        CreatedDate = c.DateTime(),
                        TotalLikes = c.Int(nullable: false),
                        TotalLearns = c.Int(nullable: false),
                        NumberOfWords = c.Int(nullable: false),
                        NumberOfPhrases = c.Int(nullable: false),
                        NumberOfGrammars = c.Int(nullable: false),
                        NumberOfPronunciations = c.Int(nullable: false),
                        NumberOfWeeks = c.Double(nullable: false),
                        IsMaintained = c.Boolean(nullable: false),
                        CreatedByUserId = c.String(nullable: false, maxLength: 128),
                        CourseId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.ClassId)
                .ForeignKey("dbo.Courses", t => t.CourseId)
                .ForeignKey("dbo.AspNetUsers", t => t.CreatedByUserId)
                .Index(t => t.CreatedByUserId)
                .Index(t => t.CourseId);
            
            CreateTable(
                "dbo.Courses",
                c => new
                    {
                        CourseId = c.String(nullable: false, maxLength: 128),
                        CourseName = c.String(),
                        StartDate = c.DateTime(),
                        EndDate = c.DateTime(),
                        Abstract = c.String(),
                        CreatedDate = c.DateTime(),
                        TotalLikes = c.Int(nullable: false),
                        Image = c.String(),
                        NumberOfWords = c.Int(nullable: false),
                        NumberOfPhrases = c.Int(nullable: false),
                        NumberOfGrammars = c.Int(nullable: false),
                        NumberOfPronunciations = c.Int(nullable: false),
                        CreatedUserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.CourseId)
                .ForeignKey("dbo.AspNetUsers", t => t.CreatedUserId)
                .Index(t => t.CreatedUserId);
            
            CreateTable(
                "dbo.UsersJoinClasses_Goal",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClassId = c.String(nullable: false, maxLength: 128),
                        NumberOfDays = c.Double(nullable: false),
                        CreatedDate = c.DateTime(),
                        LastChanged = c.DateTime(),
                        LastActive = c.DateTime(),
                        CourseId = c.String(nullable: false, maxLength: 128),
                        Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.ClassId })
                .ForeignKey("dbo.Classes", t => t.ClassId)
                .ForeignKey("dbo.Courses", t => t.CourseId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId)
                .Index(t => t.ClassId)
                .Index(t => t.CourseId);
            
            CreateTable(
                "dbo.Phrases",
                c => new
                    {
                        PhraseId = c.String(nullable: false, maxLength: 128),
                        aPhrase = c.String(),
                        ImageLink = c.String(),
                        IPA = c.String(),
                        Meaning = c.String(),
                        AudioLink = c.String(maxLength: 128),
                        TotalLikes = c.Int(nullable: false),
                        TotalViews = c.Int(nullable: false),
                        TotalComments = c.Int(nullable: false),
                        CreatedDate = c.DateTime(),
                        Complexity = c.Int(nullable: false),
                        ClassBelongId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.PhraseId)
                .ForeignKey("dbo.Classes", t => t.ClassBelongId)
                .Index(t => t.ClassBelongId);
            
            CreateTable(
                "dbo.PhraseComments",
                c => new
                    {
                        PhraseCommentId = c.String(nullable: false, maxLength: 128),
                        CommentContent = c.String(),
                        Votes = c.Int(nullable: false),
                        CommentParent = c.Int(nullable: false),
                        CreatedDate = c.DateTime(),
                        PhraseId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.PhraseCommentId)
                .ForeignKey("dbo.Phrases", t => t.PhraseId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.PhraseId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.PhraseExampleSentances",
                c => new
                    {
                        ExamplePhraseId = c.String(nullable: false, maxLength: 128),
                        Sentence = c.String(nullable: false),
                        Meaning = c.String(nullable: false),
                        AudioLink = c.String(),
                        CreatedDate = c.DateTime(),
                        PhraseId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.ExamplePhraseId)
                .ForeignKey("dbo.Phrases", t => t.PhraseId)
                .Index(t => t.PhraseId);
            
            CreateTable(
                "dbo.Tags",
                c => new
                    {
                        TagId = c.String(nullable: false, maxLength: 128),
                        TagName = c.String(),
                    })
                .PrimaryKey(t => t.TagId);
            
            CreateTable(
                "dbo.Words",
                c => new
                    {
                        WordId = c.String(nullable: false, maxLength: 128),
                        aWord = c.String(nullable: false),
                        ImageLink = c.String(),
                        IPA = c.String(nullable: false),
                        Meaning = c.String(nullable: false),
                        AudioLink = c.String(maxLength: 128),
                        TotalLikes = c.Int(),
                        TotalComments = c.Int(),
                        TotalViews = c.Int(),
                        CreatedDate = c.DateTime(),
                        Complexity = c.Int(nullable: false),
                        PartOfSpeech = c.String(),
                        ClassBelongId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.WordId)
                .ForeignKey("dbo.Classes", t => t.ClassBelongId)
                .Index(t => t.ClassBelongId);
            
            CreateTable(
                "dbo.WordComments",
                c => new
                    {
                        WordCommentId = c.String(nullable: false, maxLength: 128),
                        CommentContent = c.String(),
                        CommentParent = c.String(),
                        Votes = c.Int(nullable: false),
                        CreatedDate = c.DateTime(),
                        NumberOfReplies = c.Int(nullable: false),
                        WordId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.WordCommentId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .ForeignKey("dbo.Words", t => t.WordId)
                .Index(t => t.WordId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.UsersLikedWordComments",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        CommentId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => new { t.UserId, t.CommentId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .ForeignKey("dbo.WordComments", t => t.CommentId)
                .Index(t => t.UserId)
                .Index(t => t.CommentId);
            
            CreateTable(
                "dbo.WordExampleSentences",
                c => new
                    {
                        ExampleSentenceId = c.String(nullable: false, maxLength: 128),
                        Sentence = c.String(nullable: false),
                        Meaning = c.String(nullable: false),
                        AudioLink = c.String(),
                        CreatedDate = c.DateTime(),
                        WordId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.ExampleSentenceId)
                .ForeignKey("dbo.Words", t => t.WordId)
                .Index(t => t.WordId);
            
            CreateTable(
                "dbo.Currency_UserMap",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        CurrencyId = c.String(nullable: false, maxLength: 128),
                        Amount = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserId, t.CurrencyId })
                .ForeignKey("dbo.Currency", t => t.CurrencyId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.CurrencyId);
            
            CreateTable(
                "dbo.Currency",
                c => new
                    {
                        CurrencyId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                        IconLink = c.String(),
                        CreateDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.CurrencyId);
            
            CreateTable(
                "dbo.UserWithExperiences",
                c => new
                    {
                        UserExperienceId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(),
                        KindOfExpId = c.String(nullable: false, maxLength: 128),
                        Exp = c.Int(nullable: false),
                        ActionName = c.String(maxLength: 1024),
                    })
                .PrimaryKey(t => t.UserExperienceId)
                .ForeignKey("dbo.KindOfExperiences", t => t.KindOfExpId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.KindOfExpId);
            
            CreateTable(
                "dbo.KindOfExperiences",
                c => new
                    {
                        KindOfExpId = c.String(nullable: false, maxLength: 128),
                        ExpName = c.String(),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.KindOfExpId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Rank_User",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RankId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(),
                        ApplicationUser_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RankId })
                .ForeignKey("dbo.AspNetUsers", t => t.ApplicationUser_Id)
                .ForeignKey("dbo.Ranks", t => t.RankId, cascadeDelete: true)
                .Index(t => t.RankId)
                .Index(t => t.ApplicationUser_Id);
            
            CreateTable(
                "dbo.Ranks",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        RankName = c.String(),
                        RankExp = c.Double(nullable: false),
                        RankIcon = c.String(),
                        KindOfRank = c.Int(nullable: false),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.CouponCodes",
                c => new
                    {
                        CouponCodeId = c.String(nullable: false, maxLength: 128),
                        SaleOffAmount = c.Double(nullable: false),
                        Type = c.Int(nullable: false),
                        Desciption = c.String(),
                        LimitedCondition = c.Int(nullable: false),
                        UsageAmount = c.Int(nullable: false),
                        CreateDate = c.DateTime(),
                        EndDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.CouponCodeId);
            
            CreateTable(
                "dbo.OrderDetails",
                c => new
                    {
                        CustomerId = c.String(nullable: false, maxLength: 128),
                        HepaProductId = c.String(nullable: false, maxLength: 128),
                        NumberOfItems = c.Int(nullable: false),
                        CouponCodeId = c.String(maxLength: 128),
                        KindOfPurchase = c.String(),
                        CreatedDate = c.DateTime(),
                        OrderDetailId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => new { t.CustomerId, t.HepaProductId })
                .ForeignKey("dbo.CouponCodes", t => t.CouponCodeId)
                .ForeignKey("dbo.Customers", t => t.CustomerId)
                .ForeignKey("dbo.HepaProducts", t => t.HepaProductId)
                .Index(t => t.CustomerId)
                .Index(t => t.HepaProductId)
                .Index(t => t.CouponCodeId);
            
            CreateTable(
                "dbo.Customers",
                c => new
                    {
                        CustomerId = c.String(nullable: false, maxLength: 128),
                        Email = c.String(),
                        FullName = c.String(nullable: false),
                        PhoneNumber = c.String(nullable: false),
                        Address = c.String(nullable: false),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.CustomerId);
            
            CreateTable(
                "dbo.HepaProducts",
                c => new
                    {
                        HepaProductId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false),
                        Price = c.Double(),
                        Description = c.String(),
                        Quantity = c.Int(),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.HepaProductId);
            
            CreateTable(
                "dbo.Experience",
                c => new
                    {
                        ExperienceId = c.String(nullable: false, maxLength: 128),
                        CurrentExp = c.Int(nullable: false),
                        KindOfExp = c.Int(nullable: false),
                        UserId = c.String(),
                        LastUpdate = c.DateTime(),
                    })
                .PrimaryKey(t => t.ExperienceId);
            
            CreateTable(
                "dbo.GrammarArticles",
                c => new
                    {
                        GrammarId = c.String(nullable: false, maxLength: 128),
                        TitleInVietnamese = c.String(),
                        TitleInEnglish = c.String(),
                        Alias = c.String(maxLength: 64),
                        TextInVietnamese = c.String(maxLength: 3999),
                        TextInEnglish = c.String(maxLength: 3999),
                        VisitCounter = c.Int(nullable: false),
                        IsLeaf = c.Boolean(nullable: false),
                        ParentId = c.String(maxLength: 128),
                        Index = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.GrammarId)
                .Index(t => t.Alias, name: "IDX_GrammarArticles_Alias");
            
            CreateTable(
                "dbo.LearnWordHistories",
                c => new
                    {
                        LearnWordHistoryId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                        WordId = c.String(nullable: false, maxLength: 128),
                        ClassId = c.String(nullable: false, maxLength: 128),
                        aWord = c.String(nullable: false),
                        Meaning = c.String(),
                        PartOfSpeech = c.String(),
                        Complexity = c.Int(nullable: false),
                        ArchivedScore = c.Int(nullable: false),
                        IsSuccessed = c.Boolean(nullable: false),
                        LearningDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.LearnWordHistoryId);
            
            CreateTable(
                "dbo.ToDayWords",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClassId = c.String(nullable: false, maxLength: 128),
                        WordId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(),
                        IsLearned = c.Boolean(nullable: false),
                        IsPassed = c.Boolean(nullable: false),
                        ArchivedScore = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserId, t.ClassId, t.WordId })
                .ForeignKey("dbo.Words", t => t.WordId, cascadeDelete: true)
                .Index(t => t.WordId);
            
            CreateTable(
                "dbo.LearnWordResults",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        WordId = c.String(nullable: false, maxLength: 128),
                        ClassId = c.String(nullable: false, maxLength: 128),
                        IsSuccessed = c.Boolean(nullable: false),
                        LastUpdated = c.DateTime(),
                        AchievedScore = c.Double(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserId, t.WordId, t.ClassId })
                .ForeignKey("dbo.Words", t => t.WordId, cascadeDelete: true)
                .Index(t => t.WordId);
            
            CreateTable(
                "dbo.Cities",
                c => new
                    {
                        CityId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.CityId);
            
            CreateTable(
                "dbo.Districts",
                c => new
                    {
                        DistrictId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                        CityId = c.String(),
                    })
                .PrimaryKey(t => t.DistrictId);
            
            CreateTable(
                "dbo.Feedbacks",
                c => new
                    {
                        FeedbackId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                        Email = c.String(),
                        Phone = c.String(),
                        Type = c.String(),
                        Url = c.String(),
                        Message = c.String(),
                        CreatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.FeedbackId);
            
            CreateTable(
                "dbo.Towns",
                c => new
                    {
                        TownId = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                        DistrictId = c.String(),
                    })
                .PrimaryKey(t => t.TownId);
            
            CreateTable(
                "dbo.ClassTag",
                c => new
                    {
                        ClassId = c.String(nullable: false, maxLength: 128),
                        TagId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.ClassId, t.TagId })
                .ForeignKey("dbo.Tags", t => t.ClassId, cascadeDelete: true)
                .ForeignKey("dbo.Classes", t => t.TagId, cascadeDelete: true)
                .Index(t => t.ClassId)
                .Index(t => t.TagId);
            
            CreateTable(
                "dbo.UsersLearnPhrases",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        PhraseId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.PhraseId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.Phrases", t => t.PhraseId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.PhraseId);
            
            CreateTable(
                "dbo.UsersLikedClasses",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClassId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.ClassId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.Classes", t => t.ClassId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.ClassId);
            
            CreateTable(
                "dbo.UsersLikedPhrases",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        PhraseId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.PhraseId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.Phrases", t => t.PhraseId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.PhraseId);
            
            CreateTable(
                "dbo.UsersLikedWords",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        WordId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.WordId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.Words", t => t.WordId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.WordId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.LearnWordResults", "WordId", "dbo.Words");
            DropForeignKey("dbo.ToDayWords", "WordId", "dbo.Words");
            DropForeignKey("dbo.OrderDetails", "HepaProductId", "dbo.HepaProducts");
            DropForeignKey("dbo.OrderDetails", "CustomerId", "dbo.Customers");
            DropForeignKey("dbo.OrderDetails", "CouponCodeId", "dbo.CouponCodes");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Rank_User", "RankId", "dbo.Ranks");
            DropForeignKey("dbo.Rank_User", "ApplicationUser_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UsersLikedWords", "WordId", "dbo.Words");
            DropForeignKey("dbo.UsersLikedWords", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UsersLikedPhrases", "PhraseId", "dbo.Phrases");
            DropForeignKey("dbo.UsersLikedPhrases", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UsersLikedClasses", "ClassId", "dbo.Classes");
            DropForeignKey("dbo.UsersLikedClasses", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UsersLearnPhrases", "PhraseId", "dbo.Phrases");
            DropForeignKey("dbo.UsersLearnPhrases", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UserWithExperiences", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UserWithExperiences", "KindOfExpId", "dbo.KindOfExperiences");
            DropForeignKey("dbo.Currency_UserMap", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Currency_UserMap", "CurrencyId", "dbo.Currency");
            DropForeignKey("dbo.ClassComments", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.ClassComments", "ClassId", "dbo.Classes");
            DropForeignKey("dbo.WordExampleSentences", "WordId", "dbo.Words");
            DropForeignKey("dbo.UsersLikedWordComments", "CommentId", "dbo.WordComments");
            DropForeignKey("dbo.UsersLikedWordComments", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.WordComments", "WordId", "dbo.Words");
            DropForeignKey("dbo.WordComments", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Words", "ClassBelongId", "dbo.Classes");
            DropForeignKey("dbo.ClassTag", "TagId", "dbo.Classes");
            DropForeignKey("dbo.ClassTag", "ClassId", "dbo.Tags");
            DropForeignKey("dbo.PhraseExampleSentances", "PhraseId", "dbo.Phrases");
            DropForeignKey("dbo.PhraseComments", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.PhraseComments", "PhraseId", "dbo.Phrases");
            DropForeignKey("dbo.Phrases", "ClassBelongId", "dbo.Classes");
            DropForeignKey("dbo.Classes", "CreatedByUserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Classes", "CourseId", "dbo.Courses");
            DropForeignKey("dbo.UsersJoinClasses_Goal", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.UsersJoinClasses_Goal", "CourseId", "dbo.Courses");
            DropForeignKey("dbo.UsersJoinClasses_Goal", "ClassId", "dbo.Classes");
            DropForeignKey("dbo.Courses", "CreatedUserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropIndex("dbo.UsersLikedWords", new[] { "WordId" });
            DropIndex("dbo.UsersLikedWords", new[] { "UserId" });
            DropIndex("dbo.UsersLikedPhrases", new[] { "PhraseId" });
            DropIndex("dbo.UsersLikedPhrases", new[] { "UserId" });
            DropIndex("dbo.UsersLikedClasses", new[] { "ClassId" });
            DropIndex("dbo.UsersLikedClasses", new[] { "UserId" });
            DropIndex("dbo.UsersLearnPhrases", new[] { "PhraseId" });
            DropIndex("dbo.UsersLearnPhrases", new[] { "UserId" });
            DropIndex("dbo.ClassTag", new[] { "TagId" });
            DropIndex("dbo.ClassTag", new[] { "ClassId" });
            DropIndex("dbo.LearnWordResults", new[] { "WordId" });
            DropIndex("dbo.ToDayWords", new[] { "WordId" });
            DropIndex("dbo.GrammarArticles", "IDX_GrammarArticles_Alias");
            DropIndex("dbo.OrderDetails", new[] { "CouponCodeId" });
            DropIndex("dbo.OrderDetails", new[] { "HepaProductId" });
            DropIndex("dbo.OrderDetails", new[] { "CustomerId" });
            DropIndex("dbo.Rank_User", new[] { "ApplicationUser_Id" });
            DropIndex("dbo.Rank_User", new[] { "RankId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.UserWithExperiences", new[] { "KindOfExpId" });
            DropIndex("dbo.UserWithExperiences", new[] { "UserId" });
            DropIndex("dbo.Currency_UserMap", new[] { "CurrencyId" });
            DropIndex("dbo.Currency_UserMap", new[] { "UserId" });
            DropIndex("dbo.WordExampleSentences", new[] { "WordId" });
            DropIndex("dbo.UsersLikedWordComments", new[] { "CommentId" });
            DropIndex("dbo.UsersLikedWordComments", new[] { "UserId" });
            DropIndex("dbo.WordComments", new[] { "UserId" });
            DropIndex("dbo.WordComments", new[] { "WordId" });
            DropIndex("dbo.Words", new[] { "ClassBelongId" });
            DropIndex("dbo.PhraseExampleSentances", new[] { "PhraseId" });
            DropIndex("dbo.PhraseComments", new[] { "UserId" });
            DropIndex("dbo.PhraseComments", new[] { "PhraseId" });
            DropIndex("dbo.Phrases", new[] { "ClassBelongId" });
            DropIndex("dbo.UsersJoinClasses_Goal", new[] { "CourseId" });
            DropIndex("dbo.UsersJoinClasses_Goal", new[] { "ClassId" });
            DropIndex("dbo.UsersJoinClasses_Goal", new[] { "UserId" });
            DropIndex("dbo.Courses", new[] { "CreatedUserId" });
            DropIndex("dbo.Classes", new[] { "CourseId" });
            DropIndex("dbo.Classes", new[] { "CreatedByUserId" });
            DropIndex("dbo.ClassComments", new[] { "UserId" });
            DropIndex("dbo.ClassComments", new[] { "ClassId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropTable("dbo.UsersLikedWords");
            DropTable("dbo.UsersLikedPhrases");
            DropTable("dbo.UsersLikedClasses");
            DropTable("dbo.UsersLearnPhrases");
            DropTable("dbo.ClassTag");
            DropTable("dbo.Towns");
            DropTable("dbo.Feedbacks");
            DropTable("dbo.Districts");
            DropTable("dbo.Cities");
            DropTable("dbo.LearnWordResults");
            DropTable("dbo.ToDayWords");
            DropTable("dbo.LearnWordHistories");
            DropTable("dbo.GrammarArticles");
            DropTable("dbo.Experience");
            DropTable("dbo.HepaProducts");
            DropTable("dbo.Customers");
            DropTable("dbo.OrderDetails");
            DropTable("dbo.CouponCodes");
            DropTable("dbo.Ranks");
            DropTable("dbo.Rank_User");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.KindOfExperiences");
            DropTable("dbo.UserWithExperiences");
            DropTable("dbo.Currency");
            DropTable("dbo.Currency_UserMap");
            DropTable("dbo.WordExampleSentences");
            DropTable("dbo.UsersLikedWordComments");
            DropTable("dbo.WordComments");
            DropTable("dbo.Words");
            DropTable("dbo.Tags");
            DropTable("dbo.PhraseExampleSentances");
            DropTable("dbo.PhraseComments");
            DropTable("dbo.Phrases");
            DropTable("dbo.UsersJoinClasses_Goal");
            DropTable("dbo.Courses");
            DropTable("dbo.Classes");
            DropTable("dbo.ClassComments");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.PromotionEvent");
            DropTable("dbo.HepaPassports");
        }
    }
}
