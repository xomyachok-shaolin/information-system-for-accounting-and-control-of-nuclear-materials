unit UnitEditLocation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.DBCGrids, System.Actions,
  Vcl.ActnList;

type
  TForm25 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    ADOQueryBoss: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    Button4: TButton;
    DataSourceBoss: TDataSource;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form25 : TForm25;

implementation

{$R *.dfm}

uses UnitMain, UnitLocations, UnitEmployee;

procedure TForm25.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm25.Button1Click(Sender: TObject);

begin
ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form17.DBEdit1.Text;

if  ComboBox1.Text = '' then  begin
    Application.MessageBox('Выберите ЗБМ!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := ComboBox1.Text;

if  ComboBox2.Text = '' then  begin
    Application.MessageBox('Выберите здание!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := ComboBox2.Text;

if  ComboBox3.Text = '' then  begin
    Application.MessageBox('Выберите помещение!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := ComboBox3.Text;

ADOStoredProc1.Parameters.Items[4].Value :=
  ADOQueryBoss.FieldByName('ИД_СОТРУДНИКА').AsString;


Try
  ADOStoredProc1.ExecProc;

  Form17.ADOQueryLocation.Requery;
  Form17.DBGrid1.SetFocus;

  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;
end;

procedure TForm25.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm25.Button4Click(Sender: TObject);
var  Form19_1: TForm19;
begin
  Form19_1 := TForm19.Create(Application);

  Form19_1.Button4.Visible := true;
  Form19_1.Button1.Visible := false;
  Form19_1.Button2.Visible := false;
  Form19_1.Button3.Visible := false;

  Form19_1.ShowModal;
end;

procedure TForm25.ComboBox1Change(Sender: TObject);
var help1, help2 :string;
begin
  if ComboBox1.Text = '' then
    begin
      ComboBox2.Enabled := false;
      ComboBox3.Enabled := false;
      ComboBox2.Text := '';
      ComboBox3.Text := '';
    end
  else
    begin
      ComboBox2.Enabled := true;
      ComboBox3.Enabled := false;
      ComboBox2.Text := '';
      ComboBox3.Text := '';

      help1 := ComboBox1.Text;
      help2 := QuotedStr(help1);

      ComboBox2.Items.Clear;
      with ADOQuery2 do
      begin
        close;
        SQL.Clear;
        SQL.Add('select distinct "Здание" from местополож where "Здание" is not null and "ЗБМ" ='+help2);
        Open;
      end;

      while not ADOQuery2.Eof do begin
        ComboBox2.Items.Add(ADOQuery2.Fields[0].AsString);
        ADOQuery2.Next;
      end;
    end;
end;

procedure TForm25.ComboBox2Change(Sender: TObject);

var help1, help2, help3, help4 :string;
begin
  if ComboBox2.Text = '' then
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

      help3 := ComboBox2.Text;
      help4 := QuotedStr(help3);

        ComboBox3.Items.Clear;
        with ADOQuery3 do
        begin
          close;
          SQL.Clear;
          SQL.Add('select distinct "Помещение" from местополож where "Помещение" is not null'+
                                        ' and "Здание"='+help4+
                                        ' and "ЗБМ"='+help2);
          Open;
        end;

        while not ADOQuery3.Eof do begin
          ComboBox3.Items.Add(ADOQuery3.Fields[0].AsString);
          ADOQuery3.Next;
        end
    end;
end;

procedure TForm25.FormCreate(Sender: TObject);
begin

  ComboBox1.Items.Clear;
  with ADOQuery1 do
    begin
      close;
      SQL.Clear;
      SQL.Add('select distinct "ЗБМ" from местополож where "ЗБМ" is not null');
      Open;

      while not ADOQuery1.Eof do begin
        ComboBox1.Items.Add(ADOQuery1.Fields[0].AsString);
        ADOQuery1.Next;
      end;
    end;



end;

end.
