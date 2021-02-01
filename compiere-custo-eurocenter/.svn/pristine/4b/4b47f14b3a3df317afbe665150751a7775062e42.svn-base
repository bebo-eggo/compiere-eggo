insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J049','J049 - Replenish Error Report',
'',
'',
'Y',
'',
'',
'',
'N',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'J049' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J049 - Replenish Error Report', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J049' ;

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'T_Requisition','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'J049',
'',
'N',
0,
'T_Requisition',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'T_Requisition' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'J049', help = '', importtable = 'N', loadseq = 0, name = 'T_Requisition', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'T_Requisition' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='T_Requisition'), 'nl_BE', 'Y', 'T_Requisition'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='T_Requisition') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'T_Requisition' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='T_Requisition') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='T_Requisition'), 'fr_FR', 'Y', 'T_Requisition'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='T_Requisition') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'T_Requisition' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='T_Requisition') and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'T_Requisition',(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
'',
'J049',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'T_Requisition' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), description = '', entitytype = 'J049', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'T_Requisition' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'M_Requisition_POCreate','M_Requisition_POCreate',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'T_Replenish'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'T_Requisition'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'M_Requisition_POCreate' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = 'M_Requisition_POCreate', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'T_Replenish'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'T_Requisition'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'M_Requisition_POCreate' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Création OA à partir des demandes','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'T_Requisition'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'T_Requisition'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Création OA à partir des demandes' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'T_Requisition'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'T_Requisition'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Création OA à partir des demandes' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Création OA à partir des demandes','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'T_Requisition'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'T_Requisition'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Création OA à partir des demandes' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'T_Requisition'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'T_Requisition'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Création OA à partir des demandes' ;

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'M_Requisition_POCreate',(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
'M_Requisition_POCreate',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'M_Requisition_POCreate' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), description = 'M_Requisition_POCreate', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'M_Requisition_POCreate' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'m_requisition_id',(select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'M_Requisition_POCreate' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'D',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'',
'',
20,
10,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'm_requisition_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'M_Requisition_POCreate' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = '', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'm_requisition_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')), 'nl_BE', 'Y', 'm_requisition_id','',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'm_requisition_id',PrintName = '',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')), 'fr_FR', 'Y', 'm_requisition_id','',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'm_requisition_id',PrintName = '',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='m_requisition_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'err',(select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'M_Requisition_POCreate' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'D',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Erreur',
'',
20,
20,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'err'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'M_Requisition_POCreate' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Erreur', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'err'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')), 'nl_BE', 'Y', 'err','Erreur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'err',PrintName = 'Erreur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')), 'fr_FR', 'Y', 'err','Erreur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'err',PrintName = 'Erreur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='err' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'M_Requisition_POCreate')) and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'Création OA à partir des demandes',(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'Création OA à partir des demandes' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'Création OA à partir des demandes' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Requisition',(select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Requisition',
'',
20,
10,
1,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Requisition'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Requisition', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 1, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Requisition'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Requisition','Requisition',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requisition',PrintName = 'Requisition',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Requisition','Requête',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requisition',PrintName = 'Requête',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Document Org',(select AD_Column_ID from AD_Column where columnName = 'AD_OrgDoc_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Document Org',
'',
20,
30,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Document Org'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_OrgDoc_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Document Org', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Document Org'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Document Org','Document Org',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Org',PrintName = 'Document Org',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Document Org','Document Org',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Org',PrintName = 'Document Org',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Organization',
'',
20,
0,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Organization','Organization',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organization',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Organization','Organisation',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organisation',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Product',(select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Product',
'',
20,
40,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Product', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Product','Product',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Product',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Product','Article',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Article',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Line No',(select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'T',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Line No',
'',
20,
20,
2,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Line No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Line No', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 2, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Line No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Line No','Line No',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No',PrintName = 'Line No',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Line No','N° ligne',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No',PrintName = 'N° ligne',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Error Message',(select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Error Message',
'',
20,
50,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Error Message'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Error Message', PrintNameSuffix = '', runningTotalLines = 20, seqno = 50, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Error Message'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Error Message','Error Message',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message',PrintName = 'Error Message',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Error Message','Message erreur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message',PrintName = 'Message erreur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Process Instance',(select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Process Instance',
'',
20,
60,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Process Instance', PrintNameSuffix = '', runningTotalLines = 20, seqno = 60, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Process Instance','Process Instance',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Process Instance',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Process Instance','Instance du processus',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Instance du processus',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Tenant',
'',
20,
0,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Tenant','Tenant',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Tenant',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Tenant','Société',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Société',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'Création OA à partir des demandes',(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'Création OA à partir des demandes' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'Création OA à partir des demandes' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Organization',
'',
20,
0,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Organization','Organization',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organization',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Organization','Organisation',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organisation',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Tenant',
'',
20,
0,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Tenant','Tenant',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Tenant',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Tenant','Société',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Société',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Requisition',(select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Requisition',
'',
20,
1,
1,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Requisition'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Requisition_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Requisition', PrintNameSuffix = '', runningTotalLines = 20, seqno = 1, sortno = 1, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Requisition'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Requisition','Requisition',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requisition',PrintName = 'Requisition',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Requisition','Requête',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requisition',PrintName = 'Requête',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Requisition' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Line No',(select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'T',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Line No',
'',
20,
2,
2,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Line No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Line No', PrintNameSuffix = '', runningTotalLines = 20, seqno = 2, sortno = 2, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Line No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Line No','Line No',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No',PrintName = 'Line No',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Line No','N° ligne',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No',PrintName = 'N° ligne',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Line No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Error Message',(select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Error Message',
'',
20,
4,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Error Message'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ErrorMsg' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Error Message', PrintNameSuffix = '', runningTotalLines = 20, seqno = 4, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Error Message'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Error Message','Error Message',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message',PrintName = 'Error Message',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Error Message','Message erreur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message',PrintName = 'Message erreur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Error Message' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Product',(select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Product',
'',
20,
7,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Product', PrintNameSuffix = '', runningTotalLines = 20, seqno = 7, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Product','Product',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Product',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Product','Article',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Article',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Document Org',(select AD_Column_ID from AD_Column where columnName = 'AD_OrgDoc_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Document Org',
'',
20,
3,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Document Org'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_OrgDoc_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Document Org', PrintNameSuffix = '', runningTotalLines = 20, seqno = 3, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Document Org'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Document Org','Document Org',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Org',PrintName = 'Document Org',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Document Org','Document Org',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Org',PrintName = 'Document Org',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Org' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Process Instance',(select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
0,
'L',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'X',
0,
0,
'C',
'F',
'Process Instance',
'',
20,
6,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'T_Requisition')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Création OA à partir des demandes' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Process Instance', PrintNameSuffix = '', runningTotalLines = 20, seqno = 6, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'nl_BE', 'Y', 'Process Instance','Process Instance',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Process Instance',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')), 'fr_FR', 'Y', 'Process Instance','Instance du processus',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Instance du processus',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Création OA à partir des demandes')) and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'T_Requisition',(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
'',
'J049',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'T_Requisition' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), description = '', entitytype = 'J049', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'T_Requisition' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Supplier_ID','',
'J049',
'',
'Supplier_ID',
'',
'',
'',
'',
'Supplier_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Supplier_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J049', help = '', name = 'Supplier_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Supplier_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Supplier_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Supplier_ID'), 'nl_BE', 'Y', '','','Supplier_ID','','','','','Supplier_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Supplier_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Supplier_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Supplier_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Supplier_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Supplier_ID'), 'fr_FR', 'Y', '','','Supplier_ID','','','','','Supplier_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Supplier_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Supplier_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Supplier_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Supplier_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateDoc',(select AD_Element_ID from AD_Element where ColumnName = 'DateDoc'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date of the Document',
'J049',
7,
'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',
'Document Date',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'DateDoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateDoc'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date of the Document', entitytype = 'J049', fieldlength = 7, help = 'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.', name = 'Document Date', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateDoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Document Date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Document Date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateDoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateRequired',(select AD_Element_ID from AD_Element where ColumnName = 'DateRequired'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date when required',
'J049',
7,
'',
'Date Required',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'DateRequired'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateRequired'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date when required', entitytype = 'J049', fieldlength = 7, help = '', name = 'Date Required', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateRequired'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Date Required'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date Required' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Date Required'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date Required' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateRequired' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'),
'',
'',
'Identifies the Client/Tenant for this installation.',
'J049',
22,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'), callout = '', defaultvalue = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'J049', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Requisition_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Requisition_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Material Requisition',
'J049',
22,
'',
'Requisition',
'',
1,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_Requisition_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Requisition_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Material Requisition', entitytype = 'J049', fieldlength = 22, help = '', name = 'Requisition', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Requisition_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Requisition'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requisition' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Requête'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Requête' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Requisition_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'J049',
22,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = 'J049', fieldlength = 22, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_PInstance_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Instance of the process',
'J049',
22,
'',
'Process Instance',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'Y',
'N',
'N',
'N',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Instance of the process', entitytype = 'J049', fieldlength = 22, help = '', name = 'Process Instance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'Y', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Process Instance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Instance du processus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Instance du processus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Line',(select AD_Element_ID from AD_Element where ColumnName = 'Line'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique line for this document',
'J049',
22,
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'Line No',
'',
2,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Line'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique line for this document', entitytype = 'J049', fieldlength = 22, help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', name = 'Line No', readonlylogic = '', seqno = 2, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'N° ligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° ligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_OrgDoc_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgDoc_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Document Organization (independent from account organization)',
'J049',
22,
'',
'Document Org',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_OrgDoc_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgDoc_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Document Organization (independent from account organization)', entitytype = 'J049', fieldlength = 22, help = '', name = 'Document Org', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_OrgDoc_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Document Org'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Org' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Document organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgDoc_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'',
'Organizational entity within Tenant',
'J049',
22,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'N',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '', description = 'Organizational entity within Tenant', entitytype = 'J049', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ErrorMsg',(select AD_Element_ID from AD_Element where ColumnName = 'ErrorMsg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Requisition'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J049',
256,
'',
'Error Message',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ErrorMsg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Requisition'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J049', fieldlength = 256, help = '', name = 'Error Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'nl_BE', 'Y', 'Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')), 'fr_FR', 'Y', 'Message erreur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message erreur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Requisition')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Supplier_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Supplier_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendor or SalesRep'),
(select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J049',
22,
'',
'Supplier_ID',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Supplier_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Supplier_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendor or SalesRep'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J049', fieldlength = 22, help = '', name = 'Supplier_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Supplier_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'nl_BE', 'Y', 'Supplier_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Supplier_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'fr_FR', 'Y', 'Supplier_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Supplier_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Supplier_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J049 - Replenish Error Report', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J049' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'J049', help = '', importtable = 'N', loadseq = 0, name = 'T_Requisition', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'T_Requisition' ;

