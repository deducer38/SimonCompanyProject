DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlUpdateDemo_4();
DmlDemo.dmlInsertDemo_5();
DmlDemo.dmlInsertMultiple_Right();
DmlDemo.dmlInsertMultipleRight_2();
DmlDemo.dmlUpdateMultiple_right();

/*
List<Account> delAcc = [select id from account where createddate =: THIS_WEEK];
delete delAcc;
*/

delete [select id from account where createddate = THIS_WEEK];