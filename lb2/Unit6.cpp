//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm6::SetData(TADOTable *Table)
{
    // Устанавливаем текущую таблицу
	 ADOTable2 = Table;  // Здесь устанавливаем указатель на текущую таблицу
	 if (!ADOTable2->Active)
		{
			ADOTable2->Open();  // Убедитесь, что таблица открыта
	 }
	ADOTable2->Edit();
	// Заполняем поля формы значениями из текущей записи таблицы
	EditName->Text = Table->FieldByName("Name")->AsString;
    EditPrice->Text = Table->FieldByName("price")->AsString;
}

void __fastcall TForm6::Button1Click(TObject *Sender)
{
try
	{
		if (!ADOTable2->Active)
		{
			ADOTable2->Open();
		}

		// Переходим в режим редактирования
		ADOTable2->Edit();
		ADOTable2->FieldByName("name")->AsString = EditName->Text;
		ADOTable2->FieldByName("price")->AsFloat = StrToFloat(EditPrice->Text);

		// Сохраняем изменения
		ADOTable2->Post();

		ShowMessage("Запись успешно изменена.");
		ModalResult = mrOk;
		Form6->Close();
	}
	catch (const Exception &e)
	{
		ShowMessage("Ошибка при редактировании записи: " + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------



