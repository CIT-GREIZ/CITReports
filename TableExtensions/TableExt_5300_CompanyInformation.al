tableextension 50300 CITCompanyInformationTable extends "Company Information"
{
    fields
    {
        // Add changes to table fields here
        field(50300; CIT_ManagingDirector; Text[45])
        {
            Caption = 'Managing Director';
        }
        field(50301; CIT_CompanyPicture2; blob)
        {
            Caption = 'Festo Partnerlogo';
            SubType = Bitmap;
        }
        field(50302; CIT_FinanceNumber; Text[20])
        {
            Caption = 'Finanzamtsnummer';
        }
        field(50303; CIT_SecondIBAN; Code[50])
        {
            Caption = 'Second IBAN';

            trigger OnValidate()
            begin
                CheckIBAN(CIT_SecondIBAN);
            end;
        }
        field(50304; CIT_DistrictCourt; Text[30])
        {
            Caption = 'District Court';
        }

        field(50305; "CIT_RegisterNo."; Text[30])
        {
            Caption = 'Register No.';
        }
    }

}
