
#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
#include "Unit7.h"
#include "Unit8.h"
#include "Unit9.h"
#include "Unit10.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{


}

void __fastcall TForm1::N2Click(TObject *Sender)
{
	Form10->Show();
	Form10->frxReport1->ShowReport();
}

//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
   Form2->ShowModal();
   ADOTable1->Requery();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ВыходClick(TObject *Sender)
{
    Close(); // Закрываем форму
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
   if(!ADOTable1->IsEmpty())
	{
		if(MessageDlg("Вы точно хотите удалить эту запись?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo, 0) == mrYes)
		{
			ADOTable1->Delete();
		}
	}
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	if (ADOTable1->RecordCount > 0 && ADOTable1->Active)
		{

			Form4->SetData(ADOTable1); // Передаем текущую таблицу в Form3
			Form4->ShowModal();
			 // Обновляем данные в таблице после редактирования
			ADOTable1->Refresh();
		}
		else
		{
			ShowMessage("Нет записей для редактирования.");
		}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
	if(!ADOTable2->IsEmpty())
	{
		if(MessageDlg("Вы точно хотите удалить эту запись?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo, 0) == mrYes)
		{
			ADOTable2->Delete();
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
	Form5->ShowModal();
	ADOTable2->Requery();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
	   if (ADOTable2->RecordCount > 0 && ADOTable2->Active)
		{

			Form6->SetData(ADOTable2); // Передаем текущую таблицу в Form3
			Form6->ShowModal();
			 // Обновляем данные в таблице после редактирования
			ADOTable2->Refresh();
		}
		else
		{
			ShowMessage("Нет записей для редактирования.");
		}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
	if(!ADOTable3->IsEmpty())
	{
		if(MessageDlg("Вы точно хотите удалить эту запись?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo, 0) == mrYes)
		{
			ADOTable3->Delete();
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
	Form7->ShowModal();
	ADOTable3->Requery();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
		if (ADOTable3->RecordCount > 0 && ADOTable3->Active)
		{
			Form8->SetData(ADOTable3); // Передаем текущую таблицу в Form3
			Form8->ShowModal();
			 // Обновляем данные в таблице после редактирования
			ADOTable3->Refresh();
			
		}
		else
		{
			ShowMessage("Нет записей для редактирования.");
		}
}
//---------------------------------------------------------------------------



