reportextension 51100 "PTE SalesQuote" extends "Standard Sales - Quote"
{
    dataset
    {
        add(Header)
        {
            column(DoMagic_PTE; DoMagic) { }
        }

    }
    requestpage
    {
        layout
        {
            addlast(Options)
            {
                field("PTE DoMagic"; DoMagic)
                {
                    ApplicationArea = All;
                    Caption = 'Do Magic';
                }

            }
        }
        trigger OnAfterGetCurrRecord()
        begin
            DoMagic := true;
        end;
    }
    rendering
    {
        layout("PTE Layout (RDLC)")
        {
            LayoutFile = './src/SalesQuote.rdlc';
            Type = RDLC;
        }
    }

    var
        DoMagic: Boolean;
}