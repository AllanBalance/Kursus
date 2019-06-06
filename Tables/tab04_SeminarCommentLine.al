table 50104 "CSD Seminar Comment Line"
{
    DataClassification = CustomerContent;
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "Table name"; Option)
        {
            DataClassification=CustomerContent;
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption = 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }
        field(20; "Document Line No."; Integer)
        {
            DataClassification=CustomerContent;
            Caption = 'Document Line No.';
        }
        field(30; "No."; Code[20])
        {
            DataClassification=CustomerContent;
            Caption = 'No.';
            TableRelation = if ("Table name" = const (Seminar)) "CSD Seminar";

        }
        field(40; "Line No."; Integer)
        {
            DataClassification=CustomerContent;
            Caption = 'Line No.';

        }
        field(50; "Date"; Date)
        {
            DataClassification=CustomerContent;
            Caption = 'Date';

        }
        field(60; "Code"; Code[10])
        {
            DataClassification=CustomerContent;

        }
        field(70; "Comment"; Text[80])
        {
            DataClassification=CustomerContent;
            Caption = 'Comment';

        }
    }

    keys
    {
        key(PK; "Table name", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

}