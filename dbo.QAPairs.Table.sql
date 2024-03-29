/****** Object:  Table [dbo].[QAPairs]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QAPairs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](255) NULL,
	[QuestionContext] [nvarchar](max) NULL,
	[QuestionDataSetsId] [int] NULL,
	[Answer] [nvarchar](2000) NULL,
	[AnswerEvaluation] [nvarchar](2000) NULL,
	[AnswerPurpose] [nvarchar](2000) NULL,
	[AnswerContraints] [nvarchar](2000) NULL,
	[CategoryId] [int] NULL,
	[ReferenceCitation] [nvarchar](255) NULL,
	[SortOrder] [int] NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QAPairs] ON 

INSERT [dbo].[QAPairs] ([Id], [Question], [QuestionContext], [QuestionDataSetsId], [Answer], [AnswerEvaluation], [AnswerPurpose], [AnswerContraints], [CategoryId], [ReferenceCitation], [SortOrder], [DateCreated], [DateModified], [CreatedBy], [ModifiedBy]) VALUES (3, N'Which clients are more likely to default on their loans?', N'The absence of a credit history might mean a lot of things, including young age or a preference for cash. Without traditional data, someone with little to no credit history is likely to be denied. Consumer finance providers must accurately determine which clients can repay a loan and which cannot and data is key. If data science could help better predict one’s repayment capabilities, loans might become more accessible to those who may benefit from them the most.  Currently, consumer finance providers use various statistical and machine learning methods to predict loan risk. These models are generally called scorecards. In the real world, clients'' behaviors change constantly, so every scorecard must be updated regularly, which takes time. The scorecard''s stability in the future is critical, as a sudden drop in performance means that loans will be issued to worse clients on average. The core of the issue is that loan providers aren''t able to spot potential problems any sooner than the first due dates of those loans are observable. Given the time it takes to redevelop, validate, and implement the scorecard, stability is highly desirable. There is a trade-off between the stability of the model and its performance, and a balance must be reached before deployment.', 1, N'TEST', N'Favors solutions that are stable over time.  Submissions are evaluated using a gini stability metric. A gini score is calculated for predictions corresponding to each WEEK_NUM.   gini = 2 * A U C - 1.  A linear regression, a * x + b, is fit through the weekly gini scores, and a falling_rate is calculated as min(0,a).  This is used to penalize models that drop off in predictive ability.   Finally, the variability of the predictions are calculated by taking the standard deviation of the residuals from the above linear regression, applying a penalty to model variability.  The final metric is calculated as stability metric = mean(gini) + 88.0 * min(o,a) - 0.5 * std(residuals).   Answer must be submitted in a file format.   For each case_id in the test set, you must predict a probablity for the target score.  The submission file should contain a header and have the following format:  case_id,score  /n   57543,0.1  /n   57544,0.9   /n    57545,0.5   /n etc.   Final submission NLT 11:59 PM UTC on May 6, 2024.  ', N'May offer consumer finance providers a more reliable and longer-lasting way to assess a potential client’s default risk.', N'Kaggle linked accounts access Google Cloud and Github', 1, N'Daniel Herman, Tomas Jelinek, Walter Reade, Maggie Demkin, Addison Howard. (2024). Home Credit - Credit Risk Model Stability. Kaggle. https://kaggle.com/competitions/home-credit-credit-risk-model-stability', 1, CAST(N'2024-02-19T21:33:55.3200000' AS DateTime2), CAST(N'2024-02-19T21:33:55.3200000' AS DateTime2), 1, 1)
SET IDENTITY_INSERT [dbo].[QAPairs] OFF
GO
ALTER TABLE [dbo].[QAPairs] ADD  CONSTRAINT [DF_QAPairs_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[QAPairs] ADD  CONSTRAINT [DF_QAPairs_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
