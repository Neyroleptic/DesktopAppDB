#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::Button1Click(TObject *Sender)
{
    try
    {
        if (!ADOTable2->Active)
        {
            ADOTable2->Open();
        }

        // Добавление записи
        ADOTable2->Append();
        ADOTable2->FieldByName("name")->AsString = EditName->Text;
        ADOTable2->FieldByName("price")->AsFloat = StrToFloat(EditPrice->Text); // Добавление цены
        ADOTable2->Edit();
        ADOTable2->Post();

        // Успешное добавление
        ShowMessage("Продукт успешно добавлен.");
        EditName->Text = "";
        EditPrice->Text = "";

        ModalResult = mrOk;
        Form5->Close();
    }
    catch (const Exception &e)
    {
        ShowMessage("Ошибка при добавлении продукта: " + e.Message);
    }
}

//---------------------------------------------------------------------------

void __fastcall TForm5::Button2Click(TObject *Sender)
{
    Form1->Show();
    Close();
}

