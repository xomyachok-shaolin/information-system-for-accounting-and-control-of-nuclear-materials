unit UnitEditInvMat;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList;

type
  TForm33 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label12: TLabel;
    Edit7: TEdit;
    ADOStoredProc1: TADOStoredProc;
    Panel4: TPanel;
    Label3: TLabel;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBEdit4: TDBEdit;
    Button6: TButton;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Button7: TButton;
    Panel5: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
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
  Form33 : TForm33;

implementation

{$R *.dfm}

uses UnitMain, UnitEmployee, UnitInvMat, UnitAddInvoice, UnitTypesMaterial, UnitLocations;




procedure TForm33.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm33.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := ADOQuery2.FieldByName('ИД_УЕ').AsInteger;


if  DBEdit4.Text = '' then  begin
    Application.MessageBox('Введите тип материала!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := ADOQuery1.FieldByName('ИД ТИПА МАТЕРИАЛА').AsInteger;

if Trim(Edit7.Text) = '' then  begin
    Application.MessageBox('Введите № уч единицы!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := Edit7.Text;

if  DBEdit7.Text = '' then  begin
    Application.MessageBox('Введите местоположение!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := ADOQuery2.FieldByName('ИД_ПОМЕЩЕЩЕНИЯ').AsString;

if  DBLookupComboBox1.Text = '' then  begin
    Application.MessageBox('Выберите тип контейнера!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := DBLookupComboBox1.KeyValue;

if  ComboBox1.Text = '' then  begin
    Application.MessageBox('Выберите форму!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := ComboBox1.Text;

if  Edit1.Text = '' then  begin
    Application.MessageBox('Введите вес брутто!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[6].Value := Edit1.Text;

if  DBLookupComboBox2.Text = '' then  begin
    Application.MessageBox('Выберите весы!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[7].Value := DBLookupComboBox2.KeyValue;

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
end;

  Form30.ADOQueryInvMat.Requery;
end;

procedure TForm33.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm33.Button3Click(Sender: TObject);
var  Form7_1: TForm7;
begin

  Form7_1 := TForm7.Create(Application);

  Form7_1.Button4.Visible := true;
  Form7_1.Button1.Visible := false;
  Form7_1.Button2.Visible := false;
  Form7_1.Button3.Visible := false;

  Form7_1.ShowModal;
end;

procedure TForm33.Button4Click(Sender: TObject);
var  Form19_2: TForm19;
begin

  Form29.StaticVar := 1;

  Form19_2 := TForm19.Create(Application);

  Form19_2.Button4.Visible := true;
  Form19_2.Button1.Visible := false;
  Form19_2.Button2.Visible := false;
  Form19_2.Button3.Visible := false;

  with Form19_2.ADOQueryEmployee do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from кадры where ПРАВО_ОТВЕТСТВ_НАКЛАДНОЙ ='+QuotedStr('y'));
    open;
  end;

  Form19_2.ADOQueryEmployee.Requery;

  Form19_2.ShowModal;
end;



procedure TForm33.Button7Click(Sender: TObject);
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

    DBEdit5.Text := ADOQuery2.Fields[1].AsString;
    DBEdit6.Text := ADOQuery2.Fields[2].AsString;
    DBEdit7.Text := ADOQuery2.Fields[3].AsString;

end;

procedure TForm33.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TForm33.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;


procedure TForm33.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

end.
