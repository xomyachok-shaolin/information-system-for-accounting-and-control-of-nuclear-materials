unit UnitInvMat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm30 = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DataSourceInvMat: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    ADOQueryInvMat: TADOQuery;
    DBEdit1: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

uses UnitMain, UnitAddInvMat, UnitEditInvMat;

procedure TForm30.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm30.Action2Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm30.Action3Execute(Sender: TObject);
begin
   Button3Click(Sender);
end;

procedure TForm30.Button1Click(Sender: TObject);
begin
  Form31 := TForm31.Create(Application);
  Form31.ShowModal;

  ADOQueryInvMat.Requery;
end;

procedure TForm30.Button2Click(Sender: TObject);
var h1, h2, h3, h4:string;
begin

  if DBGrid2.DataSource.DataSet.IsEmpty then
    begin
      MessageBox(Form30.Handle,'?????? ?? ???????!',
        '??????',MB_OK or MB_ICONERROR);
      Exit;
    end;

  Form33 := TForm33.Create(Application);

  h1 := '%'+DBEdit1.Text+'%';
  h2 := QuotedStr(h1);

  with Form33.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where ??_?? like'+h2);
    Open;
  end;

  Form33.Edit7.Text := Form33.ADOQuery1.Fields[0].AsString;

  with Form33.ADOQuery2 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where ??_?? like'+h2);
    Open;
  end;

  Form33.DBLookupComboBox1.KeyValue :=
    Form33.ADOQuery2.FieldByName('??_????_??????????').AsInteger;

  Form33.ComboBox1.Text :=  Form33.ADOQuery2.FieldByName('?????').AsString;

  Form33.Edit1.Text := Form33.ADOQuery2.FieldByName('??? ?????').AsString;

  Form33.DBLookupComboBox2.KeyValue :=
    Form33.ADOQuery2.FieldByName('??_?????').AsInteger;

  Form33.ShowModal;

  ADOQueryInvMat.Requery;


end;

procedure TForm30.Button3Click(Sender: TObject);
begin

if DBGrid2.SelectedRows.Count > 0 then
    begin
      case MessageBox(Form30.Handle,'??????? ?????? ?? ???',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc1.Prepared := true;
          ADOStoredProc1.Parameters.Refresh;
          ADOStoredProc1.Parameters.Items[0].Value := DBEdit1.Text;
          Try
            ADOStoredProc1.ExecProc;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;

          ADOQueryInvMat.Requery;
          DBGrid2.SetFocus;
        end;
      end
      end
    else
    begin

      MessageBox(Form30.Handle,'?????? ?? ???????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm30.Button7Click(Sender: TObject);
begin

  Application.MessageBox('????????? ?????????', '?????????? ?????????', MB_OK or MB_ICONINFORMATION);

  Close;
end;

procedure TForm30.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm30.Edit2Change(Sender: TObject);

var help1, help2 :string;
begin

  help1 := '%'+Form30.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form30.ADOQueryInvMat do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where "???????? ? ??" like'+help2);
    Open;
  end;
end;

end.
