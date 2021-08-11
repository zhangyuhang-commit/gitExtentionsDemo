/*	
��ҵ��˰���õȼ�
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
EXEC sp_addextendedproperty N'MS_Description', N'�Զ�����ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'��˰���õȼ�', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'��˰���õȼ���ע', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', N'������ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateUserID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'����������', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateUserName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'��������', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'�޸���ID', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyUserID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'�޸�������', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyUserName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'�޸�����', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'ModifyDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ȫ��Ψһ��ʶ��', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'UniqueCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'�Ƿ�ɾ��(��:false  ��:true)', 'SCHEMA', N'dbo', 'TABLE', N'ZJJD_EnterpriseTaxCreditRating', 'COLUMN', N'DeleteMark'


INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'A������', N'�������ָ��÷�90������', N'1', N'��������Ա', '2021-07-30', N'1', N'��������Ա', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'B������', N'������70�����ϲ���90��', N'1', N'��������Ա', '2021-07-30', N'1', N'��������Ա', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'M������', N'����ҵ�������Ӫ������70������', N'1', N'��������Ա', '2021-07-30', N'1', N'��������Ա', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'C������', N'������40�����ϲ���70��', N'1', N'��������Ա', '2021-07-30', N'1', N'��������Ա', '2021-07-30', NULL, 0)
INSERT [dbo].[ZJJD_EnterpriseTaxCreditRating] ([Name], [Remark],[CreateUserID], [CreateUserName], [CreateDate], [ModifyUserID], [ModifyUserName], [ModifyDate], [UniqueCode], [DeleteMark]) VALUES (N'D������', N'������40�����µĻ�ֱ���м�ȷ��', N'1', N'��������Ա', '2021-07-30', N'1', N'��������Ա', '2021-07-30', NULL, 0)

GO