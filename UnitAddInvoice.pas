unit UnitAddInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList;

type
  TForm29 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    Edit7: TEdit;
    DataSourceBoss: TDataSource;
    ADOQueryBoss: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    DateTimePicker2: TDateTimePicker;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    StaticText1: TStaticText;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DataSourceStartEmp: TDataSource;
    ADOQueryStartEmp: TADOQuery;
    DataSourceFinEmp: TDataSource;
    ADOQueryFinEmp: TADOQuery;
    ADOStoredProcImport: TADOStoredProc;
    ADOStoredProcExport: TADOStoredProc;
    ADOStoredProcMove: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    class var FStaticVar: integer;
  public
    { Public declarations }
     class property StaticVar: integer read FStaticVar write FStaticVar;
      var id_inv: string;

  end;

var
  Form29 : TForm29;

implementation

{$R *.dfm}

uses UnitMain, UnitEmployee, UnitInvMat, UnitMaterials;

procedure TForm29.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm29.Button1Click(Sender: TObject);

var help1, help2, help3, help4 :string;
var Form30: TForm30;
var Form16: TForm16;
begin

help1 := ComboBox1.Text;
help2 := QuotedStr(help1);


help3 := ComboBox3.Text;
help4 := QuotedStr(help3);

with ADOQuery2 do
      begin
        close;
        SQL.Clear;
        SQL.Add('select * from наклад '+
                    'where "Представитель1"='+ help4+' and "Предприятие" ='+help2);
        Open;
      end;


ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

if  Edit7.Text = '' then  begin
    Application.MessageBox('Введите № накладной!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[0].Value := Edit7.Text;

ADOStoredProc1.Parameters.Items[1].Value := DateTimePicker2.DateTime;

if (ComboBox2.Text = 'Отправка') then
ADOStoredProc1.Parameters.Items[2].Value := 0;
if (ComboBox2.Text = 'Перемещение') then
ADOStoredProc1.Parameters.Items[2].Value := 1;
if (ComboBox2.Text = 'Поступление') then
ADOStoredProc1.Parameters.Items[2].Value := 2;

if  ComboBox2.Text = '' then  begin
    Application.MessageBox('Укажите тип накладной!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;

 if  DBEdit1.Text = '' then  begin
    Application.MessageBox('Укажите ответственного сотрудника!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := ADOQueryBoss.FieldByName('ИД_СОТРУДНИКА').AsString;

if ((ComboBox2.Text = 'Отправка') or (ComboBox2.Text = 'Поступление' )) and
  ((Trim(ComboBox1.Text) = '') or (Trim(ComboBox3.Text) = '')) then  begin
    Application.MessageBox('Укажите данные о партнере!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;

if ((ComboBox2.Text = 'Перемещение') and  (
  (Trim(DBEdit2.Text) = '') or (Trim(DBEdit3.Text) = ''))) then  begin
    Application.MessageBox('Укажите ответственных сотрудников за перемещение!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;

Try
  ADOStoredProc1.ExecProc;
  id_inv := ADOStoredProc1.Parameters.Items[4].Value;
except on E: Exception do
  begin
  MessageDlg(E.Message, mtError,[mbOK],0);
  Exit;
  end;
End;

  if (ComboBox2.Text = 'Отправка') then
    begin
          ADOStoredProcExport.Prepared := true;
          ADOStoredProcExport.Parameters.Refresh;

          ADOStoredProcExport.Parameters.Items[0].Value := id_inv;
          ADOStoredProcExport.Parameters.Items[1].Value :=
            ADOQuery2.FieldByName('ИД_ПРЕДСТАВИТЕЛЯ').AsInteger;
          Try
            ADOStoredProcExport.ExecProc;
            Close;
            Form16 := TForm16.Create(Application);

            Form16.Button1.Visible := true;
            Form16.Button2.Visible := false;

            Form16.Caption := 'Отправка материалов';

            with Form16.ADOQueryAU do
             begin
              close;
              SQL.Clear;
              SQL.Add('select * from тм_уе where ИД_ПОМЕЩЕЩЕНИЯ is not null');
              Open;
             end;

            Form16.ShowModal;

            Application.MessageBox('Накладная проведена', 'Транзакция выполнена', MB_OK or MB_ICONINFORMATION);

          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
    end;


  if (ComboBox2.Text = 'Перемещение') then
    begin
          ADOStoredProcMove.Prepared := true;
          ADOStoredProcMove.Parameters.Refresh;
          ADOStoredProcMove.Parameters.Items[0].Value := id_inv;
          ADOStoredProcMove.Parameters.Items[1].Value :=
            ADOQueryStartEmp.FieldByName('ИД_СОТРУДНИКА').AsString;
          ADOStoredProcMove.Parameters.Items[2].Value :=
            ADOQueryFinEmp.FieldByName('ИД_СОТРУДНИКА').AsString;
          Try
            ADOStoredProcMove.ExecProc;
            Close;
            Form16 := TForm16.Create(Application);

            Form16.Button1.Visible := false;
            Form16.Button2.Visible := true;
            Form16.Caption := 'Перемещение материалов';

            with Form16.ADOQueryAU do
             begin
              close;
              SQL.Clear;
              SQL.Add('select * from тм_уе where ИД_ПОМЕЩЕЩЕНИЯ is not null');
              Open;
             end;

            Form16.ShowModal;

            Application.MessageBox('Накладная проведена', 'Транзакция выполнена', MB_OK or MB_ICONINFORMATION);

          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
    end;
  if (ComboBox2.Text = 'Поступление') then
    begin
          ADOStoredProcImport.Prepared := true;
          ADOStoredProcImport.Parameters.Refresh;
          ADOStoredProcImport.Parameters.Items[0].Value := id_inv;
          ADOStoredProcImport.Parameters.Items[1].Value :=
            ADOQuery2.FieldByName('ИД_ПРЕДСТАВИТЕЛЯ').AsString;
          Try
            ADOStoredProcImport.ExecProc;
            Close;
            Form30 := TForm30.Create(Application);
            // id_inv
            with Form30.ADOQueryInvMat do
            begin
              close;
              SQL.Clear;
              SQL.Add('select * from тм_уе '+
                          'where ИД_НАКЛАДНОЙ='+QuotedStr(id_inv) );
              Open;
            end;

            Form30.ADOQueryInvMat.Requery;
            Form30.ShowModal;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
    end;
end;

procedure TForm29.Button2Click(Sender: TObject);
begin
  Close;
end;





procedure TForm29.Button3Click(Sender: TObject);
var  Form19_1: TForm19;
begin

  Form29.StaticVar := 0;

  Form19_1 := TForm19.Create(Application);

  Form19_1.Button4.Visible := true;
  Form19_1.Button1.Visible := false;
  Form19_1.Button2.Visible := false;
  Form19_1.Button3.Visible := false;

  with Form19_1.ADOQueryEmployee do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from кадры where "Работающий"='+QuotedStr('y')+
                    ' and ПРАВО_ОТВЕТСТВ_НАКЛАДНОЙ ='+QuotedStr('y'));
    open;
  end;

  Form19_1.ADOQueryEmployee.Requery;

  Form19_1.ShowModal;
end;





procedure TForm29.Button4Click(Sender: TObject);
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
    SQL.Add('select * from кадры where "Работающий"='+QuotedStr('y')+
                    ' and ПРАВО_ОТВЕТСТВ_НАКЛАДНОЙ ='+QuotedStr('y'));
    open;
  end;

  Form19_2.ADOQueryEmployee.Requery;

  Form19_2.ShowModal;
end;


procedure TForm29.Button5Click(Sender: TObject);
var  Form19_3: TForm19;
begin

  Form29.StaticVar := 2;

  Form19_3 := TForm19.Create(Application);

  Form19_3.Button4.Visible := true;
  Form19_3.Button1.Visible := false;
  Form19_3.Button2.Visible := false;
  Form19_3.Button3.Visible := false;

  with Form19_3.ADOQueryEmployee do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from кадры where "Работающий"='+QuotedStr('y')+
                    ' and ПРАВО_ОТВЕТСТВ_НАКЛАДНОЙ ='+QuotedStr('y'));
    open;
  end;

  Form19_3.ADOQueryEmployee.Requery;

  Form19_3.ShowModal;
end;


procedure TForm29.ComboBox1Change(Sender: TObject);
  var help1, help2 :string;
begin
  if ComboBox1.Text = '' then
    begin
      ComboBox3.Enabled := false;
      ComboBox3.Text := '';
    end
  else
    begin
      ComboBox3.Enabled := true;
      ComboBox3.Text := '';

      help1 := ComboBox1.Text;
      help2 := QuotedStr(help1);

      ComboBox3.Items.Clear;
      with ADOQuery2 do
      begin
        close;
        SQL.Clear;
        SQL.Add('select distinct "Представитель1" from наклад '+
                    'where "Представитель1" is not null and "Предприятие" ='+help2);
        Open;
      end;

      while not ADOQuery2.Eof do begin
        ComboBox3.Items.Add(ADOQuery2.FieldByName('Представитель1').AsString);
        ADOQuery2.Next;
      end;
    end;
end;

procedure TForm29.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TForm29.ComboBox2Change(Sender: TObject);
begin

  if (ComboBox2.Text = 'Поступление') or  (ComboBox2.Text = 'Отправка') then
    begin
        Label5.Visible := false;  Label6.Visible := false;
        DBEdit2.Visible := false;  DBEdit3.Visible := false;
        DBEdit2.Visible := false;  DBEdit3.Visible := false;
        Button4.Visible := false; Button5.Visible := false;

        Panel4.Visible := true;

        if (ComboBox2.Text = 'Поступление') then
          begin
            Button1.Caption :=  'Поступление';
            Button1.ImageIndex := 8;
          end
        else
          begin
            Button1.Caption :=  'Отправка';
            Button1.ImageIndex := 5;
          end;

    end;

  if ComboBox2.Text = 'Перемещение' then
    begin
        Label5.Visible := true;  Label6.Visible := true;
        DBEdit2.Visible := true;  DBEdit3.Visible := true;
        DBEdit2.Visible := true;  DBEdit3.Visible := true;
        Button4.Visible := true; Button5.Visible := true;

        Panel4.Visible := false;

        Button1.Caption :=  'Перемещение';
        Button1.ImageIndex := 6;
    end;

    Button1.Enabled := true;

end;

procedure TForm29.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;


procedure TForm29.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TForm29.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Clear;
  with ADOQuery1 do
    begin
      close;
      SQL.Clear;
      SQL.Add('select distinct "Предприятие" from наклад '+
      'where "Предприятие" is not null');
      Open;

      while not ADOQuery1.Eof do begin
        ComboBox1.Items.Add(ADOQuery1.Fields[0].AsString);
        ADOQuery1.Next;
      end;
    end;

  ComboBox1.Text := '';
  ComboBox3.Text := '';
  ComboBox3.Enabled := false;

  Button1.Enabled := false;

  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';

end;

end.
