page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    CardPageID = "CSD Seminar Card";
    Caption = 'Seminar List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart(Links; Links)
            {

            }
            systempart(Notes; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("CSD Seminar Comments Sheet")
            {
                Caption = 'Seminar Comments Sheet';


            }

            action("Ledger Entries")
            {
                RunObject = page "CSD Seminar Ledger Entries";
                RunPageLink = "Seminar No." = field ("No.");
                Promoted = true;
                PromotedCategory = Process;
                ShortcutKey = "Ctrl+F7";
                Image = WarrantyLedger;
            }
            action("&Registrations")
            {
                RunObject = page "CSD Seminar Registration List";
                RunPageLink = "Seminar No." = field ("No.");
                Image = Timesheet;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
            }
        }
    }
}