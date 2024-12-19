//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit8.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm8 *Form8;
//---------------------------------------------------------------------------
__fastcall TForm8::TForm8(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TForm8::SetData(TADOTable *Table)
{
	// ������������� ������� �������
	ADOTable3 = Table; // ������� ������� (orders)
	if (!ADOTable3->Active) {
		ADOTable3->Open();
	}
	ADOTable3->Edit();

	// ��������, ��� ������� ��������� � ������������� �������
	ADOTable1->Active = true; // ������� users
	ADOTable2->Active = true; // ������� producte

	// ��������� DBLookupComboBox1 ��� ������ ���������
	DBLookupComboBox1->ListSource = DataSource2;      // �������� ������ ��� ���������
	DBLookupComboBox1->ListField = "name";           // �������� ��������
	DBLookupComboBox1->KeyField = "product_id";      // ���� � ��������������� ��������
	DBLookupComboBox1->KeyValue = Table->FieldByName("product_id")->AsInteger; // ������������� ������� ��������

	// ��������� DBLookupComboBox2 ��� ������ �������������
	DBLookupComboBox2->ListSource = DataSource1;      // �������� ������ ��� �������������
	DBLookupComboBox2->ListField = "name";           // ��� ������������
	DBLookupComboBox2->KeyField = "user_id";         // ���� � ��������������� ������������
	DBLookupComboBox2->KeyValue = Table->FieldByName("user_id")->AsInteger; // ������������� ������� ��������

	EditQuantity->Text = ADOTable3->FieldByName("quantity")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TForm8::Button1Click(TObject *Sender)
{
	try
	{
		if (!ADOTable3->Active)
		{
			ADOTable3->Open();
		}

		// ��������� � ����� ��������������
		ADOTable3->Edit();

		// �������� ��������� ������� � ������������
		int selectedProductID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("product_id")->AsInteger = selectedProductID;

		int selectedUserID = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("user_id")->AsInteger = selectedUserID;

		ADOTable3->FieldByName("quantity")->AsFloat = StrToFloat(EditQuantity->Text);

		// ��������� ���������
		ADOTable3->Post();

		ShowMessage("������ ������� ��������.");
		ModalResult = mrOk;
		Form8->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("������ ��� �������������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm8::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------

