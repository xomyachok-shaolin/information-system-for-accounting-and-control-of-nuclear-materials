unit UnitTypesMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm7 = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DataSourceTypesMaterial: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button4: TButton;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    ADOQueryTypesMaterial: TADOQuery;
    DBEdit1: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses UnitMain, UnitAddTypeMaterial, UnitEditTypeMaterial, UnitAddLimit, UnitAddInvMat;


procedure TForm7.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm7.Action2Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm7.Action3Execute(Sender: TObject);
begin
  Button3Click(Sender);
end;

procedure TForm7.Action4Execute(Sender: TObject);
begin
  Button4Click(Sender);
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Form8 := TForm8.Create(Application);
  Form8.ShowModal;
end;

procedure TForm7.Button2Click(Sender: TObject);

var h1, h2:string;
begin
  Form9 := TForm9.Create(Application);

  h1 := '%'+Form7.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);
  with Form9.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ??_????_????????? like'+h2);
    Open;
  end;
  Form9.ShowModal;
  DBGrid2.SetFocus;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin

if DBGrid2.SelectedRows.Count > 0 then
    begin
      case MessageBox(Form7.Handle,'??????? ???????',
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

          ADOQueryTypesMaterial.Requery;
          DBGrid2.SetFocus;
        end;
      end
      end
    else
    begin

      MessageBox(Form7.Handle,'???????? ??????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm7.Button4Click(Sender: TObject);

var h1, h2:string;

begin

  h1 := DBEdit1.Text;
  h2 := QuotedStr(h1);

  with Form26.ADOQueryTypesMaterial do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ??_????_????????? = '+h2);
    open;
  end;

  with Form31.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ??_????_????????? = '+h2);
    open;
  end;

  close;

end;

procedure TForm7.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm7.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm7.Edit2Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form7.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form7.ADOQueryTypesMaterial do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ????????_????????? like'+help2+
                                              ' or ???_????_????????? like'+help2+
                                              ' or ???_???????_???????? like'+help2);
    Open;
  end;

end;


end.
