pageextension 50100 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                Caption = 'Room';
                visible = ShowRoom;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        ShowRoom := Type = type::Machine;
    end;

    var
        [InDataSet]
        ShowRoom: Boolean;
}