//---------------------------------------------------------------------------

#include <vcl.h>
#include <Vcl.Dialogs.hpp>
#pragma hdrstop

#include "Unit1.h"
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
bool EditMode = false;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonExitClick(TObject *Sender)
{
	if (MessageDlg("Вы уверены, что хотите выйти?", mtConfirmation, mbYesNo, 0) == mrYes)
		Close();
}

void __fastcall TForm1::ButtonAddClick(TObject *Sender)
{
	TForm3 *addForm = new TForm3(this);
	addForm->ShowModal();
	ADOTable1->Refresh();
	ADOTable1->Active = false;
	ADOTable1->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ButtonEditClick(TObject *Sender)
{
	if (!EditMode) {
		ButtonEdit->Caption = "Сохранить";
		LabelName->Visible = true;
		LabelEmail->Visible = true;
		EditName->Visible = true;
		EditEmail->Visible = true;
		EditName->Text = ADOTable1->FieldByName("name")->AsString;
		EditEmail->Text = ADOTable1->FieldByName("email")->AsString;
		EditMode = true;
	} else {
		ButtonEdit->Caption = "Редактировать";
		LabelName->Visible = false;
		LabelEmail->Visible = false;
		EditName->Visible = false;
		EditEmail->Visible = false;
		ADOTable1->Edit();
		ADOTable1->FieldByName("name")->AsString = EditName->Text;
		ADOTable1->FieldByName("email")->AsString = EditEmail->Text;
		ADOTable1->Post();
		EditMode = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ButtonDeleteClick(TObject *Sender)
{
	if (!ADOTable1->IsEmpty()) {
		if (MessageDlg("Вы уверены, что хотите удалить эту запись?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo, 0) == mrYes) {
			ADOTable1->Delete();
		}
	}
}

