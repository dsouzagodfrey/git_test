--exec tsqlt.runall
--exec [tSQLt].[NewTestClass] 'test_MyClass'
--exec [tSQLt].[DropClass] 'MyClass'

if object_id('test_MyClass.TestOne') is not null
drop proc test_MyClass.TestOne

if object_id('test_MyClass.TestTwo') is not null
drop proc test_MyClass.TestTwo
go

create proc test_MyClass.TestOne
as
	exec tsqlt.assertEquals 1,1
go

create proc test_MyClass.TestTwo
as
	exec tsqlt.assertEquals 2,1
go
