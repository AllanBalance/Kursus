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
        }
    }
}