page 50300 ReportParameter
{
    ApplicationArea = All; //Basic, Suite;
    Caption = 'CIT Report Parameter';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    //PromotedActionCategories = 'New,Process,Report,General,Posting,Journal Templates';
    UsageCategory = Administration;
    SourceTable = ReportParameter;

    layout
    {
        area(Content)
        {
            group(InvoiceGroup)
            {
                Caption = 'Sales Invoice';

                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Visible = False;
                }

                field(SalesInvoice_Text1; rec.CIT_SalesInvoice_Text1)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Text1:';
                }
                field(SalesInvoice_Text2; rec.CIT_SalesInvoice_Text2)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Text2:';
                }
                field(SalesInvoice_Text3; rec.CIT_SalesInvoice_Text3)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Text3:';
                }

                field(FieldPageNo; rec.FieldPageNo)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldPageNo:';
                }

                field(FieldHeadline; rec.FieldHeadline)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldHeadline:';
                }

                field(Field1; rec.Field1)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Field1:';
                }

                field(Field2; rec.Field2)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Field2:';
                }

                field(Field3; rec.Field3)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Field3:';
                }

                field(Field4; rec.Field4)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Field4:';
                }

                field(Field5; rec.Field5)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'Field5:';
                }

                field(FieldInvoiceText1; rec.FieldInvoiceText1)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldInvoiceText1:';
                }

                field(FieldInvoiceText2; rec.FieldInvoiceText2)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldInvoiceText2:';
                }

                field(FieldInvoiceText3; rec.FieldInvoiceText3)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldInvoiceText3:';
                }

                field(FieldInvoiceText4; rec.FieldInvoiceText4)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldInvoiceText4:';
                }

                field(FieldVAT1; rec.FieldVAT1)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldVAT1:';
                }

                field(FieldVAT2; rec.FieldVAT2)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldVAT2:';
                }

                field(FieldVAT3; rec.FieldVAT3)
                {
                    ApplicationArea = All;
                    MultiLine = True;
                    Caption = 'FieldVAT3:';
                }

            }


        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        ReportParameter: Record ReportParameter;
    begin
        if not ReportParameter.FindFirst() then begin
            Rec.Init;
            Rec.Insert;
        end
        else begin
            Rec := ReportParameter;
        end;
    end;
}
