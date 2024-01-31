using { proj_schema as my } from '../db/schema';
service CatalogService {
 @odata.draft.enabled
 entity tab1 as projection on my.tab1;
 entity tab2 as projection on my.tab2;
 entity vendor_data as projection on my.vendor_data;
 entity Fvendor_responseoo as projection on my.vendor_response; 
 entity PAYMENT_TERM_DETAILS as projection on my.PAYMENT_TERM_DETAILS;
 entity WORKFLOW_HISTORY as projection on my.WORKFLOW_HISTORY;
 entity attachments as projection on my.attachments;
 entity Files as projection on my.Files;

}