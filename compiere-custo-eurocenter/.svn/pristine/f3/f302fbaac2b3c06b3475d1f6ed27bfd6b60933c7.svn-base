insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'Print Cutoff','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'zrv_cutoff'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'Print Cutoff' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'zrv_cutoff'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'Print Cutoff' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'line',(select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Y',
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
'Line number',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'line'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Line number', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'line'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'nl_NL', 'Y', 'line','Regel nr.',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'line',PrintName = 'Regel nr.',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'fr_FR', 'Y', 'line','Numéro de ligne',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'line',PrintName = 'Numéro de ligne',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'c_invoice_id',(select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Y',
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
'Supplier invoice',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'c_invoice_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Supplier invoice', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'c_invoice_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'nl_NL', 'Y', 'c_invoice_id','Factuur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_invoice_id',PrintName = 'Factuur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'fr_FR', 'Y', 'c_invoice_id','Numéro de facture fournisseur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_invoice_id',PrintName = 'Numéro de facture fournisseur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'z_cutoffamt',(select AD_Column_ID from AD_Column where columnName = 'Z_CutOffAmt' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Y',
'N',
'N',
'Y',
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
'Amount cut-off',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'z_cutoffamt'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Z_CutOffAmt' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Amount cut-off', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'z_cutoffamt'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'nl_NL', 'Y', 'z_cutoffamt','Montant cut-off',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'z_cutoffamt',PrintName = 'Montant cut-off',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'fr_FR', 'Y', 'z_cutoffamt','Montant cut-off',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'z_cutoffamt',PrintName = 'Montant cut-off',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'c_order_id',(select AD_Column_ID from AD_Column where columnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
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
'Y',
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
'Purchase order number',
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
where not exists (select 1 from AD_PrintFormatItem where Name = 'c_order_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'Print Cutoff' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Purchase order number', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'c_order_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'nl_NL', 'Y', 'c_order_id','Verkoop Order',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_order_id',PrintName = 'Verkoop Order',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')), 'fr_FR', 'Y', 'c_order_id','Numéro de commande fournisseur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_order_id',PrintName = 'Numéro de commande fournisseur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'Print Cutoff')) and ad_language = 'fr_FR';