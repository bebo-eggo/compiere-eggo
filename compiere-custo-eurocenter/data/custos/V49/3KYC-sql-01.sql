insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'3KYC','3KYC-117707',
'',
'',
'Y',
'',
'',
'',
'N',
'49',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '3KYC' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3KYC-117707', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '49', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3KYC' ;

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'XX_EXPORTFUSION','4',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'3KYC',
'',
'N',
0,
'XX_EXPORTFUSION',
'L',
'Y',
'N',
'N',
'N',
'Y',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'XX_EXPORTFUSION' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '3KYC', help = '', importtable = 'N', loadseq = 0, name = 'XX_EXPORTFUSION', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_EXPORTFUSION' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION'), 'fr_FR', 'Y', 'XX_EXPORTFUSION'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'XX_EXPORTFUSION' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION'), 'nl_NL', 'Y', 'XX_EXPORTFUSION'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'XX_EXPORTFUSION' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_EXPORTFUSION') and ad_language = 'nl_NL';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'ExportFusion2',(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
'',
'3KYC',
'UNM ASC',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'ExportFusion2' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), description = '', entitytype = '3KYC', orderbyclause = 'UNM ASC', whereclause = '', isactive = 'Y' 
where Name = 'ExportFusion2' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Export Fusion','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'ExportFusion2'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Export Fusion' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'ExportFusion2'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Export Fusion' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Export Fusion','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'ExportFusion2'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Export Fusion' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'ExportFusion2'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Export Fusion' ;

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'Export Fusion',(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'Export Fusion' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'Export Fusion' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Series Style',(select AD_Column_ID from AD_Column where columnName = 'Style' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'Style',
'',
20,
100,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Series Style'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Style' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Style', PrintNameSuffix = '', runningTotalLines = 20, seqno = 100, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Series Style'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Style','','Series Style'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Style',PrintNameSuffix = '',Name = 'Series Style' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Style','','Series Style'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Style',PrintNameSuffix = '',Name = 'Series Style' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Société','','Tenant'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Société',PrintNameSuffix = '',Name = 'Tenant' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Client','','Tenant'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Client',PrintNameSuffix = '',Name = 'Tenant' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'UNEW',(select AD_Column_ID from AD_Column where columnName = 'UNEW' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'UNEW',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'UNEW'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'UNEW' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'UNEW', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'UNEW'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'UNEW','','UNEW'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNEW',PrintNameSuffix = '',Name = 'UNEW' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'UNEW','','UNEW'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNEW',PrintNameSuffix = '',Name = 'UNEW' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'UNM',(select AD_Column_ID from AD_Column where columnName = 'UNM' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'UNM',
'',
20,
10,
10,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'UNM'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'UNM' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'UNM', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 10, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'UNM'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'UNM','','UNM'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNM',PrintNameSuffix = '',Name = 'UNM' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'UNM','','UNM'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNM',PrintNameSuffix = '',Name = 'UNM' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'VCAT',(select AD_Column_ID from AD_Column where columnName = 'VCAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'VCAT',
'',
20,
80,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'VCAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'VCAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'VCAT', PrintNameSuffix = '', runningTotalLines = 20, seqno = 80, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'VCAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'VCAT','','VCAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VCAT',PrintNameSuffix = '',Name = 'VCAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'VCAT','','VCAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VCAT',PrintNameSuffix = '',Name = 'VCAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'VENTE',(select AD_Column_ID from AD_Column where columnName = 'VENTE' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'VENTE',
'',
20,
130,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'VENTE'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'VENTE' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'VENTE', PrintNameSuffix = '', runningTotalLines = 20, seqno = 130, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'VENTE'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'VENTE','','VENTE'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VENTE',PrintNameSuffix = '',Name = 'VENTE' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'VENTE','','VENTE'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VENTE',PrintNameSuffix = '',Name = 'VENTE' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ACHAT',(select AD_Column_ID from AD_Column where columnName = 'ACHAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'ACHAT',
'',
20,
120,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'ACHAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ACHAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ACHAT', PrintNameSuffix = '', runningTotalLines = 20, seqno = 120, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ACHAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ACHAT','','ACHAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ACHAT',PrintNameSuffix = '',Name = 'ACHAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ACHAT','','ACHAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ACHAT',PrintNameSuffix = '',Name = 'ACHAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'CATR',(select AD_Column_ID from AD_Column where columnName = 'CATR' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'CATR',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'CATR'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'CATR' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'CATR', PrintNameSuffix = '', runningTotalLines = 20, seqno = 50, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'CATR'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'CATR','','CATR'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'CATR',PrintNameSuffix = '',Name = 'CATR' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'CATR','','CATR'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'CATR',PrintNameSuffix = '',Name = 'CATR' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Code Type',(select AD_Column_ID from AD_Column where columnName = 'Type' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'Type',
'',
20,
110,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Code Type'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Type' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Type', PrintNameSuffix = '', runningTotalLines = 20, seqno = 110, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Code Type'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Type','','Code Type'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Type',PrintNameSuffix = '',Name = 'Code Type' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Type','','Code Type'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Type',PrintNameSuffix = '',Name = 'Code Type' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'DSC',(select AD_Column_ID from AD_Column where columnName = 'DSC' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
0,
'B',
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
'DSC',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'DSC'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'DSC' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'B', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'DSC', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'DSC'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'DSC','','DSC'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'DSC',PrintNameSuffix = '',Name = 'DSC' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'DSC','','DSC'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'DSC',PrintNameSuffix = '',Name = 'DSC' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ECOTAX',(select AD_Column_ID from AD_Column where columnName = 'ECOTAX' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'ECOTAX',
'',
20,
140,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'ECOTAX'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ECOTAX' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ECOTAX', PrintNameSuffix = '', runningTotalLines = 20, seqno = 140, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ECOTAX'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ECOTAX','','ECOTAX'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ECOTAX',PrintNameSuffix = '',Name = 'ECOTAX' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ECOTAX','','ECOTAX'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ECOTAX',PrintNameSuffix = '',Name = 'ECOTAX' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Fusion',(select AD_Column_ID from AD_Column where columnName = 'IsFusion' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'Fusion',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Fusion'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'IsFusion' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Fusion', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Fusion'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Fusion','','Fusion'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Fusion',PrintNameSuffix = '',Name = 'Fusion' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Fusion','','Fusion'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Fusion',PrintNameSuffix = '',Name = 'Fusion' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'GRAPH',(select AD_Column_ID from AD_Column where columnName = 'GRAPH' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'GRAPH',
'',
20,
90,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'GRAPH'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'GRAPH' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'GRAPH', PrintNameSuffix = '', runningTotalLines = 20, seqno = 90, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'GRAPH'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'GRAPH','','GRAPH'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'GRAPH',PrintNameSuffix = '',Name = 'GRAPH' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'GRAPH','','GRAPH'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'GRAPH',PrintNameSuffix = '',Name = 'GRAPH' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'LANGUAGE_ID',(select AD_Column_ID from AD_Column where columnName = 'LANGUAGE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'LANGUAGE_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'LANGUAGE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'LANGUAGE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'LANGUAGE_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'LANGUAGE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'LANGUAGE_ID','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'LANGUAGE_ID',PrintNameSuffix = '',Name = 'LANGUAGE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'LANGUAGE_ID','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'LANGUAGE_ID',PrintNameSuffix = '',Name = 'LANGUAGE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ORD',(select AD_Column_ID from AD_Column where columnName = 'ORD' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'ORD',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'ORD'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ORD' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ORD', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ORD'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ORD','','ORD'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ORD',PrintNameSuffix = '',Name = 'ORD' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ORD','','ORD'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ORD',PrintNameSuffix = '',Name = 'ORD' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Organisation','','Organization'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Organisation',PrintNameSuffix = '',Name = 'Organization' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Organisatie','','Organization'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Organisatie',PrintNameSuffix = '',Name = 'Organization' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PLV',(select AD_Column_ID from AD_Column where columnName = 'PLV' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'PLV',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PLV'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PLV' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PLV', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PLV'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PLV','','PLV'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PLV',PrintNameSuffix = '',Name = 'PLV' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PLV','','PLV'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PLV',PrintNameSuffix = '',Name = 'PLV' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PRICELISTACHAT_ID',(select AD_Column_ID from AD_Column where columnName = 'PRICELISTACHAT_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'PRICELISTACHAT_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PRICELISTACHAT_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PRICELISTACHAT_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PRICELISTACHAT_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PRICELISTACHAT_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PRICELISTACHAT_ID','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTACHAT_ID',PrintNameSuffix = '',Name = 'PRICELISTACHAT_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PRICELISTACHAT_ID','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTACHAT_ID',PrintNameSuffix = '',Name = 'PRICELISTACHAT_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PRICELISTVENTE_ID',(select AD_Column_ID from AD_Column where columnName = 'PRICELISTVENTE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'PRICELISTVENTE_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PRICELISTVENTE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PRICELISTVENTE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PRICELISTVENTE_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PRICELISTVENTE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PRICELISTVENTE_ID','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTVENTE_ID',PrintNameSuffix = '',Name = 'PRICELISTVENTE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PRICELISTVENTE_ID','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTVENTE_ID',PrintNameSuffix = '',Name = 'PRICELISTVENTE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PTYP',(select AD_Column_ID from AD_Column where columnName = 'PTYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'PTYP',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PTYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PTYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PTYP', PrintNameSuffix = '', runningTotalLines = 20, seqno = 60, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PTYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PTYP','','PTYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PTYP',PrintNameSuffix = '',Name = 'PTYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PTYP','','PTYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PTYP',PrintNameSuffix = '',Name = 'PTYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Process Instance',(select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'Process Instance',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Process Instance', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Instance du processus','','Process Instance'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Instance du processus',PrintNameSuffix = '',Name = 'Process Instance' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Proces Instantie','','Process Instance'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Proces Instantie',PrintNameSuffix = '',Name = 'Process Instance' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Product',(select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'Product',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Product', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Article','','Product'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Article',PrintNameSuffix = '',Name = 'Product' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Product','','Product'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Product',PrintNameSuffix = '',Name = 'Product' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000024,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'STYP',(select AD_Column_ID from AD_Column where columnName = 'STYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')),
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
'STYP',
'',
20,
70,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'STYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'STYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'EGGO STORE LUXEMBOURG')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'STYP', PrintNameSuffix = '', runningTotalLines = 20, seqno = 70, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'STYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'STYP','','STYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'STYP',PrintNameSuffix = '',Name = 'STYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000024,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'STYP','','STYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'STYP',PrintNameSuffix = '',Name = 'STYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'Export Fusion',(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'Export Fusion' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'Export Fusion' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ACHAT',(select AD_Column_ID from AD_Column where columnName = 'ACHAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'ACHAT',
'',
20,
120,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'ACHAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ACHAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ACHAT', PrintNameSuffix = '', runningTotalLines = 20, seqno = 120, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ACHAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ACHAT','','ACHAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ACHAT',PrintNameSuffix = '',Name = 'ACHAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ACHAT','','ACHAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ACHAT',PrintNameSuffix = '',Name = 'ACHAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ACHAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'CATR',(select AD_Column_ID from AD_Column where columnName = 'CATR' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'CATR',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'CATR'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'CATR' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'CATR', PrintNameSuffix = '', runningTotalLines = 20, seqno = 50, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'CATR'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'CATR','','CATR'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'CATR',PrintNameSuffix = '',Name = 'CATR' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'CATR','','CATR'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'CATR',PrintNameSuffix = '',Name = 'CATR' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='CATR' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Code Type',(select AD_Column_ID from AD_Column where columnName = 'Type' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'Type',
'',
20,
110,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Code Type'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Type' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Type', PrintNameSuffix = '', runningTotalLines = 20, seqno = 110, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Code Type'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Type','','Code Type'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Type',PrintNameSuffix = '',Name = 'Code Type' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Type','','Code Type'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Type',PrintNameSuffix = '',Name = 'Code Type' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Code Type' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'DSC',(select AD_Column_ID from AD_Column where columnName = 'DSC' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
0,
'B',
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
'DSC',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'DSC'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'DSC' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'B', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'DSC', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'DSC'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'DSC','','DSC'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'DSC',PrintNameSuffix = '',Name = 'DSC' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'DSC','','DSC'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'DSC',PrintNameSuffix = '',Name = 'DSC' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='DSC' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ECOTAX',(select AD_Column_ID from AD_Column where columnName = 'ECOTAX' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'ECOTAX',
'',
20,
140,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'ECOTAX'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ECOTAX' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ECOTAX', PrintNameSuffix = '', runningTotalLines = 20, seqno = 140, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ECOTAX'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ECOTAX','','ECOTAX'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ECOTAX',PrintNameSuffix = '',Name = 'ECOTAX' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ECOTAX','','ECOTAX'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ECOTAX',PrintNameSuffix = '',Name = 'ECOTAX' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ECOTAX' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Fusion',(select AD_Column_ID from AD_Column where columnName = 'IsFusion' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'Fusion',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Fusion'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'IsFusion' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Fusion', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Fusion'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Fusion','','Fusion'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Fusion',PrintNameSuffix = '',Name = 'Fusion' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Fusion','','Fusion'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Fusion',PrintNameSuffix = '',Name = 'Fusion' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Fusion' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'GRAPH',(select AD_Column_ID from AD_Column where columnName = 'GRAPH' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'GRAPH',
'',
20,
90,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'GRAPH'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'GRAPH' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'GRAPH', PrintNameSuffix = '', runningTotalLines = 20, seqno = 90, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'GRAPH'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'GRAPH','','GRAPH'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'GRAPH',PrintNameSuffix = '',Name = 'GRAPH' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'GRAPH','','GRAPH'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'GRAPH',PrintNameSuffix = '',Name = 'GRAPH' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='GRAPH' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'LANGUAGE_ID',(select AD_Column_ID from AD_Column where columnName = 'LANGUAGE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'LANGUAGE_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'LANGUAGE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'LANGUAGE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'LANGUAGE_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'LANGUAGE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'LANGUAGE_ID','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'LANGUAGE_ID',PrintNameSuffix = '',Name = 'LANGUAGE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'LANGUAGE_ID','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'LANGUAGE_ID',PrintNameSuffix = '',Name = 'LANGUAGE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='LANGUAGE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'ORD',(select AD_Column_ID from AD_Column where columnName = 'ORD' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'ORD',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'ORD'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'ORD' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'ORD', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'ORD'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'ORD','','ORD'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ORD',PrintNameSuffix = '',Name = 'ORD' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'ORD','','ORD'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'ORD',PrintNameSuffix = '',Name = 'ORD' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='ORD' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Organisation','','Organization'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Organisation',PrintNameSuffix = '',Name = 'Organization' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Organisatie','','Organization'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Organisatie',PrintNameSuffix = '',Name = 'Organization' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PLV',(select AD_Column_ID from AD_Column where columnName = 'PLV' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'PLV',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PLV'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PLV' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PLV', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PLV'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PLV','','PLV'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PLV',PrintNameSuffix = '',Name = 'PLV' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PLV','','PLV'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PLV',PrintNameSuffix = '',Name = 'PLV' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PLV' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PRICELISTACHAT_ID',(select AD_Column_ID from AD_Column where columnName = 'PRICELISTACHAT_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'PRICELISTACHAT_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PRICELISTACHAT_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PRICELISTACHAT_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PRICELISTACHAT_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PRICELISTACHAT_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PRICELISTACHAT_ID','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTACHAT_ID',PrintNameSuffix = '',Name = 'PRICELISTACHAT_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PRICELISTACHAT_ID','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTACHAT_ID',PrintNameSuffix = '',Name = 'PRICELISTACHAT_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTACHAT_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PRICELISTVENTE_ID',(select AD_Column_ID from AD_Column where columnName = 'PRICELISTVENTE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'PRICELISTVENTE_ID',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PRICELISTVENTE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PRICELISTVENTE_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PRICELISTVENTE_ID', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PRICELISTVENTE_ID'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PRICELISTVENTE_ID','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTVENTE_ID',PrintNameSuffix = '',Name = 'PRICELISTVENTE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PRICELISTVENTE_ID','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PRICELISTVENTE_ID',PrintNameSuffix = '',Name = 'PRICELISTVENTE_ID' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PRICELISTVENTE_ID' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'PTYP',(select AD_Column_ID from AD_Column where columnName = 'PTYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'PTYP',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'PTYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'PTYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'PTYP', PrintNameSuffix = '', runningTotalLines = 20, seqno = 60, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'PTYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'PTYP','','PTYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PTYP',PrintNameSuffix = '',Name = 'PTYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'PTYP','','PTYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'PTYP',PrintNameSuffix = '',Name = 'PTYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='PTYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Process Instance',(select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'Process Instance',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Process Instance', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Instance du processus','','Process Instance'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Instance du processus',PrintNameSuffix = '',Name = 'Process Instance' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Proces Instantie','','Process Instance'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Proces Instantie',PrintNameSuffix = '',Name = 'Process Instance' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Product',(select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'Product',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Product', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Article','','Product'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Article',PrintNameSuffix = '',Name = 'Product' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Product','','Product'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Product',PrintNameSuffix = '',Name = 'Product' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'STYP',(select AD_Column_ID from AD_Column where columnName = 'STYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'STYP',
'',
20,
70,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'STYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'STYP' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'STYP', PrintNameSuffix = '', runningTotalLines = 20, seqno = 70, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'STYP'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'STYP','','STYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'STYP',PrintNameSuffix = '',Name = 'STYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'STYP','','STYP'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'STYP',PrintNameSuffix = '',Name = 'STYP' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='STYP' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Series Style',(select AD_Column_ID from AD_Column where columnName = 'Style' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'Style',
'',
20,
100,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Series Style'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Style' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Style', PrintNameSuffix = '', runningTotalLines = 20, seqno = 100, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Series Style'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Style','','Series Style'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Style',PrintNameSuffix = '',Name = 'Series Style' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Style','','Series Style'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Style',PrintNameSuffix = '',Name = 'Series Style' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Series Style' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'Société','','Tenant'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Société',PrintNameSuffix = '',Name = 'Tenant' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'Client','','Tenant'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Client',PrintNameSuffix = '',Name = 'Tenant' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'UNEW',(select AD_Column_ID from AD_Column where columnName = 'UNEW' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'UNEW',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'UNEW'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'UNEW' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'UNEW', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'UNEW'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'UNEW','','UNEW'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNEW',PrintNameSuffix = '',Name = 'UNEW' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'UNEW','','UNEW'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNEW',PrintNameSuffix = '',Name = 'UNEW' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNEW' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'UNM',(select AD_Column_ID from AD_Column where columnName = 'UNM' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'UNM',
'',
20,
10,
10,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'UNM'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'UNM' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'UNM', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 10, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'UNM'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'UNM','','UNM'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNM',PrintNameSuffix = '',Name = 'UNM' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'UNM','','UNM'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'UNM',PrintNameSuffix = '',Name = 'UNM' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='UNM' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'VCAT',(select AD_Column_ID from AD_Column where columnName = 'VCAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'VCAT',
'',
20,
80,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'VCAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'VCAT' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'VCAT', PrintNameSuffix = '', runningTotalLines = 20, seqno = 80, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'VCAT'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'VCAT','','VCAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VCAT',PrintNameSuffix = '',Name = 'VCAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'VCAT','','VCAT'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VCAT',PrintNameSuffix = '',Name = 'VCAT' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VCAT' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000000,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'VENTE',(select AD_Column_ID from AD_Column where columnName = 'VENTE' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')),
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
'VENTE',
'',
20,
130,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'VENTE'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'VENTE' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'XX_EXPORTFUSION')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Export Fusion' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'MENATAM S.A.')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'VENTE', PrintNameSuffix = '', runningTotalLines = 20, seqno = 130, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'VENTE'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'fr_FR', 'Y', 'VENTE','','VENTE'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VENTE',PrintNameSuffix = '',Name = 'VENTE' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 1000000,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')), 'nl_NL', 'Y', 'VENTE','','VENTE'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'VENTE',PrintNameSuffix = '',Name = 'VENTE' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='VENTE' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Export Fusion')) and ad_language = 'nl_NL';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'ExportFusion2',(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
'',
'3KYC',
'UNM ASC',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'ExportFusion2' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), description = '', entitytype = '3KYC', orderbyclause = 'UNM ASC', whereclause = '', isactive = 'Y' 
where Name = 'ExportFusion2' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ExportFusion2','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = 'ExportFusion2'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.ExportFusion',
'',
'3KYC',
'',
'',
'',
'Export Fusion',
'',
'Y',
'N',
'N',
'Y',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'ExportFusion2' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = 'ExportFusion2'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.ExportFusion', description = '', entitytype = '3KYC', help = '', jasperreport = '', procedurename = '', name = 'Export Fusion', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'Y', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ExportFusion2' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ExportFusion2'), 'fr_FR', 'Y', 'Export Fusion','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ExportFusion2') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export Fusion',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ExportFusion2') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ExportFusion2'), 'nl_NL', 'Y', 'Export Fusion','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ExportFusion2') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export Fusion',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ExportFusion2') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'NameFusion','',
'3KYC',
'',
'Fusion',
'',
'',
'',
'',
'Fusion',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'NameFusion' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '3KYC', help = '', name = 'Fusion', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Fusion', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'NameFusion' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='NameFusion'), 'fr_FR', 'Y', '','Fusion','','','Fusion','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='NameFusion') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Fusion',Help = '',PO_PrintName = '',PrintName = 'Fusion',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='NameFusion') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='NameFusion'), 'nl_NL', 'Y', '','Fusion','','','Fusion','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='NameFusion') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Fusion',Help = '',PO_PrintName = '',PrintName = 'Fusion',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='NameFusion') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsFusion','',
'3KYC',
'',
'Fusion',
'',
'',
'',
'',
'Fusion',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsFusion' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '3KYC', help = '', name = 'Fusion', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Fusion', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsFusion' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsFusion'), 'fr_FR', 'Y', '','Fusion','','','Fusion','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFusion') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Fusion',Help = '',PO_PrintName = '',PrintName = 'Fusion',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFusion') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsFusion'), 'nl_NL', 'Y', '','Fusion','','','Fusion','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFusion') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Fusion',Help = '',PO_PrintName = '',PrintName = 'Fusion',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFusion') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'NameFusion',(select AD_Element_ID from AD_Element where ColumnName = 'NameFusion'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
100,
'',
'Fusion',
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
where not exists (select 1 from AD_Column where ColumnName = 'NameFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'NameFusion'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 100, help = '', name = 'Fusion', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'NameFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'fr_FR', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'nl_NL', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsFusion',(select AD_Element_ID from AD_Element where ColumnName = 'IsFusion'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'',
'3KYC',
1,
'',
'Fusion',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsFusion'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = '', entitytype = '3KYC', fieldlength = 1, help = '', name = 'Fusion', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'fr_FR', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'nl_NL', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'3KYC',
10,
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
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '3KYC', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'3KYC',
10,
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
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '3KYC', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Organisatie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UNM',(select AD_Element_ID from AD_Element where ColumnName = 'UNM'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
20,
'',
'UNM',
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
where not exists (select 1 from AD_Column where ColumnName = 'UNM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UNM'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 20, help = '', name = 'UNM', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UNM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'UNM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UNM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'UNM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UNM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UNEW',(select AD_Element_ID from AD_Element where ColumnName = 'UNEW'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
20,
'',
'UNEW',
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
where not exists (select 1 from AD_Column where ColumnName = 'UNEW'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UNEW'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 20, help = '', name = 'UNEW', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UNEW'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'UNEW'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UNEW' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'UNEW'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UNEW' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UNEW' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ORD',(select AD_Element_ID from AD_Element where ColumnName = 'ORD'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
30,
'',
'ORD',
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
where not exists (select 1 from AD_Column where ColumnName = 'ORD'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ORD'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 30, help = '', name = 'ORD', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ORD'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'ORD'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ORD' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'ORD'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ORD' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ORD' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DSC',(select AD_Element_ID from AD_Element where ColumnName = 'DSC'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
1000,
'',
'DSC',
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
where not exists (select 1 from AD_Column where ColumnName = 'DSC'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DSC'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 1000, help = '', name = 'DSC', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DSC'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'DSC'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DSC' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'DSC'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DSC' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DSC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CATR',(select AD_Element_ID from AD_Element where ColumnName = 'CATR'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
1,
'',
'CATR',
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
where not exists (select 1 from AD_Column where ColumnName = 'CATR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CATR'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 1, help = '', name = 'CATR', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CATR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'CATR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'CATR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'CATR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'CATR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CATR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PTYP',(select AD_Element_ID from AD_Element where ColumnName = 'PTYP'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
50,
'',
'PTYP',
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
where not exists (select 1 from AD_Column where ColumnName = 'PTYP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PTYP'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 50, help = '', name = 'PTYP', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PTYP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'PTYP'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PTYP' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'PTYP'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PTYP' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PTYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'STYP',(select AD_Element_ID from AD_Element where ColumnName = 'STYP'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
50,
'',
'STYP',
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
where not exists (select 1 from AD_Column where ColumnName = 'STYP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'STYP'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 50, help = '', name = 'STYP', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'STYP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'STYP'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'STYP' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'STYP'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'STYP' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='STYP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VCAT',(select AD_Element_ID from AD_Element where ColumnName = 'VCAT'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
1,
'',
'VCAT',
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
where not exists (select 1 from AD_Column where ColumnName = 'VCAT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VCAT'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 1, help = '', name = 'VCAT', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VCAT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'VCAT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VCAT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'VCAT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VCAT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VCAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'GRAPH',(select AD_Element_ID from AD_Element where ColumnName = 'GRAPH'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
1,
'',
'GRAPH',
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
where not exists (select 1 from AD_Column where ColumnName = 'GRAPH'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'GRAPH'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 1, help = '', name = 'GRAPH', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'GRAPH'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'GRAPH'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'GRAPH' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'GRAPH'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'GRAPH' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='GRAPH' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Style',(select AD_Element_ID from AD_Element where ColumnName = 'Style'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Style of data series rendering',
'3KYC',
1,
'Specifies how multiple data series are rendered against each other on the chart',
'Series Style',
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
where not exists (select 1 from AD_Column where ColumnName = 'Style'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Style'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Style of data series rendering', entitytype = '3KYC', fieldlength = 1, help = 'Specifies how multiple data series are rendered against each other on the chart', name = 'Series Style', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Style'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Series Style'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Series Style' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Series Style'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Series Style' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Style' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Type',(select AD_Element_ID from AD_Element where ColumnName = 'Type'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Type of Code/Validation (SQL, Java Script, Java Language)',
'3KYC',
1,
'The Type indicates the type of code/validation.  This can be SQL, Java Script or Java Language.',
'Code Type',
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
where not exists (select 1 from AD_Column where ColumnName = 'Type'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Type'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Type of Code/Validation (SQL, Java Script, Java Language)', entitytype = '3KYC', fieldlength = 1, help = 'The Type indicates the type of code/validation.  This can be SQL, Java Script or Java Language.', name = 'Code Type', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Type'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Type' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VENTE',(select AD_Element_ID from AD_Element where ColumnName = 'VENTE'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
14,
'',
'VENTE',
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
where not exists (select 1 from AD_Column where ColumnName = 'VENTE'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VENTE'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 14, help = '', name = 'VENTE', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VENTE'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'VENTE'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VENTE' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'VENTE'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VENTE' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VENTE' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ACHAT',(select AD_Element_ID from AD_Element where ColumnName = 'ACHAT'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
14,
'',
'ACHAT',
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
where not exists (select 1 from AD_Column where ColumnName = 'ACHAT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ACHAT'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 14, help = '', name = 'ACHAT', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ACHAT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'ACHAT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ACHAT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'ACHAT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ACHAT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ACHAT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ECOTAX',(select AD_Element_ID from AD_Element where ColumnName = 'ECOTAX'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
14,
'',
'ECOTAX',
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
where not exists (select 1 from AD_Column where ColumnName = 'ECOTAX'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ECOTAX'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 14, help = '', name = 'ECOTAX', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ECOTAX'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'ECOTAX'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ECOTAX' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'ECOTAX'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ECOTAX' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ECOTAX' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PRICELISTACHAT_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTACHAT_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
10,
'',
'PRICELISTACHAT_ID',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PRICELISTACHAT_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTACHAT_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 10, help = '', name = 'PRICELISTACHAT_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PRICELISTACHAT_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTACHAT_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTACHAT_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTACHAT_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PRICELISTVENTE_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTVENTE_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
10,
'',
'PRICELISTVENTE_ID',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PRICELISTVENTE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTVENTE_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 10, help = '', name = 'PRICELISTVENTE_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PRICELISTVENTE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTVENTE_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTVENTE_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTVENTE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'LANGUAGE_ID',(select AD_Element_ID from AD_Element where ColumnName = 'LANGUAGE_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
5,
'',
'LANGUAGE_ID',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'LANGUAGE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'LANGUAGE_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 5, help = '', name = 'LANGUAGE_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'LANGUAGE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'LANGUAGE_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'LANGUAGE_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='LANGUAGE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PLV',(select AD_Element_ID from AD_Element where ColumnName = 'PLV'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'3KYC',
5,
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'PLV',
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
where not exists (select 1 from AD_Column where ColumnName = 'PLV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PLV'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = '3KYC', fieldlength = 5, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'PLV', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PLV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'PLV'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PLV' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'PLV'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PLV' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PLV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsFusion',(select AD_Element_ID from AD_Element where ColumnName = 'IsFusion'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
1,
'',
'Fusion',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsFusion'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 1, help = '', name = 'Fusion', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'3KYC',
10,
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
'Y',
'N',
'N',
'N',
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = '3KYC', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_PInstance_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Instance of the process',
'3KYC',
10,
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
'N',
'N',
'N',
'N',
'N',
'',
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_EXPORTFUSION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Instance of the process', entitytype = '3KYC', fieldlength = 10, help = '', name = 'Process Instance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'fr_FR', 'Y', 'Instance du processus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Instance du processus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')), 'nl_NL', 'Y', 'Proces Instantie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Proces Instantie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_EXPORTFUSION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'NameFusion',(select AD_Element_ID from AD_Element where ColumnName = 'NameFusion'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3KYC',
100,
'',
'Fusion',
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
where not exists (select 1 from AD_Column where ColumnName = 'NameFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'NameFusion'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3KYC', fieldlength = 100, help = '', name = 'Fusion', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'NameFusion'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'fr_FR', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'nl_NL', 'Y', 'Fusion'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fusion' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Fusion',
'',
1,
'',
'3KYC',
'',
'',
115,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Fusion', description = '', displaylength = 1, displaylogic = '', entitytype = '3KYC', help = '', obscuretype = '', seqno = 115, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Fusion',
'',
24,
'',
'3KYC',
'',
'',
90,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Fusion', description = '', displaylength = 24, displaylogic = '', entitytype = '3KYC', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Fusion',
'',
24,
'',
'3KYC',
'',
'',
65,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Fusion', description = '', displaylength = 24, displaylogic = '', entitytype = '3KYC', help = '', obscuretype = '', seqno = 65, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', '','','Fusion'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Fusion' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'NameFusion' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'PRICELISTACHAT_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'M_PriceList_Achat'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'PRICELISTACHAT_ID',
'',
'',
'',
'3KYC',
0,
'',
30,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'PRICELISTACHAT_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_PriceList_Achat'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'PRICELISTACHAT_ID', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '3KYC', fieldlength = 0, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'PRICELISTACHAT_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'fr_FR', 'Y', '','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PRICELISTACHAT_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'nl_NL', 'Y', '','','PRICELISTACHAT_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PRICELISTACHAT_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTACHAT_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ValidFrom',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Valid from',
'',
'',
'Valid from including this date (first day)',
'3KYC',
7,
'The Valid From date indicates the first day of a date range',
40,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ValidFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Valid from', defaultvalue = '', defaultvalue2 = '', description = 'Valid from including this date (first day)', entitytype = '3KYC', fieldlength = 7, help = 'The Valid From date indicates the first day of a date range', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ValidFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'fr_FR', 'Y', 'Valide à partir de (date incluse)','Indique le premier jour d''une période','Valide du'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valide à partir de (date incluse)',Help = 'Indique le premier jour d''une période',Name = 'Valide du' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'nl_NL', 'Y', 'Geldig vanaf , inclusief deze dag (eerste dag)','De geldig vanaf datum geeft de eerste dag uit een periode weer.','Geldig Vanaf'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Geldig vanaf , inclusief deze dag (eerste dag)',Help = 'De geldig vanaf datum geeft de eerste dag uit een periode weer.',Name = 'Geldig Vanaf' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'3KYC',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
10,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '3KYC', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'PRICELISTVENTE_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Pricelist_Vente'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'PRICELISTVENTE_ID',
'',
'',
'',
'3KYC',
0,
'',
20,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'PRICELISTVENTE_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Pricelist_Vente'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'PRICELISTVENTE_ID', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '3KYC', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'PRICELISTVENTE_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'fr_FR', 'Y', '','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PRICELISTVENTE_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'nl_NL', 'Y', '','','PRICELISTVENTE_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PRICELISTVENTE_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PRICELISTVENTE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'LANGUAGE_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Language System'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'LANGUAGE_ID',
'@#AD_Language@',
'',
'',
'3KYC',
0,
'',
50,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'LANGUAGE_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Language System'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'LANGUAGE_ID', defaultvalue = '@#AD_Language@', defaultvalue2 = '', description = '', entitytype = '3KYC', fieldlength = 0, help = '', seqno = 50, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'LANGUAGE_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'fr_FR', 'Y', '','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'LANGUAGE_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')), 'nl_NL', 'Y', '','','LANGUAGE_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'LANGUAGE_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='LANGUAGE_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ExportFusion2')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'ExportFusion2','Export Fusion',
'P',
'',
'3KYC',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'ExportFusion2'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'ExportFusion2' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Export Fusion', action = 'P', description = '', entitytype = '3KYC', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ExportFusion2'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'ExportFusion2' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ExportFusion2'), 'fr_FR', 'Y', '','Export Fusion'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ExportFusion2') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Export Fusion' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ExportFusion2') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ExportFusion2'), 'nl_NL', 'Y', '','Export Fusion'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ExportFusion2') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Export Fusion' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ExportFusion2') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3KYC-117707', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '49', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3KYC' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '3KYC', help = '', importtable = 'N', loadseq = 0, name = 'XX_EXPORTFUSION', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_EXPORTFUSION' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'ExportFusion2') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'ExportFusion2')); 

