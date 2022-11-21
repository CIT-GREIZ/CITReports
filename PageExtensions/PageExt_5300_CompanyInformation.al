pageextension 50300 CITCompanyInformationPage extends "Company Information"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(ManagingDirector; Rec.CIT_ManagingDirector)
            {
                ToolTip = 'Name of the Managing Direcktor';
                ApplicationArea = All;
                Visible = true;
                Editable = true;
            }
        }
        addafter(Picture)
        {
            field(CompanyPicture2; Rec.CIT_CompanyPicture2)
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
        }
        addbefore("Registration No.")
        {
            field(FinanceNumber; Rec.CIT_FinanceNumber)
            {
                ApplicationArea = Basic, Suite;
            }
            field(DistrictCourt; Rec.CIT_DistrictCourt)
            {
                ApplicationArea = Basic, Suite;
            }
            field("RegisterNo."; Rec."CIT_RegisterNo.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter(IBAN)
        {
            field(SecondIBAN; Rec.CIT_SecondIBAN)
            {
                ApplicationArea = Basic, Suite;
            }
        }
        modify("Tax Office Number")
        {
            Visible = false;
        }
    }

}
