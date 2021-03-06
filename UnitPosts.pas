unit UnitPosts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TForm18 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DataSourcePosts: TDataSource;
    ADOQueryPosts: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    ActionList1: TActionList;
    AddInsert: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button7Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure AddInsertExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses UnitMain, UnitAddPost, UnitEditPost;

procedure TForm18.AddInsertExecute(Sender: TObject);
begin
          Application.MessageBox('???????? ??????!',
        '??????',MB_OK );
end;

procedure TForm18.Button1Click(Sender: TObject);
begin
  Form20 := TForm20.Create(Application);
  Form20.ShowModal;
end;

procedure TForm18.Button2Click(Sender: TObject);

var h1, h2:string;
begin

  Form21 := TForm21.Create(Application);

  h1 := '%'+Form18.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);


  with Form21.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????????? where ??_????????? like'+h2);
    Open;
  end;
  Form21.ShowModal;
  DBGrid2.SetFocus;
end;

procedure TForm18.Button3Click(Sender: TObject);
begin

      case MessageBox(Form18.Handle,'??????? ?????? ? ??????????',
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

          ADOQueryPosts.Requery;
          DBGrid2.SetFocus;
        end;
      end
end;

procedure TForm18.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm18.DBGrid2ColExit(Sender: TObject);
begin
  if DBGrid2.SelectedField.FieldName = DBCheckBox1.DataField then
    begin
    DBCheckBox1.Visible := False
    end;
  if DBGrid2.SelectedField.FieldName = DBCheckBox2.DataField then
    DBCheckBox2.Visible := False
end;

procedure DrawGridCheckBox(Canvas: TCanvas; Rect: TRect; Checked: boolean);
var
  DrawFlags: Integer;
begin
  Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, ' ');
  DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT);
  DrawFlags := DFCS_BUTTONCHECK or DFCS_ADJUSTRECT;// DFCS_BUTTONCHECK
  if Checked then
    DrawFlags := DrawFlags or DFCS_CHECKED;
  DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DrawFlags);
end;

procedure TForm18.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.FieldName = '?????_????????_?????????') or
    (Column.FieldName = '?????_????????_?????????') then // ????????????? ??? ????

    if Column.Field.AsString = 'y' then
      DrawGridCheckBox(DBGrid2.Canvas, Rect, true)
    else
      DrawGridCheckBox(DBGrid2.Canvas, Rect, false);
end;

procedure TForm18.Edit2Change(Sender: TObject);
var help1, help2 :string;
begin

  help1 := '%'+Form18.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form18.ADOQueryPosts do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????????? where ???????????? like '+help2);
    Open;
  end;
end;

procedure TForm18.FormCreate(Sender: TObject);
begin

  DBCheckBox1.DataSource := DataSourcePosts;
  DBCheckBox1.DataField  := '?????_????????_?????????';
  DBCheckBox1.Visible    := False;
  DBCheckBox1.Caption    := '';

  DBGrid2.Focused;

end;

end.
