table 50121  "CSD Posted Seminar Charge"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3-4
    //     - Created new table
    Caption='Seminar Charge';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            DataClassification=CustomerContent;
            Caption='Document No.';
            NotBlank = true;
            TableRelation =  "CSD Posted Seminar Reg. Header";
        }
        field(2;"Line No.";Integer)
        {
            DataClassification=CustomerContent;
            Caption='Line No.';
        }
        field(3;Type;Option)
        {
            DataClassification=CustomerContent;
            Caption='Type';
            OptionCaption = 'Resource,G/L Account';
            OptionMembers = Resource,"G/L Account";
        }
        field(4;"No.";Code[20])
        {
            DataClassification=CustomerContent;
            Caption='No.';
            TableRelation = if (Type=const(Resource)) Resource."No."
                            else if (Type=const("G/L Account")) "G/L Account"."No.";
        }
        field(5;Description;Text[50])
        {
            DataClassification=CustomerContent;
            Caption='Description';
        }
        field(6;Quantity;Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Quantity';
            DecimalPlaces = 0:5;
        }
        field(7;"Unit Price";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Unit Price';
            AutoFormatType = 2;
            MinValue = 0;
        }
        field(8;"Total Price";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Total Price';
            AutoFormatType = 1;
            Editable = false;
        }
        field(9;"To Invoice";Boolean)
        {
            DataClassification=CustomerContent;
            Caption='To Invoice';
            InitValue = true;
        }
        field(10;"Bill-to Customer No.";Code[20])
        {
            DataClassification=CustomerContent;
            Caption='Bill-to Customer No.';
            TableRelation = Customer."No.";
        }
        field(11;"Unit of Measure Code";Code[10])
        {
            DataClassification=CustomerContent;
            Caption='Unit of Measure Code';
            TableRelation = if (Type=const(Resource)) "Resource Unit of Measure".Code where ("Resource No."=Field("No."))
                            else "Unit of Measure".Code;
        }
        field(12;"Gen. Prod. Posting Group";Code[10])
        {
            DataClassification=CustomerContent;
            Caption='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group".Code;
        }
        field(13;"VAT Prod. Posting Group";Code[10])
        {
            DataClassification=CustomerContent;
            Caption='VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group".Code;
        }
        field(14;"Qty. per Unit of Measure";Decimal)
        {
            DataClassification=CustomerContent;
            Caption='Qty. per Unit of Measure';
        }
        field(15;Registered;Boolean)
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

    fieldgroups
    {
    }
}

