unit UnitEditWeigher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses UnitMain, UnitWeighers;

procedure TForm15.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm15.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  DateTimePicker1.DateTime := ADOQuery1.FieldByName('Дата_калибровки').Value;
end;

procedure TForm15.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form13.DBEdit1.Text;
if  DBEdit1.Text = '' then  begin
    Application.MessageBox('Введите инвентарный № весов!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := DBEdit1.Text;
if  DBEdit2.Text = '' then begin
    Application.MessageBox('Введите предел весов (макс. допустимый вес)!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := DBEdit2.Text;
if  DBEdit3.Text = '' then begin
    Application.MessageBox('Введите погрешность весов!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := DBEdit3.Text;
if  DBEdit4.Text = '' then begin
    Application.MessageBox('Введите серийный № весов!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := DBEdit4.Text;
if  DBEdit5.Text = '' then begin
    Application.MessageBox('Введите марку весов!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[6].Value := DBEdit5.Text;
if  DateTimePicker1.Time = Null then begin
    Application.MessageBox('Введите дату калибровки весов!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := DateTimePicker1.DateTime;

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;

  Form13.ADOQueryWeighers.Requery;
  Form13.DBGrid2.SetFocus;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
