unit UnitTypeContainer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm10 = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DataSourceTypesContainer: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    ADOQueryTypesContainer: TADOQuery;
    DBEdit1: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses UnitMain, UnitAddTypeContainer, UnitEditTypeContainer;


procedure TForm10.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm10.Action2Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm10.Action3Execute(Sender: TObject);
begin
  Button3Click(Sender);
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  Form11 := TForm11.Create(Application);
  Form11.ShowModal;
end;

procedure TForm10.Button2Click(Sender: TObject);

var h1, h2:string;
begin

  Form12 := TForm12.Create(Application);

  h1 := '%'+Form10.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);


  with Form12.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_?????????? where ??_????_?????????? like'+h2);
    Open;
  end;
  Form12.ShowModal;
  DBGrid2.SetFocus;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin

if DBGrid2.SelectedRows.Count > 0 then
    begin
      case MessageBox(Form10.Handle,'??????? ???????',
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

          ADOQueryTypesContainer.Requery;
          DBGrid2.SetFocus;
        end;
      end
      end
    else
    begin

      MessageBox(Form10.Handle,'???????? ??????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm10.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm10.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm10.Edit2Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form10.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form10.ADOQueryTypesContainer do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_?????????? where ?????_??????? like'+help2+
                                              ' or ?????_?????????? like'+help2+
                                              ' or ?????? like'+help2+
                                              ' or ????? like'+help2+
                                              ' or ?????? like'+help2);
    Open;
  end;

end;

procedure TForm10.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Form10.Close;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  Form10.DBGrid2.SetFocus;
end;


end.
