//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
_fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
} 
//---------------------------------------------------------------------------


void __fastcall TForm3::ButtonOkClick(TObject *Sender)
{
	if (!ADOTable1->Active)
	{
		ADOTable1->Open();
	}
	ADOTable1->Append();
	ADOTable1->FieldByName("name")->AsString = EditName->Text;
	ADOTable1->FieldByName("email")->AsString = EditEmail->Text;
	ADOTable1->Post();

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::ButtonCancelClick(TObject *Sender)
{
       if (MessageDlg("Exit?", mtConfirmation, mbYesNo, 0) == mrYes)
		 ModalResult = mrCancel;

}


