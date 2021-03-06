-------------------------------------
-- DELETE 1 USER AND ALL USER DATA --
-------------------------------------

-- DECLARE UserId variable
DECLARE @userid nvarchar(128)
SET @userid = '802fb289-287a-4e5c-ba2e-b1eb0e81e11a'

delete from ClassComments where UserId = @userid
delete from Currency_UserMap where UserId = @userid
delete from Experience where UserId = @userid
delete from LearnWordHistories where UserId = @userid
delete from LearnWordResults where UserId = @userid
delete from PhraseComments where UserId = @userid
delete from Rank_User where UserId = @userid
delete from ToDayWords where UserId = @userid
delete from UsersJoinClasses_Goal where UserId = @userid
delete from UsersLearnPhrases where UserId = @userid
delete from UsersLikedClasses where UserId = @userid
delete from UsersLikedPhrases where UserId = @userid
delete from UsersLikedWordComments where UserId = @userid
delete from UsersLikedWords where UserId = @userid
delete from UserWithExperiences where UserId = @userid
delete from WordComments where UserId = @userid

delete from AspNetUsers where UserId = @userid
go