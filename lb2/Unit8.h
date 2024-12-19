//---------------------------------------------------------------------------

#ifndef Unit8H
#define Unit8H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBCtrls.hpp>
//---------------------------------------------------------------------------
class TForm8 : public TForm
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection3;
	TADOTable *ADOTable3;
	TDataSource *DataSource3;
	TLabel *Label6;
	TLabel *product;
	TLabel *user;
	TButton *Button1;
	TButton *Button2;
	TDBLookupComboBox *DBLookupComboBox1;
	TDBLookupComboBox *DBLookupComboBox2;
	TADOConnection *ADOConnection1;
	TADOTable *ADOTable1;
	TDataSource *DataSource1;
	TADOConnection *ADOConnection2;
	TADOTable *ADOTable2;
	TDataSource *DataSource2;
	TLabel *quantity;
	TEdit *EditQuantity;
	void __fastcall SetData(TADOTable *Table);

	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender); // Объявляем функцию
private:	// User declarations
public:		// User declarations
	__fastcall TForm8(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm8 *Form8;
//---------------------------------------------------------------------------
#endif
