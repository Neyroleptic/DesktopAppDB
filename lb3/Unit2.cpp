//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------




void __fastcall TForm2::Button2Click(TObject *Sender)
{
   Form1->Show();
   Close();
}
//---------------------------------------------------------------------------


void __fastcall TForm2::Button1Click(TObject *Sender)
{
	try
	{
		if (!ADOTable1->Active)
		{
			ADOTable1->Open();
		}
		ADOTable1->Append();
		ADOTable1->FieldByName("name")->AsString = EditName->Text;
		ADOTable1->FieldByName("email")->AsString = EditEmail->Text;
		ADOTable1->Edit();
		ADOTable1->Post();

		ShowMessage("Запись успешно добавлена.");
		EditName->Text = "";
		EditEmail->Text = "";

		ModalResult = mrOk;
		Form2->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при добавлении записи: " + e.Message);
	}
}

//---------------------------------------------------------------------------





