--jasper pour paiement
update ad_process set jasperreport ='EGGO_Payment.jasper', classname='ru.compiere.report.RusReportStarter' where ad_process_id=313;
--jasper pour transfert banque
update ad_tab set ad_process_id = (select ad_process_id from ad_process where value='RPT_Bank') where value='D�p�t en banque ';
--jasper pour r�ception marchandise/exp�dition marchandise
update ad_process set jasperreport ='EGGO_Delivery.jasper', classname='ru.compiere.report.RusReportStarter' where ad_process_id=117;
update ad_process set jasperreport ='EGGO_Delivery.jasper', classname='ru.compiere.report.RusReportStarter' where ad_process_id=(select ad_process_id from ad_process where value='Rpt M_InOut EC/EGGO');