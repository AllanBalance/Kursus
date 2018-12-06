pageextension 50101 "CSD Resource List" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }

        }
    }

    trigger OnOpenPage()
    begin
        ShowType := GetFilter(Type) = '';
        ShowMaxField := GetFilter(Type) = format(type::Machine);
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        ShowMaxField: Boolean;
}