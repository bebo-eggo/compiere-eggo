insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Liste de réapprovisionnement KM','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'Z_Replenish'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'Z_Replenish'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Liste de réapprovisionnement KM' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'Z_Replenish'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Liste de réapprovisionnement KM' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Available Quantity',(select AD_Column_ID from AD_Column where columnName = 'QtyAvailable' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Qty Available',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Available Quantity'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'QtyAvailable' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Qty Available', PrintNameSuffix = '', runningTotalLines = 20, seqno = 60, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Available Quantity'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Available Quantity','Qté disponible',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity',PrintName = 'Qté disponible',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Available Quantity','Aant. Beschikbaar',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity',PrintName = 'Aant. Beschikbaar',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Available Quantity' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Business Partner',(select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Business Partner',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Business Partner'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Business Partner', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Business Partner'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Business Partner','Tiers',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner',PrintName = 'Tiers',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Business Partner','Relatie',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner',PrintName = 'Relatie',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Business Partner' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Maximum Level',(select AD_Column_ID from AD_Column where columnName = 'Level_Max' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Maximum Level',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Maximum Level'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Level_Max' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Maximum Level', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Maximum Level'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Maximum Level','Niveau Maxi',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Maximum Level',PrintName = 'Niveau Maxi',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Maximum Level','Maximum Niveau',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Maximum Level',PrintName = 'Maximum Niveau',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Maximum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Minimum Level',(select AD_Column_ID from AD_Column where columnName = 'Level_Min' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Minimum Level',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Minimum Level'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Level_Min' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Minimum Level', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Minimum Level'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Minimum Level','Niveau Mini',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Minimum Level',PrintName = 'Niveau Mini',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Minimum Level','Minimum Niveau',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Minimum Level',PrintName = 'Minimum Niveau',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Minimum Level' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Order Pack Qty',(select AD_Column_ID from AD_Column where columnName = 'Order_Pack' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Order Pack Qty',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Order Pack Qty'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Order_Pack' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Order Pack Qty', PrintNameSuffix = '', runningTotalLines = 20, seqno = 50, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Order Pack Qty'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Order Pack Qty','Nbre unités/emballage',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Pack Qty',PrintName = 'Nbre unités/emballage',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Order Pack Qty','Order Verpakkingshoeveelheid',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Pack Qty',PrintName = 'Order Verpakkingshoeveelheid',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Order Pack Qty' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Organization',(select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Org_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Organization', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Organization'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Organization','Organisation',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organisation',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Organization','Organisatie',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization',PrintName = 'Organisatie',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Organization' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Process Instance',(select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_PInstance_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Process Instance', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Process Instance'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Process Instance','Instance du processus',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Instance du processus',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Process Instance','Proces Instantie',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance',PrintName = 'Proces Instantie',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Process Instance' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Product',(select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
20,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Product', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Product'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Product','Article',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Article',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Product','Product',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',PrintName = 'Product',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Product' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'QtyTrft',(select AD_Column_ID from AD_Column where columnName = 'QtyTrft' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'QtyTrft',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'QtyTrft'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'QtyTrft' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'QtyTrft', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'QtyTrft'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'QtyTrft','QtyTrft',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QtyTrft',PrintName = 'QtyTrft',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'QtyTrft','QtyTrft',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QtyTrft',PrintName = 'QtyTrft',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='QtyTrft' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Quantity Ordered',(select AD_Column_ID from AD_Column where columnName = 'QtyOrdered' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Qty Ordered',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Quantity Ordered'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'QtyOrdered' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Qty Ordered', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Quantity Ordered'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Quantity Ordered','Quantité commandée',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Ordered',PrintName = 'Quantité commandée',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Quantity Ordered','Bestelde Hoeveelheid',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Ordered',PrintName = 'Bestelde Hoeveelheid',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity Ordered' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Quantity to Order',(select AD_Column_ID from AD_Column where columnName = 'QtyToOrder' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Qty to Order',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Quantity to Order'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'QtyToOrder' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Qty to Order', PrintNameSuffix = '', runningTotalLines = 20, seqno = 70, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Quantity to Order'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Quantity to Order','Qté à commander',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity to Order',PrintName = 'Qté à commander',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Quantity to Order','Te Bestellen Hoeveelheid',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity to Order',PrintName = 'Te Bestellen Hoeveelheid',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Quantity to Order' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Tenant',(select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'AD_Client_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'N', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Tenant', PrintNameSuffix = '', runningTotalLines = 20, seqno = 0, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Tenant'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Tenant','Société',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Société',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Tenant','Client',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant',PrintName = 'Client',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Tenant' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'Warehouse',(select AD_Column_ID from AD_Column where columnName = 'M_Warehouse_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')),
(select AD_PrintColor_ID from AD_PrintColor where name = ''),
(select AD_PrintFont_ID from AD_PrintFont where name = ''),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Warehouse',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'Warehouse'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'M_Warehouse_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'Z_Replenish')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = ''), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = ''), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Liste de réapprovisionnement KM' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'L', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'N', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'N', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Warehouse', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'Warehouse'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'fr_FR', 'Y', 'Warehouse','Magasin',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Warehouse',PrintName = 'Magasin',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')), 'nl_NL', 'Y', 'Warehouse','Stock',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Warehouse',PrintName = 'Stock',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='Warehouse' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Liste de réapprovisionnement KM')) and ad_language = 'nl_NL';

