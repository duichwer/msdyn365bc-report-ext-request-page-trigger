reportextension 51101 "PTE ItemPriceList" extends "PTE ItemPriceList"
{
    requestpage
    {
        layout
        {
            addlast(Options)
            {
                field(PriceCalculationMethod; PriceCalcMethodDummy)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Price Calculation Method';
                    ToolTip = 'Specifies the price calculation method.';

                    trigger OnValidate()
                    begin
                        if PriceCalcMethodDummy = PriceCalcMethodDummy::" " then
                            PriceCalcMethodDummy := PriceCalcMethodDummy::"Lowest Price";
                    end;
                }
            }
        }
    }

    var
        PriceCalcMethodDummy: Enum "Price Calculation Method";
}