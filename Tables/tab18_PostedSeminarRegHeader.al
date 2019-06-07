table 50118  "CSD Posted Seminar Reg. Header"
{
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 3-1
    Caption = 'Posted Seminar Reg. Header';
    LookUpPageID= "CSD Posted Seminar Reg. List";
    DrillDownPageID= "CSD Posted Seminar Reg. List";

    Fields
    {
        Field(1; "No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'No.';
        }
        Field(2; "Starting Date"; Date)
        {
            DataClassification=CustomerContent;
            Caption = 'Starting Date';
        }
        Field(3; "Seminar No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }
        Field(4; "Seminar Name"; Text[50])
        {
            DataClassification=CustomerContent;
            Caption = 'Seminar Name';
        }
        Field(5; "Instructor Resource No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'Instructor Resource No.';
            TableRelation = Resource where (Type = const (Person));
        }
        Field(6; "Instructor Name"; Text[50])
        {
            Caption = 'Instructor Name';
            CalcFormula = Lookup (Resource.Name where ("No." = Field ("Instructor Resource No."),
                                                      Type = const (Person)));
            Editable = false;
            FieldClass = FlowField;
        }
        Field(7; Status; Option)
        {
            DataClassification=CustomerContent;
            Caption = 'Status';
            OptionCaption = 'Planning,Registration,Closed,Canceled';
            OptionMembers = Planning, Registration, Closed, Canceled;
        }
        Field(8; Duration; Decimal)
        {
            DataClassification=CustomerContent;
            Caption = 'Duration';
            DecimalPlaces = 0 : 1;
        }
        Field(9; "Maximum Participants"; Integer)
        {
            DataClassification=CustomerContent;
            Caption = 'Maximum Participants';
        }
        Field(10; "Minimum Participants"; Integer)
        {
            DataClassification=CustomerContent;
            Caption = 'Minimum Participants';
        }
        Field(11; "Room Resource No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Resource No.';
            TableRelation = Resource where (Type = const (Machine));
        }
        Field(12; "Room Name"; Text[30])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Name';
        }
        Field(13; "Room Address"; Text[30])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Address';
        }
        Field(14; "Room Address 2"; Text[30])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Address 2';
        }
        Field(15; "Room Post Code"; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Post Code';
            TableRelation = "Post Code".Code;
            ValidateTableRelation = false;
        }
        Field(16; "Room City"; Text[30])
        {
            DataClassification=CustomerContent;
            Caption = 'Room City';
        }
        Field(17; "Room Country/Reg. Code"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'Room Country/Reg. Code';
            TableRelation = "Country/Region";
        }
        Field(18; "Room County"; Text[30])
        {
            DataClassification=CustomerContent;
            Caption = 'Room County';
        }
        Field(19; "Seminar Price"; Decimal)
        {
            DataClassification=CustomerContent;
            Caption = 'Seminar Price';
            AutoFormatType = 1;
        }
        Field(20; "Gen. Prod. Posting Group"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group".Code;
        }
        Field(21; "VAT Prod. Posting Group"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group".Code;
        }
        Field(22; Comment; Boolean)
        {
            Caption = 'Comment';
            CalcFormula = Exist ("CSD Seminar Comment Line" where ("Table Name" = const("Posted Seminar Reg. Header"),
                                                              "No." = Field ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        Field(23; "Posting Date"; Date)
        {
            DataClassification=CustomerContent;
            Caption = 'Posting Date';
        }
        Field(24; "Document Date"; Date)
        {
            DataClassification=CustomerContent;
            Caption = 'Document Date';
        }
        Field(25; "Reason Code"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        Field(26; "No. Series"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series".Code;
        }
        Field(27; "Posting No. Series"; Code[10])
        {
            DataClassification=CustomerContent;
            Caption = 'Posting No. Series';
            TableRelation = "No. Series".Code;
        }
        field(29;"User Id";Code[50])
        {
            DataClassification=CustomerContent;
            Caption='User Id';
            TableRelation=User;
            ValidateTableRelation=false;
        }
        field(30;"Source Code";Code[10])
        {
            DataClassification=CustomerContent;
            Caption='Source Code';
            TableRelation="Source Code";
        }
    }

    keys
    {
        key(PK; "No.")
        {
        }
        key(Key2; "Room Resource No.")
        {
            SumIndexFields = Duration;
        }
    }
}

