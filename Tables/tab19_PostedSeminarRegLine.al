table 50119  "CSD Posted Seminar Reg. Line"
{
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 3-3
    Caption='Posted Seminar Reg. Line';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            DataClassification=CustomerContent;
            Caption='Document No.';
            TableRelation =  "CSD Posted Seminar Reg. Header";
        }
        field(2;"Line No.";Integer)
        {
            DataClassification=CustomerContent;
            Caption='Line No.';
        }
        field(3;"Bill-to Customer No.";Code[20])
        {
            DataClassification=CustomerContent;
            TableRelation = Customer;
            Caption='Bill-to Customer No.';
        }
        field(4;"Participant Contact No.";Code[20])
        {
            DataClassification=CustomerContent;
            TableRelation = Contact;
            Caption='Participant Contact No.';
        }
        field(5;"Participant Name";Text[50])
        {
            Caption='Participant Name';
            CalcFormula = Lookup(Contact.Name where ("No."=Field("Participant Contact No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(6;"Registration Date";Date)
        {
            DataClassification=CustomerContent;
            Caption='Registration Date';
            Editable = false;
        }
        field(7;"To Invoice";Boolean)
        {
            DataClassification=CustomerContent;
            Caption='To Invoice';
            InitValue = true;
        }
        field(8;Participated;Boolean)
        {
            DataClassification=CustomerContent;
            Caption='Participated';
        }
        field(9;"Confirmation Date";Date)
        {
            DataClassification=CustomerContent;
            Caption='Confirmation Date';
            Editable = false;
        }
        field(10;"Seminar Price";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Seminar Price';
            AutoFormatType = 2;
        }
        field(11;"Line Discount %";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Line Discount %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(12;"Line Discount Amount";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Line Discount Amount';
            AutoFormatType = 1;
        }
        field(13;Amount;Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Amount';
            AutoFormatType = 1;
        }
        field(14;Registered;Boolean)
        {
            DataClassification=CustomerContent;
            Caption='Registered';
            Editable = false;
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
    }
}

