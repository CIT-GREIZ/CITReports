report 50300 "CIT - Sales - Invoice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportLayouts/SalesInvoice.rdlc';
    Caption = 'CIT - Sales - Invoice';
    EnableHyperlinks = true;
    Permissions = TableData "Sales Shipment Buffer" = rimd;
    PreviewMode = PrintLayout;
    ObsoleteReason = 'Replaced with report 1306 Standard Sales - Invoice';
    ObsoleteState = Pending;
    ObsoleteTag = '15.2';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Invoice';

            //CIT Begin
            column(TotalwithVATCIT; TotalwithVATCIT) { }
            column(CurrencySymbol; CurrencySymbol) { }
            column(CompanyPicture; CompanyInfo.Picture)
            {
            }
            /*column(CompanyPicture2; CompanyInfo.CIT_CompanyPicture2)
            {
            }*/
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLbl; SalesInvoiceLbl)
            {
            }
            column(NumberDocumentbl; NumberDocumentbl)
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(DocumentNo_Lbl; InvNoLbl)
            {
            }
            column(CompanyAddress1; CompanyAddr[1])
            {
            }
            column(CompanyAddress2; CompanyAddr[2])
            {
            }
            column(CompanyAddress3; CompanyAddr[3])
            {
            }
            column(CompanyAddress4; CompanyAddr[4])
            {
            }
            column(CompanyAddress5; CompanyAddr[5])
            {
            }
            column(CompanyAddress6; CompanyAddr[6])
            {
            }
            column(CompanyAddress7; CompanyAddr[7])
            {
            }
            column(CompanyAddress8; CompanyAddr[8])
            {
            }
            column(ShipToAddress1; ShipToAddr[1])
            {
            }
            column(ShipToAddress2; ShipToAddr[2])
            {
            }
            column(ShipToAddress3; ShipToAddr[3])
            {
            }
            column(ShipToAddress4; ShipToAddr[4])
            {
            }
            column(ShipToAddress5; ShipToAddr[5])
            {
            }
            column(ShipToAddress6; ShipToAddr[6])
            {
            }
            column(ShipToAddress7; ShipToAddr[7])
            {
            }
            column(ShipToAddress8; ShipToAddr[8])
            {
            }
            column(NumberLbl; NumberLbl)
            {
            }
            column(Date_Lbl; Date_Lbl)
            {
            }
            column(Subject_Lbl; Subject_Lbl)
            {
            }
            column(OfferNumber; JobNumber)
            {
            }
            column(OrderDate; "Order Date")
            {
            }
            column(From_Lbl; From_Lbl)
            {
            }

            column(YourOrderNumberLbl; YourOrderNumberLbl)
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(YourReference_Lbl; FieldCaption("Your Reference"))
            {
            }
            column(OrderDateLbl; OrderDateLbl)
            {
            }
            column(YourSignLbl; YourSignLbl)
            {
            }
            column(ContactName; ContactName)
            {
            }
            column(SupplierLbl; SupplierLbl)
            {
            }
            column(OurAccountNumber; OurAccountNumber)
            {
            }
            column(DeliveryDataLbl; DeliveryDataLbl)
            {
            }
            column(DeliveryCompany; DeliveryCompany)
            {
            }
            column(DeliveryNoteLbl; DeliveryNoteLbl)
            {
            }
            column(DeliveryNoteNumber; DeliveryNoteNumber)
            {
            }
            column(SalesConfirmText; SalesConfirmText)
            {
            }

            //under vat
            column(PayLbl; PayLbl)
            {
            }
            column(NetPayUntilLbl; NetPayUntilLbl)
            {
            }
            column(SkontoLbl; SkontoLbl)
            {
            }
            column(InvoiceDueDate; "Due Date")
            {
            }
            column(PaymentDiscountPercent; "Payment Discount %")
            {
            }
            column(InvoiceText1; ReportParam.CIT_SalesInvoice_Text1) { }
            column(InvoiceText2; ReportParam.CIT_SalesInvoice_Text2) { }
            column(InvoiceText3; ReportParam.CIT_SalesInvoice_Text3) { }




            //Footer
            column(BankConnectionLbl; BankConnectionLbl)
            {
            }
            column(CompanyBankName; CompanyInfo."Bank Name")
            {
            }
            column(CompanyBankName_Lbl; CompanyInfoBankNameLbl)
            {
            }
            column(CompanyVATRegNo; CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(VATRegistrationNumberLbl; VATRegistrationNumberLbl)
            {
            }
            column(PhoneNumberlbl; PhoneNumberlbl)
            {
            }
            column(CompanyPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(SwiftLbl; SwiftLbl)
            {
            }
            column(CompanySWIFT; CompanyInfo."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl; CompanyInfo.FieldCaption("SWIFT Code"))
            {
            }
            column(DistrictCourtLbl; DistrictCourtLbl)
            {
            }
            column(DistrictCourt; CompanyInfo.CIT_DistrictCourt)
            {
            }
            column(EMailLbl; EMailLbl)
            {
            }
            column(CompanyEMail; CompanyInfo."E-Mail")
            {
            }
            column(CompanyIBAN; CompanyInfo.IBAN)
            {
            }
            column(SecondIBAN; CompanyInfo.CIT_SecondIBAN)
            {
            }
            column(CompanyIBANEUR_Lbl; IBANEURLbl)
            {
            }
            column(CompanyIBANUSD_Lbl; IBANUSDLbl)
            {
            }
            column(RegisterNoLbl; CompanyInfo.FieldCaption("CIT_RegisterNo."))
            {
            }
            column(RegisterNo; CompanyInfo."CIT_RegisterNo.")
            {
            }
            column(WebLbl; WebLbl)
            {
            }
            column(CompanyHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompanyCustomMangingDirector_Caption; CompanyInfo.FieldCaption(CIT_ManagingDirector))
            {
            }
            column(CompanyCustomMangingDirector; CompanyInfo.CIT_ManagingDirector)
            {
            }

            column(FieldPageNo; ReportParam.FieldPageNo)
            {
            }
            column(FieldHeadline; ReportParam.FieldHeadline)
            {
            }
            column(Field1; ReportParam.Field1)
            {
            }

            column(Field2; ReportParam.Field2)
            {
            }

            column(Field3; ReportParam.Field3)
            {
            }
            column(Field4; ReportParam.Field4)
            {
            }

            column(Field5; ReportParam.Field5)
            {
            }
            column(FieldVAT1; ReportParam.FieldVAT1)
            {
            }
            column(FieldVAT2; ReportParam.FieldVAT2)
            {
            }
            column(FieldVAT3; ReportParam.FieldVAT3)
            {
            }
            column(FieldInvoiceText1; ReportParam.FieldInvoiceText1)
            {
            }
            column(FieldInvoiceText2; ReportParam.FieldInvoiceText2)
            {
            }
            column(FieldInvoiceText3; ReportParam.FieldInvoiceText3)
            {
            }
            column(FieldInvoiceText4; ReportParam.FieldInvoiceText4)
            {
            }
            // CIT End
            column(No_SalesInvHdr; "No.")
            {
            }
            column(EMailCaption; EMailCaptionLbl)
            {
            }
            column(InvDiscountAmountCaption; InvDiscountAmountCaptionLbl)
            {
            }
            column(VATCaption; VATCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmountCaption; VATAmountCaptionLbl)
            {
            }
            column(VATIdentifierCaption; VATIdentifierCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(PaymentTermsCaption; PaymentTermsCaptionLbl)
            {
            }
            column(ShipmentMethodCaption; ShipmentMethodCaptionLbl)
            {
            }
            column(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(DocumentCaptionCopyText; StrSubstNo(DocumentCaption, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(BillToCustNo_SalesInvHdr; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; Format("Sales Invoice Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHeader; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader; Format("Sales Invoice Header"."Due Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHeader; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesInvoiceHdr; Format("Sales Invoice Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; Format("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(CompanyInfoRegNo; CompanyInfo.GetRegistrationNumber)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccountNoCaption; BankAccountNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(RegNoCaption; CompanyInfo.GetRegistrationNumberLbl)
                    {
                    }
                    column(BillToCustNo_SalesInvHdrCaption; "Sales Invoice Header".FieldCaption("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Invoice Header".FieldCaption("Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_Integer; Number)
                        {
                        }
                        column(DimensionsCaption; DimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FindSet then
                                    CurrReport.Break();
                            end else
                                if not Continue then
                                    CurrReport.Break();

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until DimSetEntry1.Next = 0;


                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break();
                        end;
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");

                        //CIT Begin
                        column(Pos_LbL; Pos_Lbl)
                        {
                        }
                        column(ItemNumberLbl; ItemNumberLbl)
                        {
                        }
                        column(ItemLbl; ItemLbl)
                        {
                        }
                        column(Quantity_Line_Lbl; Quantity_Line_Lbl)
                        {
                        }
                        column(UnitOfMeasure_Lbl; UnitofMeasureLbl)
                        {
                        }
                        column(UnitPrice_Lbl; UnitPrice_Lbl)
                        {
                        }
                        column(TotalPriceLineLbl; TotalPriceLineLbl)
                        {
                        }
                        column(PosNo; PosNo)
                        {
                        }
                        column(Quantity_Line; FormattedQuantity)
                        {
                        }
                        column(UnitOfMeasure; "Unit of Measure")
                        {
                        }
                        column(UnitPrice; "Unit Price")
                        {
                            // AutoFormatExpression = GetCurrencyCode();
                            // AutoFormatType = 2;
                        }

                        column(LineAmount_Line; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(Note_Description; Description)
                        {

                        }
                        column(Note_Line_No_; Note_Line_No_)
                        {

                        }
                        column(ItemNo_Line; "No.")
                        {
                        }
                        column(Description_Line; Description)
                        {
                        }

                        //VAT 
                        column(TotalWithoutTaxLbl; TotalWithoutTaxLbl)
                        {
                        }
                        column(TotalWithTaxLbl; TotalWithTaxLbl)
                        {
                        }
                        column(VATPercentageLbl; VATPercentageLbl)
                        {
                        }
                        //CIT End
                        column(LineAmt_SalesInvoiceLine; "Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine; Description)
                        {
                        }
                        column(No_SalesInvoiceLine; "No.")
                        {
                        }
                        column(Quantity_SalesInvoiceLine; Quantity)
                        {
                        }
                        column(UOM_SalesInvoiceLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesInvoiceLine; "Line Discount %")
                        {
                        }
                        column(VATIdent_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate; Format("Shipment Date"))
                        {
                        }
                        column(SalesLineType; Format("Sales Invoice Line".Type))
                        {
                        }
                        column(InvDiscountAmount; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmt; TotalInvoiceDiscountAmt)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amount_SalesInvoiceLine; Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmountIncludingVATAmount; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_SalesInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscountOnVAT; TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(LineNo_SalesInvoiceLine; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption; DiscountCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PaymentDiscVATCaption; PaymentDiscVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvLineCaption; FieldCaption(Description))
                        {
                        }
                        column(No_SalesInvoiceLineCaption; FieldCaption("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption; FieldCaption(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption; FieldCaption("Unit of Measure"))
                        {
                        }
                        column(VATIdent_SalesInvLineCaption; FieldCaption("VAT Identifier"))
                        {
                        }
                        column(IsLineWithTotals; LineNoWithTotal = "Line No.")
                        {
                        }
                        dataitem("Sales Shipment Buffer"; "Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShpBufferPostingDate; Format(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(SalesShpBufferQuantity; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then
                                    SalesShipmentBuffer.Find('-')
                                else
                                    SalesShipmentBuffer.Next;
                            end;

                            trigger OnPreDataItem()
                            begin
                                SalesShipmentBuffer.SetRange("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SetRange("Line No.", "Sales Invoice Line"."Line No.");

                                SetRange(Number, 1, SalesShipmentBuffer.Count);
                            end;
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_DimensionLoop2; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                    if not DimSetEntry2.FindSet then
                                        CurrReport.Break();
                                end else
                                    if not Continue then
                                        CurrReport.Break();

                                Clear(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := StrSubstNo('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until DimSetEntry2.Next = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break();

                                DimSetEntry2.SetRange("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; "Integer")
                        {
                            column(TempPostedAsmLineUOMCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineVariantCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord()
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                if Number = 1 then
                                    TempPostedAsmLine.FindSet
                                else
                                    TempPostedAsmLine.Next;

                                if ItemTranslation.Get(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Sales Invoice Header"."Language Code")
                                then
                                    TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem()
                            var
                                PostedAssemblyLine: Record "Posted Assembly Line";
                                DummyValueEntry: Record "Value Entry";
                            begin
                                Clear(TempPostedAsmLine);
                                if not DisplayAssemblyInformation then
                                    CurrReport.Break();
                                PostedAssemblyLine.GetAssemblyLinesForDocument(
                                  TempPostedAsmLine, DummyValueEntry."Document Type"::"Sales Invoice",
                                  "Sales Invoice Line"."Document No.", "Sales Invoice Line"."Line No.");
                                Clear(TempPostedAsmLine);
                                SetRange(Number, 1, TempPostedAsmLine.Count);
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if (Type = Type::Item) then begin
                                Counter := Counter + 1;
                                PosNo := Counter;
                            end;
                            InitializeShipmentBuffer;
                            if (Type = Type::"G/L Account") and (not ShowInternalInfo) then
                                "No." := '';

                            VATAmountLine.Init();
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            if "Allow Invoice Disc." then
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;
                            CalcVATAmountLineLCY(
                              "Sales Invoice Header", VATAmountLine, TempVATAmountLineLCY,
                              VATBaseRemainderAfterRoundingLCY, AmtInclVATRemainderAfterRoundingLCY);

                            TotalSubTotal += "Line Amount";
                            TotalInvoiceDiscountAmt -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalwithVATCIT := TotalAmountInclVAT;
                            TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                            //CIT Begin

                            FormatDocument.SetSalesInvoiceLine("Sales Invoice Line", FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);
                            JobNumber := DELSTR("Sales Invoice Header"."Posting Description", 1, 8);
                            //CIT End
                        end;

                        trigger OnPreDataItem()
                        begin
                            PosNo := 0;
                            VATAmountLine.DeleteAll();
                            TempVATAmountLineLCY.DeleteAll();
                            VATBaseRemainderAfterRoundingLCY := 0;
                            AmtInclVATRemainderAfterRoundingLCY := 0;
                            SalesShipmentBuffer.Reset();
                            SalesShipmentBuffer.DeleteAll();
                            FirstValueEntryNo := 0;
                            MoreLines := Find('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                                MoreLines := Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break();
                            LineNoWithTotal := "Line No.";
                            SetRange("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmntSpecificCaption; VATAmntSpecificCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmountCaption; LineAmountCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SetRange(Number, 1, VATAmountLine.Count);
                        end;
                    }
                    dataitem(VATClauseEntryCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmountCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            if not VATClause.Get(VATAmountLine."VAT Clause Code") then
                                CurrReport.Skip();
                            VATClause.GetDescription("Sales Invoice Header");
                        end;

                        trigger OnPreDataItem()
                        begin
                            Clear(VATClause);
                            SetRange(Number, 1, VATAmountLine.Count);
                        end;
                    }
                    dataitem(VatCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT_VatCounterLCY; TempVATAmountLineLCY."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier_VatCounterLCY; TempVATAmountLineLCY."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            TempVATAmountLineLCY.GetLine(Number);
                            VALVATBaseLCY := TempVATAmountLineLCY."VAT Base";
                            VALVATAmountLCY := TempVATAmountLineLCY."Amount Including VAT" - TempVATAmountLineLCY."VAT Base";
                        end;

                        trigger OnPreDataItem()
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Sales Invoice Header"."Currency Code" = '')
                            then
                                CurrReport.Break();

                            SetRange(Number, 1, VATAmountLine.Count);
                            Clear(VALVATBaseLCY);
                            Clear(VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text007 + Text008
                            else
                                VALSpecLCYHeader := Text007 + Format(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate := Round(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := StrSubstNo(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(PaymentReportingArgument; "Payment Reporting Argument")
                    {
                        DataItemTableView = SORTING(Key);
                        UseTemporary = true;
                        column(PaymentServiceLogo; Logo)
                        {
                        }
                        column(PaymentServiceURLText; "URL Caption")
                        {
                        }
                        column(PaymentServiceURL; GetTargetURL)
                        {
                        }

                        trigger OnPreDataItem()
                        var
                            PaymentServiceSetup: Record "Payment Service Setup";
                        begin
                            PaymentServiceSetup.CreateReportingArgs(PaymentReportingArgument, "Sales Invoice Header");
                            if IsEmpty then
                                CurrReport.Break();
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SellToCustNo_SalesInvHdr; "Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShipToAddressCaption; ShipToAddressCaptionLbl)
                        {
                        }
                        column(SellToCustNo_SalesInvHdrCaption; "Sales Invoice Header".FieldCaption("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                                CurrReport.Break();
                        end;
                    }
                    dataitem(LineFee; "Integer")
                    {
                        DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number = FILTER(1 ..));
                        column(LineFeeCaptionLbl; TempLineFeeNoteOnReportHist.ReportText)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if not DisplayAdditionalFeeNote then
                                CurrReport.Break();

                            if Number = 1 then begin
                                if not TempLineFeeNoteOnReportHist.FindSet then
                                    CurrReport.Break
                            end else
                                if TempLineFeeNoteOnReportHist.Next = 0 then
                                    CurrReport.Break();
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText;
                        OutputNo += 1;
                    end;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmt := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscountOnVAT := 0;

                    //CIT Begin Test

                    OurAccountNumber := GetOurOrderAccountNumber("Sales Invoice Header");
                    ReportParam.FindFirst();
                    //CIT End Test
                end;

                trigger OnPostDataItem()
                begin
                    if not IsReportInPreviewMode then
                        CODEUNIT.Run(CODEUNIT::"Sales Inv.-Printed", "Sales Invoice Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + Cust."Invoice Copies" + 1;
                    if NoOfLoops <= 0 then
                        NoOfLoops := 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            var
                Handled: Boolean;
                Currency: Record Currency;
            begin
                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");

                FormatAddressFields("Sales Invoice Header");
                FormatDocumentFields("Sales Invoice Header");

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);

                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");

                GetLineFeeNoteOnReportHist("No.");

                OnAfterGetRecordSalesInvoiceHeader("Sales Invoice Header");
                //   OnGetReferenceText("Sales Invoice Header", ReferenceText, Handled);

                //CIT Begin
                ContactName := GetContactName("Sales Invoice Header");
                DeliveryCompany := GetDeliveryCompany("Sales Invoice Header");
                DeliveryNoteNumber := GetDeliveryNoteNumber("Sales Invoice Header");



                if "Currency Code" <> '' then begin
                    Currency.SetRange(Code, "Currency Code");
                    if Currency.FindFirst() then
                        CurrencySymbol := Currency.Symbol;
                end else begin
                    CurrencySymbol := '???';
                end;
                //CIT End
            end;

            trigger OnPostDataItem()
            begin
                OnAfterPostDataItem("Sales Invoice Header");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
                    }
                    field(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Additional Fee Note';
                        ToolTip = 'Specifies that any notes about additional fees are included on the document.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.Get();
        SalesSetup.Get();
        //CIT Begin
        CompanyInfo.SetAutoCalcFields(Picture);
        CompanyInfo.SetAutoCalcFields(CIT_CompanyPicture2);
        //CIT End
        CompanyInfo.Get();
        CompanyInfo.VerifyAndSetPaymentInfo;
        FormatDocument.SetLogoPosition(SalesSetup."Logo Position on Documents", CompanyInfo1, CompanyInfo2, CompanyInfo3);

        OnAfterInitReport;
    end;

    trigger OnPostReport()
    begin
        if LogInteraction and not IsReportInPreviewMode then
            if "Sales Invoice Header".FindSet then
                repeat
                    if "Sales Invoice Header"."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          SegManagement.SalesInvoiceInterDocType, "Sales Invoice Header"."No.", 0, 0, DATABASE::Contact,
                          "Sales Invoice Header"."Bill-to Contact No.", "Sales Invoice Header"."Salesperson Code",
                          "Sales Invoice Header"."Campaign No.", "Sales Invoice Header"."Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          SegManagement.SalesInvoiceInterDocType, "Sales Invoice Header"."No.", 0, 0, DATABASE::Customer,
                          "Sales Invoice Header"."Bill-to Customer No.", "Sales Invoice Header"."Salesperson Code",
                          "Sales Invoice Header"."Campaign No.", "Sales Invoice Header"."Posting Description", '');
                until "Sales Invoice Header".Next = 0;
    end;

    trigger OnPreReport()
    begin
        if not CurrReport.UseRequestPage then
            InitLogInteraction;
    end;

    var
        //CIT Begin
        PageLbl: Label 'Page';
        SalesInvoiceLbl: Label 'Invoice';
        NumberDocumentbl: Label 'No.: ';
        InvNoLbl: Label 'Invoice No.';
        NumberLbl: Label 'No.:';
        Date_Lbl: Label 'Date: ';
        Subject_Lbl: Label 'Subject:';
        From_Lbl: Label 'from: ';
        Pos_Lbl: Label 'Pos.';
        ItemNumberLbl: Label 'No.';
        Quantity_Line_Lbl: Label 'Quantity';
        UnitOfMeasureLbl: Label 'Unit';
        UnitPrice_Lbl: Label 'Price';
        TotalPriceLineLbl: Label 'Total';
        ItemLbl: Label 'Item';
        YourOrderNumberLbl: Label 'Subject:';
        OrderDateLbl: Label 'Order Date:';
        YourSignLbl: Label 'Your Sign:';
        SupplierLbl: Label 'Supplier No:';
        DeliveryDataLbl: Label 'Delivery data:';
        DeliveryNoteLbl: Label 'Delivery Slip No.:';
        SalesConfirmText: Label 'Thank you for your order. We will charge you as follows:';

        //under VAT
        PayLbl: Label 'Payable';
        NetPayUntilLbl: Label 'Net until';
        SkontoLbl: Label 'Discount until';



        //Footer
        WebLbl: Label 'Internet:';
        IBANUSDLbl: Label 'IBAN_USD:'; //'IBAN:';
        IBANEURLbl: Label 'IBAN_EUR:'; //'IBAN:';
        EMailLbl: Label 'E-Mail:';
        DistrictCourtLbl: Label 'District Court';
        SwiftLbl: Label 'BIC';
        PhoneNumberlbl: Label 'Phone';
        VATRegistrationNumberLbl: Label 'VAT.-IDNo.';
        CompanyInfoBankNameLbl: Label 'Bank';
        BankConnectionLbl: Label 'Bank Connection';

        //VAT
        TotalWithoutTaxLbl: Label 'Total without VAT';
        TotalWithTaxLbl: Label 'Total with VAT';
        VATPercentageLbl: Label ' % VAT';

        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        FormattedVATPct: Text;
        JobNumber: Text[1000];
        CurrencySymbol: Text;
        PosNo: Integer;
        Counter: Integer;
        Note_Line_No_: Integer;
        ContactName: Text[100];
        OurAccountNumber: Text[100];
        DeliveryCompany: Text[250];
        DeliveryNoteNumber: Code[20];

        ReportParam: Record ReportParameter;
        TotalwithVATCIT: Decimal;
        //CIT End
        Text004: Label 'Sales - Invoice %1', Comment = '%1 = Document No.';
        PageCaptionCap: Label 'Page %1 of %2';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";

        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        Cust: Record Customer;
        VATAmountLine: Record "VAT Amount Line" temporary;
        TempVATAmountLineLCY: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        VATClause: Record "VAT Clause";
        TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary;
        Language: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        VALExchRate: Text[50];
        Text009: Label 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: Label 'Sales - Prepayment Invoice %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmt: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        PhoneNoCaptionLbl: Label 'Phone No.';
        HomePageCaptionLbl: Label 'Home Page';
        VATRegNoCaptionLbl: Label 'VAT Registration No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankNameCaptionLbl: Label 'Bank';
        BankAccountNoCaptionLbl: Label 'Account No.';
        DueDateCaptionLbl: Label 'Due Date';
        InvoiceNoCaptionLbl: Label 'Invoice No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        DimensionsCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        DiscountCaptionLbl: Label 'Discount %';
        AmountCaptionLbl: Label 'Amount';
        VATClausesCap: Label 'VAT Clause';
        PostedShipmentDateCaptionLbl: Label 'Posted Shipment Date';
        SubtotalCaptionLbl: Label 'Subtotal';
        PaymentDiscVATCaptionLbl: Label 'Payment Discount on VAT';
        ShipmentCaptionLbl: Label 'Shipment';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        VATAmntSpecificCaptionLbl: Label 'VAT Amount Specification';
        InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
        LineAmountCaptionLbl: Label 'Line Amount';
        ShipToAddressCaptionLbl: Label 'Ship-to Address';
        EMailCaptionLbl: Label 'E-Mail';
        InvDiscountAmountCaptionLbl: Label 'Invoice Discount Amount';
        VATCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmountCaptionLbl: Label 'VAT Amount';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        TotalCaptionLbl: Label 'Total';
        PaymentTermsCaptionLbl: Label 'Payment Terms';
        ShipmentMethodCaptionLbl: Label 'Shipment Method';
        DocumentDateCaptionLbl: Label 'Document Date';
        DisplayAdditionalFeeNote: Boolean;
        LineNoWithTotal: Integer;
        VATBaseRemainderAfterRoundingLCY: Decimal;
        AmtInclVATRemainderAfterRoundingLCY: Decimal;

    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure InitializeShipmentBuffer()
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        TempSalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        if "Sales Invoice Line"."Shipment No." <> '' then
            if SalesShipmentHeader.Get("Sales Invoice Line"."Shipment No.") then
                exit;

        if "Sales Invoice Header"."Order No." = '' then
            exit;

        case "Sales Invoice Line".Type of
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
        end;

        SalesShipmentBuffer.Reset();
        SalesShipmentBuffer.SetRange("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SetRange("Line No.", "Sales Invoice Line"."Line No.");
        if SalesShipmentBuffer.Find('-') then begin
            TempSalesShipmentBuffer := SalesShipmentBuffer;
            if SalesShipmentBuffer.Next = 0 then begin
                SalesShipmentBuffer.Get(
                  TempSalesShipmentBuffer."Document No.", TempSalesShipmentBuffer."Line No.", TempSalesShipmentBuffer."Entry No.");
                SalesShipmentBuffer.Delete();
                exit;
            end;
            SalesShipmentBuffer.CalcSums(Quantity);
            if SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity then begin
                SalesShipmentBuffer.DeleteAll();
                exit;
            end;
        end;
    end;

    local procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line")
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SetCurrentKey("Document No.");
        ValueEntry.SetRange("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SetRange("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SetRange("Item Charge No.", '');
        ValueEntry.SetFilter("Entry No.", '%1..', FirstValueEntryNo);
        if ValueEntry.Find('-') then
            repeat
                if ItemLedgerEntry.Get(ValueEntry."Item Ledger Entry No.") then begin
                    if SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 then
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    else
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                end;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            until (ValueEntry.Next = 0) or (TotalQuantity = 0);
    end;

    local procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SetCurrentKey("Order No.");
        SalesInvoiceHeader.SetFilter("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SetRange("Order No.", "Sales Invoice Header"."Order No.");
        if SalesInvoiceHeader.Find('-') then
            repeat
                SalesInvoiceLine2.SetRange("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SetRange("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SetRange(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SetRange("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SetRange("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                if SalesInvoiceLine2.Find('-') then
                    repeat
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    until SalesInvoiceLine2.Next = 0;
            until SalesInvoiceHeader.Next = 0;

        SalesShipmentLine.SetCurrentKey("Order No.", "Order Line No.");
        SalesShipmentLine.SetRange("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SetRange("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SetRange("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SetRange(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SetRange("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SetRange("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SetFilter(Quantity, '<>%1', 0);

        if SalesShipmentLine.Find('-') then
            repeat
                if "Sales Invoice Header"."Get Shipment Used" then
                    CorrectShipment(SalesShipmentLine);
                if Abs(SalesShipmentLine.Quantity) <= Abs(TotalQuantity - SalesInvoiceLine.Quantity) then
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                else begin
                    if Abs(SalesShipmentLine.Quantity) > Abs(TotalQuantity) then
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    if SalesShipmentHeader.Get(SalesShipmentLine."Document No.") then
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                end;
            until (SalesShipmentLine.Next = 0) or (TotalQuantity = 0);
    end;

    local procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SetCurrentKey("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SetRange("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SetRange("Shipment Line No.", SalesShipmentLine."Line No.");
        if SalesInvoiceLine.Find('-') then
            repeat
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            until SalesInvoiceLine.Next = 0;
    end;

    local procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SetRange("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SetRange("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SetRange("Posting Date", PostingDate);
        if SalesShipmentBuffer.Find('-') then begin
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.Modify();
            exit;
        end;

        with SalesShipmentBuffer do begin
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            Insert;
            NextEntryNo := NextEntryNo + 1
        end;
    end;

    local procedure DocumentCaption(): Text[250]
    var
        DocCaption: Text;
    begin
        OnBeforeGetDocumentCaption("Sales Invoice Header", DocCaption);
        if DocCaption <> '' then
            exit(DocCaption);
        if "Sales Invoice Header"."Prepayment Invoice" then
            exit(Text010);
        exit(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure FormatDocumentFields(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        with SalesInvoiceHeader do begin
            FormatDocument.SetTotalLabels(GetCurrencySymbol, TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetSalesPerson(SalesPurchPerson, "Salesperson Code", SalesPersonText);
            FormatDocument.SetPaymentTerms(PaymentTerms, "Payment Terms Code", "Language Code");
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");

            OrderNoText := FormatDocument.SetText("Order No." <> '', FieldCaption("Order No."));
            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FieldCaption("Your Reference"));
            VATNoText := FormatDocument.SetText("VAT Registration No." <> '', FieldCaption("VAT Registration No."));
        end;
    end;
    //CIT Begin
    procedure GetContactName(SalesInvoiceHeader: Record "Sales Invoice Header"): Text[100]
    var
        ContactLocal: Record Contact;
    begin
        ContactLocal.SetFilter("No.", SalesInvoiceHeader."Bill-to Contact No.");
        if ContactLocal.FindFirst() then
            exit(ContactLocal.Name)
        else begin
            exit('')
        end;
    end;

    local procedure GetOurOrderAccountNumber(SalesInvoiceHeader: Record "Sales Invoice Header"): Text[20]
    var
        CustomerLocal: Record Customer;
    begin
        CustomerLocal.setFilter("No.", SalesInvoiceHeader."Sell-to Customer No.");
        if CustomerLocal.find('-') then
            exit(CustomerLocal."Our Account No.")
        else begin
            exit('')
        end;
    end;

    procedure GetDeliveryCompany(SalesInvoiceHeader: Record "Sales Invoice Header"): Text[250]
    var
        DeliveryDataLocal: Text[250];
        CRLF: Text[2];
        TypeHelper: Codeunit "Type Helper";
        ShipmentMethodeCode: Code[30];
        ShipmentMethodLocal: Record "Shipment Method";
        MethodDescription: Text[100];
        DelimiterLocalLbl: Label ' ; ';
        ColonLocalLbl: Label ' : ';
    begin
        CRLF := TypeHelper.CRLFSeparator();
        ShipmentMethodLocal.SetFilter(Code, SalesInvoiceHeader."Shipment Method Code");
        if ShipmentMethodLocal.find('-') then
            MethodDescription := ShipmentMethodLocal.Description
        else begin
            MethodDescription := '';
        end;
        DeliveryDataLocal := SalesInvoiceHeader."Ship-to Name";
        exit(DeliveryDataLocal);
    end;

    local procedure GetDeliveryNoteNumber(SalesInvoiceHeader: Record "Sales Invoice Header"): Code[20]
    var
        DeliveryNoteNumberLocal: Code[20];
        SalesShipmentHeaderLocal: Record "Sales Shipment Header";
    begin
        SalesShipmentHeaderLocal.SetRange("Order No.", SalesInvoiceHeader."Order No.");
        if (SalesShipmentHeaderLocal.FindFirst()) then begin
            DeliveryNoteNumberLocal := SalesShipmentHeaderLocal."No.";
        end;
        exit(DeliveryNoteNumberLocal);
    end;


    //CIT End
    local procedure FormatAddressFields(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        FormatAddr.GetCompanyAddr(SalesInvoiceHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesInvBillTo(CustAddr, SalesInvoiceHeader);
        ShowShippingAddr := FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, SalesInvoiceHeader);
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[50]
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        if not UnitOfMeasure.Get(UOMCode) then
            exit(UOMCode);
        exit(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10]
    begin
        exit(PadStr('', 2, ' '));
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20])
    var
        LineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist.";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        Customer: Record Customer;
    begin
        TempLineFeeNoteOnReportHist.DeleteAll();
        CustLedgerEntry.SetRange("Document Type", CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SetRange("Document No.", SalesInvoiceHeaderNo);
        if not CustLedgerEntry.FindFirst then
            exit;

        if not Customer.Get(CustLedgerEntry."Customer No.") then
            exit;

        LineFeeNoteOnReportHist.SetRange("Cust. Ledger Entry No", CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SetRange("Language Code", Customer."Language Code");
        if LineFeeNoteOnReportHist.FindSet then begin
            repeat
                InsertTempLineFeeNoteOnReportHist(LineFeeNoteOnReportHist, TempLineFeeNoteOnReportHist);
            until LineFeeNoteOnReportHist.Next = 0;
        end else begin
            LineFeeNoteOnReportHist.SetRange("Language Code", Language.GetUserLanguageCode);
            if LineFeeNoteOnReportHist.FindSet then
                repeat
                    InsertTempLineFeeNoteOnReportHist(LineFeeNoteOnReportHist, TempLineFeeNoteOnReportHist);
                until LineFeeNoteOnReportHist.Next = 0;
        end;
    end;

    local procedure CalcVATAmountLineLCY(SalesInvoiceHeader: Record "Sales Invoice Header"; TempVATAmountLine2: Record "VAT Amount Line" temporary; var TempVATAmountLineLCY2: Record "VAT Amount Line" temporary; var VATBaseRemainderAfterRoundingLCY2: Decimal; var AmtInclVATRemainderAfterRoundingLCY2: Decimal)
    var
        VATBaseLCY: Decimal;
        AmtInclVATLCY: Decimal;
    begin
        if (not GLSetup."Print VAT specification in LCY") or
           (SalesInvoiceHeader."Currency Code" = '')
        then
            exit;

        TempVATAmountLineLCY2.Init();
        TempVATAmountLineLCY2 := TempVATAmountLine2;
        with SalesInvoiceHeader do begin
            VATBaseLCY :=
              CurrExchRate.ExchangeAmtFCYToLCY(
                "Posting Date", "Currency Code", TempVATAmountLine2."VAT Base", "Currency Factor") +
              VATBaseRemainderAfterRoundingLCY2;
            AmtInclVATLCY :=
              CurrExchRate.ExchangeAmtFCYToLCY(
                "Posting Date", "Currency Code", TempVATAmountLine2."Amount Including VAT", "Currency Factor") +
              AmtInclVATRemainderAfterRoundingLCY2;
        end;
        TempVATAmountLineLCY2."VAT Base" := Round(VATBaseLCY);
        TempVATAmountLineLCY2."Amount Including VAT" := Round(AmtInclVATLCY);
        TempVATAmountLineLCY2.InsertLine;

        VATBaseRemainderAfterRoundingLCY2 := VATBaseLCY - TempVATAmountLineLCY2."VAT Base";
        AmtInclVATRemainderAfterRoundingLCY2 := AmtInclVATLCY - TempVATAmountLineLCY2."Amount Including VAT";
    end;

    local procedure InsertTempLineFeeNoteOnReportHist(var LineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist."; var TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary)
    begin
        repeat
            TempLineFeeNoteOnReportHist.Init();
            TempLineFeeNoteOnReportHist.Copy(LineFeeNoteOnReportHist);
            TempLineFeeNoteOnReportHist.Insert();
        until TempLineFeeNoteOnReportHist.Next = 0;
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterGetRecordSalesInvoiceHeader(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetDocumentCaption(SalesInvoiceHeader: Record "Sales Invoice Header"; var DocCaption: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    [Scope('OnPrem')]
    procedure OnGetReferenceText(SalesInvoiceHeader: Record "Sales Invoice Header"; var ReferenceText: Text[80]; var Handled: Boolean)
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterInitReport()
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterPostDataItem(var SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;
}

