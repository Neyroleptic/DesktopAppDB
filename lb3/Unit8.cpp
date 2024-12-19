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
	// Устанавливаем текущую таблицу
	ADOTable3 = Table; // Таблица заказов (orders)
	if (!ADOTable3->Active) {
		ADOTable3->Open();
	}
	ADOTable3->Edit();

	// Убедимся, что таблицы продуктов и пользователей активны
	ADOTable1->Active = true; // Таблица users
	ADOTable2->Active = true; // Таблица producte

	// Настройка DBLookupComboBox1 для выбора продуктов
	DBLookupComboBox1->ListSource = DataSource2;      // Источник данных для продуктов
	DBLookupComboBox1->ListField = "name";           // Название продукта
	DBLookupComboBox1->KeyField = "product_id";      // Поле с идентификатором продукта
	DBLookupComboBox1->KeyValue = Table->FieldByName("product_id")->AsInteger; // Устанавливаем текущее значение

	// Настройка DBLookupComboBox2 для выбора пользователей
	DBLookupComboBox2->ListSource = DataSource1;      // Источник данных для пользователей
	DBLookupComboBox2->ListField = "name";           // Имя пользователя
	DBLookupComboBox2->KeyField = "user_id";         // Поле с идентификатором пользователя
	DBLookupComboBox2->KeyValue = Table->FieldByName("user_id")->AsInteger; // Устанавливаем текущее значение

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

		// Переходим в режим редактирования
		ADOTable3->Edit();

		// Получаем выбранный продукт и пользователя
		int selectedProductID = DBLookupComboBox1->KeyValue;
		ADOTable3->FieldByName("product_id")->AsInteger = selectedProductID;

		int selectedUserID = DBLookupComboBox2->KeyValue;
		ADOTable3->FieldByName("user_id")->AsInteger = selectedUserID;

		ADOTable3->FieldByName("quantity")->AsFloat = StrToFloat(EditQuantity->Text);

		// Сохраняем изменения
		ADOTable3->Post();

		ShowMessage("Запись успешно изменена.");
		ModalResult = mrOk;
		Form8->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при редактировании записи: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm8::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------

