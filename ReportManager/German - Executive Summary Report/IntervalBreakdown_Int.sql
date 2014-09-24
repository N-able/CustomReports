USE warehouse
GO

/****** Object:  StoredProcedure [dbo].[IntervalBreakdown]    Script Date: 05/30/2011 16:47:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IntervalBreakdown]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[IntervalBreakdown]
GO

CREATE PROCEDURE IntervalBreakdown
	@StartHour smallint,		-- FK to dim_Time
	@EndHour   smallint,		-- FK to dim_Time
	@WeekType  nvarchar(1000),	-- Must be 'Weekday', 'Weekend' or 'Weekday, Weekend'
	@IncludeBreakdown bit,
	@Locale nvarchar(5) = 'EN'
AS
	SET NOCOUNT ON

	DECLARE @Title nvarchar(50)
	
	DECLARE @Labels TABLE (
		Label nvarchar(50) NOT NULL,
		Locale nvarchar(5) NOT NULL,
		LabelText nvarchar(50) NULL
	)
	-- EN
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('All Day', 'EN', 'All Day')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday', 'EN', 'Weekdays')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekend', 'EN', 'Weekends')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday, Weekend', 'EN', 'Weekdays and Weekends')
	-- DE
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('All Day', 'DE', 'Gesamter Tag')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday', 'DE', 'Wochentage')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekend', 'DE', 'Wochenenden')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday, Weekend', 'DE', 'Wochentage und Wochenenden')

	DECLARE @AllDay nvarchar(50)
	SET @AllDay = (SELECT LabelText FROM @Labels WHERE Label = 'All Day' AND Locale=@Locale)
	
	DECLARE @WeekDayType nvarchar(50)
	IF (@IncludeBreakdown = 1)
		BEGIN
			IF EXISTS (SELECT LabelText FROM @Labels WHERE Label = @WeekType)
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = @WeekType AND Locale = @Locale) 
			ELSE
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = 'Weekday, Weekend' AND Locale = @Locale)
		END
	ELSE
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = 'Weekday, Weekend' AND Locale = @Locale)

	IF ((@StartHour = @EndHour) OR (@StartHour = 1 AND @EndHour = 1440) OR (@IncludeBreakdown = 0))
	  SELECT @Title = @AllDay --'Gesamter Tag' --'All Day'
	ELSE
	  SELECT @Title =
		(SELECT RIGHT(CAST((100+Hour) AS varchar(3)),2)  + ':' +
			RIGHT(CAST((100+Minute) AS varchar(3)),2)                 
		 FROM dim_time 
		 WHERE timeid = @StartHour) + ' - ' + 
		(SELECT RIGHT(CAST((100+Hour) AS varchar(3)),2)  + ':' +
			RIGHT(CAST((100+Minute) AS varchar(3)),2)                 
		 FROM dim_time 
		 WHERE timeid = @EndHour)

		SET @Title = @Title + ' ' + @WeekDayType 

	SELECT @Title AS Title

RETURN
GO

--EXEC IntervalBreakdown '60', '1440', 'weekday', 1

/* 
Mirroring the same stored procedure to [config] database
to be used in custom reports
*/

USE [config]
GO

/****** Object:  StoredProcedure [dbo].[IntervalBreakdown]    Script Date: 05/30/2011 16:47:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IntervalBreakdown]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[IntervalBreakdown]
GO


/****** Object:  StoredProcedure [dbo].[IntervalBreakdown]    Script Date: 05/30/2011 16:47:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE IntervalBreakdown
	@StartHour smallint,		-- FK to dim_Time
	@EndHour   smallint,		-- FK to dim_Time
	@WeekType  nvarchar(1000),	-- Must be 'Weekday', 'Weekend' or 'Weekday, Weekend'
	@IncludeBreakdown bit,
	@Locale nvarchar(5) = 'EN'
AS
	SET NOCOUNT ON

	DECLARE @Title nvarchar(50)
	
	DECLARE @Labels TABLE (
		Label nvarchar(50) NOT NULL,
		Locale nvarchar(5) NOT NULL,
		LabelText nvarchar(50) NULL
	)
	-- EN
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('All Day', 'EN', 'All Day')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday', 'EN', 'Weekdays')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekend', 'EN', 'Weekends')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday, Weekend', 'EN', 'Weekdays and Weekends')
	-- DE
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('All Day', 'DE', 'Gesamter Tag')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday', 'DE', 'Wochentage')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekend', 'DE', 'Wochenenden')
	INSERT INTO @Labels (Label, Locale, LabelText) VALUES ('Weekday, Weekend', 'DE', 'Wochentage und Wochenenden')

	DECLARE @AllDay nvarchar(50)
	SET @AllDay = (SELECT LabelText FROM @Labels WHERE Label = 'All Day' AND Locale=@Locale)
	
	DECLARE @WeekDayType nvarchar(50)
	IF (@IncludeBreakdown = 1)
		BEGIN
			IF EXISTS (SELECT LabelText FROM @Labels WHERE Label = @WeekType)
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = @WeekType AND Locale = @Locale) 
			ELSE
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = 'Weekday, Weekend' AND Locale = @Locale)
		END
	ELSE
				SET @WeekDayType = (SELECT LabelText FROM @Labels WHERE Label = 'Weekday, Weekend' AND Locale = @Locale)

	IF ((@StartHour = @EndHour) OR (@StartHour = 1 AND @EndHour = 1440) OR (@IncludeBreakdown = 0))
	  SELECT @Title = @AllDay --'Gesamter Tag' --'All Day'
	ELSE
	  SELECT @Title =
		(SELECT RIGHT(CAST((100+Hour) AS varchar(3)),2)  + ':' +
			RIGHT(CAST((100+Minute) AS varchar(3)),2)                 
		 FROM warehouse.dbo.dim_time 
		 WHERE timeid = @StartHour) + ' - ' + 
		(SELECT RIGHT(CAST((100+Hour) AS varchar(3)),2)  + ':' +
			RIGHT(CAST((100+Minute) AS varchar(3)),2)                 
		 FROM warehouse.dbo.dim_time 
		 WHERE timeid = @EndHour)

		SET @Title = @Title + ' ' + @WeekDayType 

	SELECT @Title AS Title

RETURN
GO
