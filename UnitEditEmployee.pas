unit UnitEditEmployee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList;

type
  TForm23 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DataSourcePosts: TDataSource;
    ADOQueryPosts: TADOQuery;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Panel3: TPanel;
    Label12: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSourceBoss: TDataSource;
    ADOQueryBoss: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    Button4: TButton;
    CheckBox2: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit1: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form23 : TForm23;

implementation

{$R *.dfm}

uses UnitMain, UnitEmployee;

procedure TForm23.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm23.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form19.DBEdit1.Text;

if CheckBox2.Checked then
  ADOStoredProc1.Parameters.Items[1].Value := ADOQueryBoss.Fields[0].Text
else
  ADOStoredProc1.Parameters.Items[1].Value := null;

if  DBLookupComboBox1.Text = '' then  begin
    Application.MessageBox('Выберите должность сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := DBLookupComboBox1.KeyValue;


if  Edit3.Text = '' then  begin
    Application.MessageBox('Введите фамилию сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := Edit3.Text;

if  Edit4.Text = '' then  begin
    Application.MessageBox('Введите имя сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := Edit4.Text;

if  Edit5.Text = '' then  begin
    Application.MessageBox('Введите отчество сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := Edit5.Text;

ADOStoredProc1.Parameters.Items[6].Value := DateTimePicker1.Date;
ADOStoredProc1.Parameters.Items[7].Value := ComboBox1.Text;
ADOStoredProc1.Parameters.Items[8].Value := Memo1.Text;

if  StringReplace(Trim(MaskEdit1.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase])  = '' then  begin
    Application.MessageBox('Введите паспортные данные сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[9].Value := StringReplace(Trim(MaskEdit1.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase]);

if  Trim(MaskEdit3.Text) = '' then  begin
    Application.MessageBox('Введите ИНН сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;

ADOStoredProc1.Parameters.Items[10].Value := MaskEdit3.Text;

if StringReplace(StringReplace(Trim(MaskEdit2.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase]), '-', '',
  [rfReplaceAll, rfIgnoreCase]) = '' then  begin
    Application.MessageBox('Введите СНИЛС сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[11].Value := MaskEdit2.Text;

if  Edit2.Text = '' then  begin
    Application.MessageBox('Введите табельный № сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[12].Value := Edit2.Text;

if CheckBox1.Checked = true then
  ADOStoredProc1.Parameters.Items[13].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[13].Value := 'n';

Try
  ADOStoredProc1.ExecProc;

  Form19.ADOQueryEmployee.Requery;

  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm23.Button4Click(Sender: TObject);
var  Form19_1: TForm19;
begin
  Form19_1 := TForm19.Create(Application);

  Form19_1.Button4.Visible := true;
  Form19_1.Button1.Visible := false;
  Form19_1.Button2.Visible := false;
  Form19_1.Button3.Visible := false;

  Form19_1.ShowModal;
end;



procedure TForm23.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    begin
        Edit1.Visible := true;
        Button4.Visible := true;
    end
  else
    begin
        Edit1.Visible := false;
        Button4.Visible := false;
    end;
end;

procedure TForm23.FormCreate(Sender: TObject);
begin

if Form19.ADOQueryEmployee.FieldByName('Работающий').AsString = 'y' then
  CheckBox1.Checked := true
else
  CheckBox1.Checked := false;

if Trim(Form19.ADOQueryEmployee.FieldByName('ФИО руководителя').AsString) = '' then
  begin
    CheckBox2.State := cbUnchecked;
    Edit1.Visible := false;
    Button4.Visible := false;
    repaint;
  end
else
  Edit1.Text := Form19.ADOQueryEmployee.FieldByName('ФИО руководителя').AsString;


DBLookupComboBox1.KeyValue :=
  Form19.ADOQueryEmployee.FieldByName('ИД_Должности').AsInteger;

DateTimePicker1.Date :=  Form19.ADOQueryEmployee.FieldByName('Дата рождения').AsDateTime;

ComboBox1.Text := Form19.ADOQueryEmployee.FieldByName('Пол').AsString;

Memo1.Text := Form19.ADOQueryEmployee.FieldByName('Адрес').AsString;

Edit2.Text := Form19.ADOQueryEmployee.FieldByName('Табельный №').AsString;

Edit3.Text := Form19.ADOQueryEmployee.FieldByName('Фамилия').AsString;

Edit4.Text := Form19.ADOQueryEmployee.FieldByName('Имя').AsString;

Edit5.Text := Form19.ADOQueryEmployee.FieldByName('Отчество').AsString;

MaskEdit1.Text :=
  Form19.ADOQueryEmployee.FieldByName('Паспорт').AsString.Substring(0,4) +
  ' ' + Form19.ADOQueryEmployee.FieldByName('Паспорт').AsString.Substring(4,10);

MaskEdit2.Text :=
  Form19.ADOQueryEmployee.FieldByName('СНИЛС').AsString.Substring(0,3) +
  '-' + Form19.ADOQueryEmployee.FieldByName('СНИЛС').AsString.Substring(4,6) +
  '-' + Form19.ADOQueryEmployee.FieldByName('СНИЛС').AsString.Substring(7,9) +
  ' ' + Form19.ADOQueryEmployee.FieldByName('СНИЛС').AsString.Substring(10,11);

MaskEdit3.Text := Form19.ADOQueryEmployee.FieldByName('ИНН').AsString;
end;

end.
