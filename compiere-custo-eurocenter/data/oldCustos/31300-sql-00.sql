insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'{RV_InvoiceValidator_ID}','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = '*None*'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = '{RV_InvoiceValidator_ID}' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = '*None*'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = '{RV_InvoiceValidator_ID}' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Tenant','Tenant',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Tenant',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Tenant','Société',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Société',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Active',(select AD_Column_ID from AD_Column where columnName = 'IsActive' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Active',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Active'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'IsActive' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Active', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Active'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Active','Active',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active',PrintName = 'Active',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Active','Actif',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active',PrintName = 'Actif',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Active' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Invoice Validator',(select AD_Column_ID from AD_Column where columnName = 'XX_InvoiceValidator_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Invoice Validator',
'',
20,
5,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Invoice Validator'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'XX_InvoiceValidator_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Invoice Validator', PrintNameSuffix = '', runningTotalLines = 20, seqno = 5, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Invoice Validator'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Invoice Validator','Invoice Validator',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice Validator',PrintName = 'Invoice Validator',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Invoice Validator','Validateur Facture',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice Validator',PrintName = 'Validateur Facture',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice Validator' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Document No',(select AD_Column_ID from AD_Column where columnName = 'DocumentNo' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Document No',
'',
20,
7,
1,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Document No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'DocumentNo' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'Y', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Document No', PrintNameSuffix = '', runningTotalLines = 20, seqno = 7, sortno = 1, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Document No'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Document No','Document No',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document No',PrintName = 'Document No',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Document No','N° Pièces',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document No',PrintName = 'N° Pièces',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document No' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Grand Total',(select AD_Column_ID from AD_Column where columnName = 'GrandTotal' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Grand Total',
'',
20,
9,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Grand Total'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'GrandTotal' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Grand Total', PrintNameSuffix = '', runningTotalLines = 20, seqno = 9, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Grand Total'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Grand Total','Grand Total',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Grand Total',PrintName = 'Grand Total',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Grand Total','Total général',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Grand Total',PrintName = 'Total général',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Grand Total' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Organization','Organization',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organization',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Organization','Organisation',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organisation',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Invoice',(select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Invoice',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Invoice'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Invoice', PrintNameSuffix = '', runningTotalLines = 20, seqno = 4, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Invoice'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Invoice','Invoice',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice',PrintName = 'Invoice',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Invoice','Facture',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice',PrintName = 'Facture',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Invoice' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Business Partner',(select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Business Partner',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Business Partner'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Business Partner', PrintNameSuffix = '', runningTotalLines = 20, seqno = 6, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Business Partner'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Business Partner','Business Partner',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner',PrintName = 'Business Partner',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Business Partner','Tiers',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner',PrintName = 'Tiers',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Document Status',(select AD_Column_ID from AD_Column where columnName = 'DocStatus' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Doc Status',
'',
20,
8,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Document Status'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'DocStatus' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Doc Status', PrintNameSuffix = '', runningTotalLines = 20, seqno = 8, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Document Status'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Document Status','Doc Status',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Status',PrintName = 'Doc Status',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Document Status','Statut document',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Status',PrintName = 'Statut document',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Document Status' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 1000022,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Sales Transaction',(select AD_Column_ID from AD_Column where columnName = 'IsSOTrx' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')),
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
'Sales Transaction',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Sales Transaction'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'IsSOTrx' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'RV_InvoiceValidator')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{RV_InvoiceValidator_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'Eurocenter')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Sales Transaction', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Sales Transaction'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'nl_BE', 'Y', 'Sales Transaction','Sales Transaction',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sales Transaction',PrintName = 'Sales Transaction',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'nl_BE';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 1000022,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')), 'fr_FR', 'Y', 'Sales Transaction','Transaction vente',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sales Transaction',PrintName = 'Transaction vente',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Sales Transaction' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{RV_InvoiceValidator_ID}')) and ad_language = 'fr_FR';

