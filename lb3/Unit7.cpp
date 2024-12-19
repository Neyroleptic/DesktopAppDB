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
	// Настройка таблицы продуктов
	ADOTable2->Active = true;
	DataSource2->DataSet = ADOTable2;

	DBLookupComboBox1->ListSource = DataSource2;
	DBLookupComboBox1->ListField = "name";        // Отображение названия продукта
	DBLookupComboBox1->KeyField = "product_id";   // Идентификатор продукта
	DBLookupComboBox1->DataSource = nullptr;

	// Настройка таблицы пользователей
	ADOTable1->Active = true;
	DataSource1->DataSet = ADOTable1;

	DBLookupComboBox2->ListSource = DataSource1;
	DBLookupComboBox2->ListField = "name";       // Отображение имени пользователя
	DBLookupComboBox2->KeyField = "user_id";     // Идентификатор пользователя
	DBLookupComboBox2->DataSource = nullptr;

}
//---------------------------------------------------------------------------

void __fastcall TForm7::Button1Click(TObject *Sender)
{
	try
	{
		// Убедимся, что таблица заказов активна
		if (!ADOTable3->Active)
		{
			ADOTable3->Open();
		}
		ADOTable3->Append();

		// Получаем выбранный продукт
		int selectedProductID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("product_id")->AsInteger = selectedProductID;

		// Получаем выбранного пользователя
		int selectedUserID = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("user_id")->AsInteger = selectedUserID;

		ADOTable3->FieldByName("quantity")->AsString = EditQuantity->Text;

		ADOTable3->Edit();
		ADOTable3->Post();

		ShowMessage("Заказ успешно добавлен.");

		ModalResult = mrOk;
		Form7->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при добавлении заказа: " + e.Message);
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
	// Инициализация формы при её создании
}
//---------------------------------------------------------------------------

void __fastcall TForm7::DataSource2DataChange(TObject *Sender, TField *Field)
{
	// Логика обработки изменений данных в DataSource2
}
//---------------------------------------------------------------------------


