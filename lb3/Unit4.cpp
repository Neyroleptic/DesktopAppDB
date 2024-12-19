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
// Функция для установки данных в поля формы на основе выбранной записи
void __fastcall TForm4::SetData(TADOTable *Table)
{
    // Устанавливаем текущую таблицу
	 ADOTable1 = Table;  // Здесь устанавливаем указатель на текущую таблицу
	 if (!ADOTable1->Active)
		{
			ADOTable1->Open();  // Убедитесь, что таблица открыта
	 }
	ADOTable1->Edit();
	// Заполняем поля формы значениями из текущей записи таблицы
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

		// Переходим в режим редактирования
		ADOTable1->Edit();
		ADOTable1->FieldByName("name")->AsString = EditName->Text;
        ADOTable1->FieldByName("email")->AsString = EditEmail->Text;

		
		// Сохраняем изменения
		ADOTable1->Post();

		ShowMessage("Запись успешно изменена.");
		ModalResult = mrOk;
		Form4->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при редактировании записи: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm4::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
