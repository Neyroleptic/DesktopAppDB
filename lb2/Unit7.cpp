//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit7.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm7 *Form7;
//---------------------------------------------------------------------------
__fastcall TForm7::TForm7(TComponent* Owner)
	: TForm(Owner)
{
	// ��������� ������� ���������
	ADOTable2->Active = true;
	DataSource2->DataSet = ADOTable2;

	DBLookupComboBox1->ListSource = DataSource2;
	DBLookupComboBox1->ListField = "name";        // ����������� �������� ��������
	DBLookupComboBox1->KeyField = "product_id";   // ������������� ��������
	DBLookupComboBox1->DataSource = nullptr;

	// ��������� ������� �������������
	ADOTable1->Active = true;
	DataSource1->DataSet = ADOTable1;

	DBLookupComboBox2->ListSource = DataSource1;
	DBLookupComboBox2->ListField = "name";       // ����������� ����� ������������
	DBLookupComboBox2->KeyField = "user_id";     // ������������� ������������
	DBLookupComboBox2->DataSource = nullptr;

}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button1Click(TObject *Sender)
{
	try
	{
		// ��������, ��� ������� ������� �������
		if (!ADOTable3->Active)
		{
			ADOTable3->Open();
		}
		ADOTable3->Append();

		// �������� ��������� �������
		int selectedProductID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("product_id")->AsInteger = selectedProductID;

		// �������� ���������� ������������
		int selectedUserID = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("user_id")->AsInteger = selectedUserID;

		ADOTable3->FieldByName("quantity")->AsString = EditQuantity->Text;

		ADOTable3->Edit();
		ADOTable3->Post();

		ShowMessage("����� ������� ��������.");

		ModalResult = mrOk;
		Form7->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("������ ��� ���������� ������: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button2Click(TObject *Sender)
{
	Form1->Show();
	Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm7::FormCreate(TObject *Sender)
{
	// ������������� ����� ��� � ��������
}
//---------------------------------------------------------------------------

void __fastcall TForm7::DataSource2DataChange(TObject *Sender, TField *Field)
{
	// ������ ��������� ��������� ������ � DataSource2
}
//---------------------------------------------------------------------------


