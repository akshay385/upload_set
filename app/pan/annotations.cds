using CatalogService as service from '../../srv/service';

annotate service.tab1 with @(
    UI.CreateHidden : true,
    UI.DeleteHidden :true,
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : PAN_Number,
            Label : 'PAN Number',
        },{
            $Type : 'UI.DataField',
            Value : SBG,
            Label : 'SBG',
        },{
            $Type : 'UI.DataField',
            Value : SBU,
            Label : 'SBU',
        },{
            $Type : 'UI.DataField',
            Value : BUORPurchasing_Group,
            Label : 'BU/Purchasing Group',
        },{
            $Type : 'UI.DataField',
            Value : Plant_Code,
            Label : 'Plant Code',
        },],
    UI.SelectionPresentationVariant #tableView : {
    
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
annotate service.tab1 with @(
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'General Details',
            ID : 'GeneralDetails1',
            Facets : [
            {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralDetails',
            Target : '@UI.FieldGroup#GeneralDetails',
        },
                {
            $Type : 'UI.ReferenceFacet',
            Label : ' ',
            ID : '_',
            Target : 'tab1totab2/@UI.LineItem#_',
        },
                ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Vendor Data',
            ID : 'VendorData',
            Target : 'tab1tovendor_data/@UI.LineItem#VendorData',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'attachments',
            ID : 'attachments',
            Target : 'tab1topdf/@UI.LineItem#attachments',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '',
            ID : 'Justification',
            Target : '@UI.FieldGroup#Justification',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'WORKFLOW HISTORY',
            ID : 'WORKFLOWHISTORY',
            Target : 'tab1toWORKFLOW_HISTORY/@UI.LineItem#WORKFLOWHISTORY',
        },
    ],
    UI.FieldGroup #GeneralDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : PAN_Number,
                Label : 'PAN Number',
            },{
                $Type : 'UI.DataField',
                Value : SBG,
                Label : 'SBG',
            },{
                $Type : 'UI.DataField',
                Value : SBU,
                Label : 'SBU',
            },{
                $Type : 'UI.DataField',
                Value : BUORPurchasing_Group,
                Label : 'BU/Purchasing Group',
            },{
                $Type : 'UI.DataField',
                Value : Plant_Code,
                Label : 'Plant Code',
            },{
                $Type : 'UI.DataField',
                Value : Project_Description,
                Label : 'Project Description',
            },{
                $Type : 'UI.DataField',
                Value : PR_NumberBKTsBKT,
                Label : 'PR Number(s)',
            },{
                $Type : 'UI.DataField',
                Value : Subject_of_ProposalOROrder,
                Label : 'Subject of Proposal/Order',
            },{
                $Type : 'UI.DataField',
                Value : Previous_PAN_References,
                Label : 'Previous PAN References',
            },{
                $Type : 'UI.DataField',
                Value : Split_OrderORNo_of_vendors,
                Label : 'Split Order/No of vendors',
            },{
                $Type : 'UI.DataField',
                Value : SOP_Type,
                Label : 'SOP Type',
            },{
                $Type : 'UI.DataField',
                Value : Asset_Type,
                Label : 'Asset Type',
            },{
                $Type : 'UI.DataField',
                Value : Nature_of_Transaction,
                Label : 'Nature of Transaction',
            },{
                $Type : 'UI.DataField',
                Value : Order_Location_OR_Plant,
                Label : 'Order Location / Plant',
            },{
                $Type : 'UI.DataField',
                Value : Base_line_spend,
                Label : 'Base line spend',
            },{
                $Type : 'UI.DataField',
                Value : Project_CurrencyORBase_Currency,
                Label : 'Project Currency/Base Currency',
            },{
                $Type : 'UI.DataField',
                Value : Order_CurrencyORBid_currency,
                Label : 'Order Currency/Bid currency',
            },{
                $Type : 'UI.DataField',
                Value : Final_proposed_Value,
                Label : 'Final proposed Value',
            },{
                $Type : 'UI.DataField',
                Value : Order_Value_BKTIn_Project_CurrencyBKT,
                Label : 'Order Value (In Project Currency)',
            },{
                $Type : 'UI.DataField',
                Value : Order_Value_BKTIn_Bid_CurrencyBKT,
                Label : 'Order Value (In Bid Currency)',
            },{
                $Type : 'UI.DataField',
                Value : Savings_achieved_btw_initial_and_final_quote,
                Label : 'Savings achieved btw initial and final quote',
            },{
                $Type : 'UI.DataField',
                Value : Savings_against_base_line_spend_of_RFP,
                Label : 'Savings against base line spend of RFP',
            },{
                $Type : 'UI.DataField',
                Value : Number_of_Vendors_Shortlisted_for_RFP,
                Label : 'Number of Vendors Shortlisted for RFP',
            },{
                $Type : 'UI.DataField',
                Value : Number_of_Vendors_Technically_Qualified,
                Label : 'Number of Vendors Technically Qualified',
            },{
                $Type : 'UI.DataField',
                Value : Required_at_Site_Date,
                Label : 'Required at Site Date',
            },{
                $Type : 'UI.DataField',
                Value : RFP_Number,
                Label : 'RFP Number',
            },{
                $Type : 'UI.DataField',
                Value : RFP_Publish_Date,
                Label : 'RFP Publish Date',
            },{
                $Type : 'UI.DataField',
                Value : Time_Taken_for_FinalizationDASHIn_DAYS,
                Label : 'Time Taken for Finalization-In DAYS',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Final_Quotation_Date,
                Label : 'Vendor Final Quotation_Date',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Final_Quotation_Amount,
                Label : 'Vendor Final Quotation Amount',
            },],
    }
);
annotate service.vendor_data with @(
    UI.LineItem #VendorData : [
        {
            $Type : 'UI.DataField',
            Value : Vendor_Name,
            Label : 'Vendor Name',
        },{
            $Type : 'UI.DataField',
            Value : Proposed_Vendor_Code,
            Label : 'Proposed Vendor Code',
        },{
            $Type : 'UI.DataField',
            Value : Original_quote,
            Label : 'Original quote',
        },{
            $Type : 'UI.DataField',
            Value : Final_Quote,
            Label : 'Final Quote',
        },]
);
annotate service.attachments with @(
    UI.LineItem #ATTACHMENTSINTERNALTOPANFORAPPROVERS : [
        {
            $Type : 'UI.DataField',
            Value : fileName,
            Label : 'fileName',
        },{
            $Type : 'UI.DataField',
            Value : content,
            Label : 'content',
        },{
            $Type : 'UI.DataField',
            Value : mediaType,
            Label : 'mediaType',
        },]
);
annotate service.tab1 with @(
    UI.FieldGroup #Justification : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : justification,
                Label : 'Justification',
            },],
    }
);
annotate service.tab1 with {
    justification @UI.MultiLineText : true
};
annotate service.WORKFLOW_HISTORY with @(
    UI.LineItem #WORKFLOWHISTORY : [
        {
            $Type : 'UI.DataField',
            Value : Title,
            Label : 'Title',
        },{
            $Type : 'UI.DataField',
            Value : Employee_ID,
            Label : 'Employee ID',
        },{
            $Type : 'UI.DataField',
            Value : Employee_Name,
            Label : 'Employee Name',
        },{
            $Type : 'UI.DataField',
            Value : Notification_Status,
            Label : 'Notification Status',
        },{
            $Type : 'UI.DataField',
            Value : Result,
            Label : 'Result',
        },{
            $Type : 'UI.DataField',
            Value : Begin_DateAND_Time,
            Label : 'Begin Date& Time',
        },{
            $Type : 'UI.DataField',
            Value : End_DateAND_Time,
            Label : 'End Date& Time',
        },{
            $Type : 'UI.DataField',
            Value : Days_Taken,
            Label : 'Days Taken',
        },{
            $Type : 'UI.DataField',
            Value : Remarks,
            Label : 'Remarks',
        },]
);
annotate service.vendor_data with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Vendor Response',
            ID : 'VendorResponse',
            Target : '@UI.FieldGroup#VendorResponse',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Terms and Conditions Compared with',
            ID : 'TermsandConditionsComparedwith',
            Target : '@UI.FieldGroup#TermsandConditionsComparedwith',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PAYMENT TERM DETAILS',
            ID : 'PAYMENT_TERM_DETAILS',
            Target : 'vendtoptd/@UI.LineItem#PAYMENT_TERM_DETAILS',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'OTHERS TERMS AND CONDITIONS',
            ID : 'OTHERSTERMSANDCONDITIONS',
            Target : '@UI.FieldGroup#OTHERSTERMSANDCONDITIONS',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PRICE DETAILS',
            ID : 'PRICEDETAILS',
            Target : '@UI.FieldGroup#PRICEDETAILS',
        },
    ],
    UI.FieldGroup #VendorResponse : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : vendtovenr.Proposed_Vendor_Name,
                Label : 'Proposed Vendor Name',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Supplier_Origin_State,
                Label : 'Supplier Origin State',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Destination_State_BKTShipDASHto_LocationBKT,
                Label : 'Destination State (Ship-to Location)',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_GST_Number,
                Label : 'Vendor GST Number',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_CE_Score,
                Label : 'Vendor CE Score',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_CE_Date,
                Label : 'Vendor CE Date',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_PE_Score,
                Label : 'Vendor PE Score',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_PE_Date,
                Label : 'Vendor PE Date',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_Contact_PersonDASH1,
                Label : 'Vendor Contact PersonDASH1',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_Contact_PersonDASH2,
                Label : 'Vendor Contact PersonDASH2',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Technical_Committee_who_cleared_the_proposal,
                Label : 'Technical Committee who cleared the proposal',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Commercial_Committee_who_cleared_the_proposal,
                Label : 'Commercial Committee who cleared the proposal',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Vendor_References_to_be_displayed_in_Order,
                Label : 'Vendor References to be displayed in Order',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Shortlisted_Vendors_Response_summary,
                Label : 'Shortlisted Vendors Response summary',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Incoterms,
                Label : 'Incoterms',
            },],
    }
);
annotate service.vendor_data with @(
    UI.FieldGroup #TermsandConditionsComparedwith : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : vendtovenr.Number_of_Back_to_back_Terms_agreed_with_Vendor_as_per_GPC_OR_GCC,
                Label : 'Number of Back to back Terms agreed with Vendor as per GPC / GCC',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Details_of_deviated_or_better_terms_agreed_with_the_Vendor,
                Label : 'Details of deviated or better terms agreed with the Vendor',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Market_Scenario_and_Demand,
                Label : 'Market Scenario and Demand',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Companys_Position_and_Market_dynamics_of_this_purchase,
                Label : 'Companys Position and Market dynamics of this purchase',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Should_Be_Cost_estimated,
                Label : 'Should Be Cost estimated',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Highlights_of_this_proposal_and_Price_Justification_for_this_proposal,
                Label : 'Highlights of this proposal and Price Justification for this proposal',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Price_Escalation_Agreed_if_any,
                Label : 'Price Escalation Agreed if any',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Particulars_of_any_Free_Service_OR_Supply_Guarantees_OR_Warrant_yfrom_Vendor,
                Label : 'Particulars of any Free Service / Supply Guarantees / Warrant yfrom Vendor',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Transportation,
                Label : 'Transportation',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Logistics_Cost,
                Label : 'Logistics Cost',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Delivery_Schedule,
                Label : 'Delivery Schedule',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Tax_Details,
                Label : 'Tax Details',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Additional_Remarks,
                Label : 'Additional Remarks',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.ABG,
                Label : 'ABG',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.ABG_Value,
                Label : 'ABG Value',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.CPBG,
                Label : 'CPBG',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.CPBG_Value,
                Label : 'CPBG Value',
            },],
    }
);
annotate service.PAYMENT_TERM_DETAILS with @(
    UI.LineItem #PAYMENT_TERM_DETAILS : [
        {
            $Type : 'UI.DataField',
            Value : Payment_Type,
            Label : 'Payment Type',
        },{
            $Type : 'UI.DataField',
            Value : ADVANCE,
            Label : 'ADVANCE',
        },{
            $Type : 'UI.DataField',
            Value : Progress,
            Label : 'Progress',
        },{
            $Type : 'UI.DataField',
            Value : Retention,
            Label : 'Retention',
        },{
            $Type : 'UI.DataField',
            Value : Percentage_Total,
            Label : 'Percentage Total',
        },{
            $Type : 'UI.DataField',
            Value : Mandatory_Documents_OR_Submissions_for_Progress,
            Label : 'Mandatory Documents / Submissions for Progress',
        },{
            $Type : 'UI.DataField',
            Value : To_be_certified_in_Company_by,
            Label : 'To be certified in Company by',
        },{
            $Type : 'UI.DataField',
            Value : Percentage_Payment,
            Label : 'Percentage Payment',
        },]
);
annotate service.vendor_data with @(
    UI.FieldGroup #OTHERSTERMSANDCONDITIONS : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : vendtovenr.Scope_and_Responsibilities,
                Label : 'Scope and Responsibilities',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Commercial_Terms,
                Label : 'Commercial Terms',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Compliance_Terms,
                Label : 'Compliance Terms',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Others,
                Label : 'Others',
            },],
    }
);
annotate service.vendor_data with @(
    UI.FieldGroup #PRICEDETAILS : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : vendtovenr.HSN_OR_SAC_Code,
                Label : 'HSN / SAC Code',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Item_Code,
                Label : 'Item Code',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Item_Short_Description,
                Label : 'Item Short Description',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.UOM,
                Label : 'UOM',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Quantity,
                Label : 'Quantity',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Unit_Price,
                Label : 'Unit Price',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Amount,
                Label : 'Amount',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Indian_Tax_PER,
                Label : 'Indian Tax PER',
            },{
                $Type : 'UI.DataField',
                Value : vendtovenr.Quantity_Over_Delivery_Tolerance,
                Label : 'Quantity Over Delivery Tolerance',
            },],
    }
);
annotate service.tab1 with {
    PAN_Number @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    SBG @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    SBU @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    BUORPurchasing_Group @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Plant_Code @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    PR_NumberBKTsBKT @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Split_OrderORNo_of_vendors @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Base_line_spend @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Project_CurrencyORBase_Currency @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Order_CurrencyORBid_currency @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Final_proposed_Value @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Order_Value_BKTIn_Project_CurrencyBKT @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Order_Value_BKTIn_Bid_CurrencyBKT @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Savings_achieved_btw_initial_and_final_quote @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Savings_against_base_line_spend_of_RFP @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Number_of_Vendors_Shortlisted_for_RFP @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    RFP_Number @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    RFP_Publish_Date @Common.FieldControl : #ReadOnly
};
annotate service.tab1 with {
    Vendor_Final_Quotation_Amount @Common.FieldControl : #ReadOnly
};
annotate service.vendor_data with {
    Vendor_Name @Common.FieldControl : #ReadOnly
};
annotate service.vendor_data with {
    Proposed_Vendor_Code @Common.FieldControl : #ReadOnly
};
annotate service.vendor_data with {
    Original_quote @Common.FieldControl : #ReadOnly
};
annotate service.vendor_data with {
    Final_Quote @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Proposed_Vendor_Name @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Destination_State_BKTShipDASHto_LocationBKT @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Vendor_GST_Number @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Vendor_CE_Score @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Vendor_CE_Date @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Technical_Committee_who_cleared_the_proposal @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Shortlisted_Vendors_Response_summary @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Incoterms @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    ABG @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    CPBG @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    Payment_Type @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    ADVANCE @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    Progress @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    Retention @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    Percentage_Total @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    Percentage_Payment @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Scope_and_Responsibilities @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Commercial_Terms @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Compliance_Terms @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Others @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    HSN_OR_SAC_Code @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Item_Code @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Item_Short_Description @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    UOM @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Quantity @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Unit_Price @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Amount @Common.FieldControl : #ReadOnly
};
annotate service.Fvendor_responseoo with {
    Indian_Tax_PER @Common.FieldControl : #ReadOnly
};
annotate service.PAYMENT_TERM_DETAILS with {
    To_be_certified_in_Company_by @Common.FieldControl : #Mandatory
};
annotate service.PAYMENT_TERM_DETAILS with {
    Mandatory_Documents_OR_Submissions_for_Progress @Common.FieldControl : #Mandatory
};
annotate service.Fvendor_responseoo with {
    Delivery_Schedule @Common.FieldControl : #Mandatory
};
annotate service.Fvendor_responseoo with {
    Vendor_Contact_PersonDASH1 @Common.FieldControl : #Mandatory
};
annotate service.tab1 with {
    Project_Description @Common.FieldControl : #Mandatory
};
annotate service.tab1 with {
    Subject_of_ProposalOROrder @Common.FieldControl : #Mandatory
};
annotate service.tab1 with {
    justification @Common.FieldControl : #Optional
};
annotate service.tab2 with @(
    UI.LineItem #_ : [
        {
            $Type : 'UI.DataField',
            Value : First_Publish_Data_DASH_same_as_sr_no_28,
            Label : 'First Publish Data - same as sr no 28',
        },{
            $Type : 'UI.DataField',
            Value : Last_Publish_data_before_RA,
            Label : 'Last Publish data before RA',
        },{
            $Type : 'UI.DataField',
            Value : RA_Data,
            Label : 'RA Data',
        },{
            $Type : 'UI.DataField',
            Value : Techanical_appropval_data,
            Label : 'Techanical appropval data',
        },{
            $Type : 'UI.DataField',
            Value : Client_approval_data,
            Label : 'Client approval data',
        },]
);
annotate service.attachments with @(
    UI.LineItem #attachments : [
        {
            $Type : 'UI.DataField',
            Value : fileName,
            Label : 'fileName',
        },
        {
            $Type : 'UI.DataField',
            Value : content,
            Label : 'content',
        },]
);
