insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Quantity Invoiced',(select AD_Column_ID from AD_Column where columnName = 'QtyInvoiced' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_IntrastatReport')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO')),
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
'Invoiced',
'',
20,
16,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Quantity Invoiced'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO')));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'QtyInvoiced' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_IntrastatReport')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Invoiced', PrintNameSuffix = '', runningTotalLines = 20, seqno = 16, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Quantity Invoiced'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'));

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))), 'fr_FR', 'Y', 'Quantité','','Quantity Invoiced'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Quantité',PrintNameSuffix = '',Name = 'Quantity Invoiced' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,PrintName,PrintNameSuffix,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))), 'nl_NL', 'Y', 'Gefactureerde Hoeveelheid','','Quantity Invoiced'
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}' and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,PrintName = 'Gefactureerde Hoeveelheid',PrintNameSuffix = '',Name = 'Quantity Invoiced' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Invoiced' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = '{Z_IntrastatReport_ID}'and AD_Client_ID in (select AD_Client_ID from AD_Client where value = 'EGGO'))) and ad_language = 'nl_NL';