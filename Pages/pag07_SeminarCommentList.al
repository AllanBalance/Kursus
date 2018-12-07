page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "CSD Seminar Comment Line";
    Editable = false;
    Caption = 'Seminar Comment List';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Date; Date)
                {
                    Caption = 'Date';
                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {

                }
            }
        }
    }

}