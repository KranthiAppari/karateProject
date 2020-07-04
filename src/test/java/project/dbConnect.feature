Feature: SQL Server DB Connection

  Background:
    # use jdbc to validate
    * def config = { username: 'sa123', password: 'sa123', url: 'jdbc:sqlserver://localhost:1433', driverClassName: 'com.microsoft.sqlserver.jdbc.SQLServerDriver' }
    * def DbUtils = Java.type('project.DbUtils')
    * def db = new DbUtils(config)

  Scenario:
    * def register = db.readRows('SELECT * FROM [QAClickAcademyDB].[dbo].[Register]')
    Then print 'Registered Details----: ',register