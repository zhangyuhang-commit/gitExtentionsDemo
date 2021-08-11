/*	
企业纳税信用等级
*/
if exists (select 1 from sysobjects where id = object_id('ZJJD_EnterpriseTaxCreditRating') and type = 'U')  
drop table ZJJD_EnterpriseTaxCreditRating
go
create table ZJJD_EnterpriseTaxCreditRating
(
 ID int Primary key identity(1,1) not null,                
 Name varchar(200) not null,	
 Remark	varchar(200) not null,		
 CreateUserID varchar(100) not null,                           
 CreateUserName varchar(50) not null,                        
 CreateDate datetime not null,                                
 ModifyUserID varchar(100) not null, 
 ModifyUserName varchar(50) not null,                          
 ModifyDate datetime not null,                                          
 UniqueCode varchar(100) null,
 DeleteMark bit not null,                              
);
GO
EXEC sp_addextendedproperty N'MS_Description', N'自动增长ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'纳税信用等级', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'纳税信用等级备注', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', N'创建人ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateUserID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'创建人姓名', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateUserName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'创建日期', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'修改人ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyUserID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'修改人姓名', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyUserName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'修改日期', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'全球唯一标识符', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'UniqueCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'是否删除(否:false  是:true)', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'DeleteMark'


INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'A级信用', N'年度评价指标得分90分以上', N'1', N'超级管理员', '2021-07-30', N'1', N'超级管理员', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'B级信用', N'考评分70分以上不满90分', N'1', N'超级管理员', '2021-07-30', N'1', N'超级管理员', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'M级信用', N'新企业年度内无营收入且70分以上', N'1', N'超级管理员', '2021-07-30', N'1', N'超级管理员', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'C级信用', N'考评分40分以上不满70分', N'1', N'超级管理员', '2021-07-30', N'1', N'超级管理员', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'D级信用', N'考评分40分以下的或直接判级确定', N'1', N'超级管理员', '2021-07-30', N'1', N'超级管理员', '2021-07-30', NULL, 0)

GO