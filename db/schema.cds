namespace proj_schema;
using {
    cuid,
    managed
} from '@sap/cds/common';

entity tab1{
key PAN_Number : String;
key id : String;

SBG : String;
SBU : String;
BUORPurchasing_Group : String;
Plant_Code : String;
Project_Description : String;
PR_NumberBKTsBKT : String; 
Subject_of_ProposalOROrder : String;
Previous_PAN_References : String;
Split_OrderORNo_of_vendors : String;
SOP_Type : String;
Order_Type_OR_Document_tyFuuidpe : String;
Asset_Type : String;
Nature_of_Transaction : String;
Order_Location_OR_Plant : String;
Base_line_spend : String;
Project_CurrencyORBase_Currency : String;
Order_CurrencyORBid_currency : String;
Final_proposed_Value : String;
Order_Value_BKTIn_Project_CurrencyBKT : String;
Order_Value_BKTIn_Bid_CurrencyBKT : String;
Savings_achieved_btw_initial_and_final_quote : String;
Savings_against_base_line_spend_of_RFP : String;
Number_of_Vendors_Shortlisted_for_RFP : String;
Number_of_Vendors_Technically_Qualified : String;
Required_at_Site_Date : String;
RFP_Number : String;
RFP_Publish_Date : String;
Time_Taken_for_FinalizationDASHIn_DAYS : String;
Vendor_Final_Quotation_Date : String;
Vendor_Final_Quotation_Amount : String;
//vendor data
// Proposed_Vendor_Name : String; 
// Proposed_Vendor_Code : String; 
// Supplier_Origin_State : String; 
// Destination_State_BKTShipDASHto_LocationBKT : String; 
// Vendor_GST_Number : String; 
// Vendor_CE_Score : String; 
// Vendor_CE_Date : String; 
// Vendor_PE_Score : String; 
// Vendor_PE_Date : String; 
// Vendor_Contact_PersonDASH1 : String; 
// Vendor_Contact_PersonDASH2 : String; 
// Technical_Committee_who_cleared_the_proposal : String; 
// Commercial_Committee_who_cleared_the_proposal : String; 
// Vendor_References_to_be_displayed_in_Order : String; 
// Shortlisted_Vendors_Response_summary : String; 
//
// ATTACHMENTS_INTERNAL_TO_PAN_FOR_APPROVERS : String; 
// Incoterms : String; 

// //Terms & Conditions Compared with
// Number_of_Back_to_back_Terms_agreed_with_Vendor_as_per_GPC_OR_GCC : String;
//    Details_of_deviated_or_better_terms_agreed_with_the_Vendor : String;
//    Market_Scenario_and_Demand : String;
//    Companys_Position_and_Market_dynamics_of_this_purchase:String;
//    Should_Be_Cost_estimated : String;
//    Highlights_of_this_proposal_and_Price_Justification_for_this_proposal:String;
//    Price_Escalation_Agreed_if_any : String;
//    Particulars_of_any_Free_Service_OR_Supply_Guarantees_OR_Warrant_yfrom_Vendor:String;
//    Transportation : String;
//    Logistics_Cost : String;
//    Delivery_Schedule : String;
//    Tax_Details : String;
//    Additional_Remarks : String;
//    ABG : String;
//    ABG_Value : String;
//    CPBG : String;
//    CPBG_Value : String;
//    // OTHERS TERMS AND CONDITIONS

//    Scope_and_Responsibilities : String;
//    Commercial_Terms : String;
//    Compliance_Terms : String;
//    Others :String;
//    //PRICE DETAILS

//    HSN_OR_SAC_Code : String;
//    Item_Code : String;
//    Item_Short_Description : String;
//    UOM : String;
//    Quantity : String;
//    Unit_Price : String;
//    Amount : String;
//    Indian_Tax_PER : String;
//    Quantity_Over_Delivery_Tolerance : String;
justification : LargeString;
Comments : LargeString;
submitted_by :String;
submitted_date :String;
   tab1totab2 : Composition of many tab2 on tab1totab2.tab2totab1 = $self;
//    tab1tovendor_response_summary_table : Composition of many vendor_data on tab1tovendor_response_summary_table.vendor_response_summary_tabletotab1 = $self;
//    tab1toPAYMENT_TERM_DETAILS : Composition of many PAYMENT_TERM_DETAILS on tab1toPAYMENT_TERM_DETAILS.PAYMENT_TERM_DETAILStotab1 = $self;
   tab1toWORKFLOW_HISTORY : Composition of many WORKFLOW_HISTORY on tab1toWORKFLOW_HISTORY.WORKFLOW_HISTORYtotab1 = $self;
   tab1topdf : Association to many attachments on tab1topdf.idd = id;
    tab1tovendor_data : Composition of many vendor_data on tab1tovendor_data.vendor_datatotab1 = $self;
}

entity tab2 {
key id : String;
key idd : String;
First_Publish_Data_DASH_same_as_sr_no_28 : String; 
Last_Publish_data_before_RA : String; 
RA_Data : String; 
Techanical_appropval_data : String; 
Client_approval_data : String;
tab2totab1 : Association to one tab1 on tab2totab1.id = idd; 
}
entity vendor_data {
    //vendor response summary table
key Proposed_Vendor_Code : String; //disp
key id :String;
key idd : String;

Awarded_Vendor : String; 
Vendor_Name : String;  //disp
Vendor_Location : String; 
Technically_Approved : String; 
Client_Approved : String;  
Original_quote : String;  //disp
Final_Quote : String;  //disp
Order_amount_OR_Split_order_amount : String;  
Discount_Amount : String;  
Discount_percentage : String;  
Rank : String; 
vendtovenr :  Composition of one vendor_response on vendtovenr.venrtovend = $self;
// vendtotnc :  Composition of many Terms_and_Conditions_Compared_with on vendtotnc.tnctovend = $self;
vendtoptd:  Composition of many PAYMENT_TERM_DETAILS on vendtoptd.ptdtovend = $self;
vendor_datatotab1 :  Association to one tab1 on vendor_datatotab1.id = idd; 

// vendor_response_summary_tabletotab1 : Association to one tab1 on vendor_response_summary_tabletotab1.id = idd; 
}





 entity vendor_response{
    key dd : String;
key Proposed_Vendor_Code : String; 
    
  key  iddd : String;
Proposed_Vendor_Name : String; 
Supplier_Origin_State : String; 
Destination_State_BKTShipDASHto_LocationBKT : String; 
Vendor_GST_Number : String; 
Vendor_CE_Score : String; 
Vendor_CE_Date : String; 
Vendor_PE_Score : String; 
Vendor_PE_Date : String; 
Vendor_Contact_PersonDASH1 : String; 
Vendor_Contact_PersonDASH2 : String; 
Technical_Committee_who_cleared_the_proposal : String; 
Commercial_Committee_who_cleared_the_proposal : String; 
Vendor_References_to_be_displayed_in_Order : String; 
Shortlisted_Vendors_Response_summary : String; 

Incoterms : String; 
//Terms_and_Conditions_Compared_with
Number_of_Back_to_back_Terms_agreed_with_Vendor_as_per_GPC_OR_GCC : String;
   Details_of_deviated_or_better_terms_agreed_with_the_Vendor : String;
   Market_Scenario_and_Demand : String;
   Companys_Position_and_Market_dynamics_of_this_purchase:String;
   Should_Be_Cost_estimated : String;
   Highlights_of_this_proposal_and_Price_Justification_for_this_proposal:String;
   Price_Escalation_Agreed_if_any : String;
   Particulars_of_any_Free_Service_OR_Supply_Guarantees_OR_Warrant_yfrom_Vendor:String;
   Transportation : String;
   Logistics_Cost : String;
   Delivery_Schedule : String;
   Tax_Details : String;
   Additional_Remarks : String;
   ABG : String;
   ABG_Value : String;
   CPBG : String;
   CPBG_Value : String;
 // OTHERS TERMS AND CONDITIONS

   Scope_and_Responsibilities : String;
   Commercial_Terms : String;
   Compliance_Terms : String;
   Others :String;
     //PRICE DETAILS

   HSN_OR_SAC_Code : String;
   Item_Code : String;
   Item_Short_Description : String;
   UOM : String;
   Quantity : String;
   Unit_Price : String;
   Amount : String;
   Indian_Tax_PER : String;
   Quantity_Over_Delivery_Tolerance : String;
   venrtovend :  Association to one vendor_data on venrtovend.id = iddd ; 
 }
 
 entity PAYMENT_TERM_DETAILS {
     key dd : String;
key Proposed_Vendor_Code : String; 
    
   key iddd : String;
  Payment_Type : String;
   ADVANCE : String;
   Progress : String;
   Retention : String;
   Percentage_Total : String;
   Mandatory_Documents_OR_Submissions_for_Progress : String;
   To_be_certified_in_Company_by : String;
   Percentage_Payment : String;
   ptdtovend : Association to one vendor_data on ptdtovend.id = iddd ; 
//    PAYMENT_TERM_DETAILStotab1 :  Association to one tab1 on PAYMENT_TERM_DETAILStotab1.id = idd; 
}
entity attachments{
    key idd : String;
   key pdfId : UUID;
    @Core.MediaType: mediaType
    content: LargeBinary;
    @Core.IsMediaType: true
    mediaType: String;
    fileName: String;
    size: Integer;
    url: String;
    pdftotab1 : Association to one tab1 on pdftotab1.id = idd;
}
entity WORKFLOW_HISTORY { 
    key dd : String;
   key idd : String;
    Title : String;
    Employee_ID : String;
    Employee_Name : String;
    Notification_Status : String;
    Result : String;
    Begin_DateAND_Time: String;
    End_DateAND_Time: String;
    Days_Taken : String;
    Remarks : String;
    WORKFLOW_HISTORYtotab1 :  Association to one tab1 on WORKFLOW_HISTORYtotab1.id = idd; 
}


