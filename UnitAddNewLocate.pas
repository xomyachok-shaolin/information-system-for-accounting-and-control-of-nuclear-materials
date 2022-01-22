unit UnitAddNewLocate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList;

type
  TForm32 = class(TForm)
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    ADOStoredProc1: TADOStoredProc;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Button7: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    class var FStaticVar: integer;
  public
    { Public declarations }
     class property StaticVar: integer read FStaticVar write FStaticVar;

  end;

var
  Form32 : TForm32;

implementation

{$R *.dfm}

uses UnitMain, UnitEmployee, UnitInvMat, UnitAddInvoice, UnitTypesMaterial, UnitLocations,
UnitMaterials;



procedure TForm32.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm32.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := StrToInt(DBEdit1.Text);

ADOStoredProc1.Parameters.Items[1].Value := StrToInt(Form29.id_inv);  // наклад

if  DBEdit7.Text = '' then  begin
    Application.MessageBox('Введите местоположение!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := ADOQuery1.FieldByName('ИД_ПОМЕЩЕЩЕНИЯ').AsInteger;

Try
  ADOStoredProc1.ExecProc;
  Close;
  Form16.ADOQueryAU.Requery;
  Application.MessageBox('Перемещение материала зафиксировано', 'Транзакция выполнена', MB_OK or MB_ICONINFORMATION);
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
end;

end;

procedure TForm32.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm32.Button7Click(Sender: TObject);
var  Form17_1: TForm17;
begin

  Form17_1 := TForm17.Create(Application);

  Form17_1.Button8.Visible := true;
  Form17_1.Button8.Enabled := true;
  Form17_1.Button1.Visible := false;
  Form17_1.Button2.Visible := false;
  Form17_1.Button3.Visible := false;
  Form17_1.Button4.Visible := false;
  Form17_1.Button5.Visible := false;
  Form17_1.Button6.Visible := false;

  Form17_1.ShowModal;

end;

end.
