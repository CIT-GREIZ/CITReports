table 50300 ReportParameter
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
        }

        field(2; CIT_SalesInvoice_Text1; Text[250])
        {
        }
        field(3; CIT_SalesInvoice_Text2; Text[250])
        {
        }
        field(4; CIT_SalesInvoice_Text3; Text[250])
        {
        }

        field(10; FieldPageNo; Text[250])
        {
        }

        field(15; FieldHeadline; Text[250])
        {
        }

        field(20; Field1; Text[250])
        {
        }

        field(30; Field2; Text[250])
        {
        }

        field(40; Field3; Text[250])
        {
        }

        field(50; Field4; Text[250])
        {
        }

        field(60; Field5; Text[250])
        {
        }

        field(70; FieldInvoiceText1; Text[250])
        {
        }

        field(71; FieldInvoiceText2; Text[250])
        {
        }

        field(72; FieldInvoiceText3; Text[250])
        {
        }

        field(73; FieldInvoiceText4; Text[250])
        {
        }

        field(80; FieldVAT1; Text[250])
        {
        }

        field(90; FieldVAT2; Text[250])
        {
        }

        field(100; FieldVAT3; Text[250])
        {
        }
    }
    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

}
