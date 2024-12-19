//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
// ������� ��� ��������� ������ � ���� ����� �� ������ ��������� ������
void __fastcall TForm4::SetData(TADOTable *Table)
{
    // ������������� ������� �������
	 ADOTable1 = Table;  // ����� ������������� ��������� �� ������� �������
	 if (!ADOTable1->Active)
		{
			ADOTable1->Open();  // ���������, ��� ������� �������
	 }
	ADOTable1->Edit();
	// ��������� ���� ����� ���������� �� ������� ������ �������
	EditName->Text = Table->FieldByName("name")->AsString;
	EditEmail->Text = Table->FieldByName("email")->AsString;

}
void __fastcall TForm4::Button1Click(TObject *Sender)
{
   try
	{
		if (!ADOTable1->Active)
		{
			ADOTable1->Open();
		}

		// ��������� � ����� ��������������
		ADOTable1->Edit();
		ADOTable1->FieldByName("name")->AsString = EditName->Text;
        ADOTable1->FieldByName("email")->AsString = EditEmail->Text;

		
		// ��������� ���������
		ADOTable1->Post();

		ShowMessage("������ ������� ��������.");
		ModalResult = mrOk;
		Form4->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("������ ��� �������������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm4::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
