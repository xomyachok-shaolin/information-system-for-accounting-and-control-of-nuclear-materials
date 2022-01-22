unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ImageList1: TImageList;
    ADOConnection1: TADOConnection;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Button5: TButton;
    Panel4: TPanel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Panel5: TPanel;
    Button3: TButton;
    ImageList2: TImageList;
    Button4: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Panel6: TPanel;
    Button6: TButton;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitPartners, UnitTypesMaterial, UnitTypeContainer, UnitWeighers, UnitMaterials,
  UnitLocations,
  UnitPosts, UnitEmployee,
  UnitInvoice;

procedure TForm1.N10Click(Sender: TObject);
begin
  Form18 := TForm18.Create(Application);
  Form18.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Form19 := TForm19.Create(Application);
  Form19.ShowModal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  Form28 := TForm28.Create(Application);
  Form28.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Form2 := TForm2.Create(Application);
  Form2.ShowModal;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Form7 := TForm7.Create(Application);
  Form7.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form10 := TForm10.Create(Application);
  Form10.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form13 := TForm13.Create(Application);
  Form13.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form16 := TForm16.Create(Application);
  Form16.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Form17 := TForm17.Create(Application);
  Form17.ShowModal;
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
   N2Click(Sender);
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  N3Click(Sender);
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
  N5Click(Sender);
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
  N4Click(Sender);
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
  N6Click(Sender);
end;

procedure TForm1.Action6Execute(Sender: TObject);
begin
  N8Click(Sender);
end;

procedure TForm1.Action7Execute(Sender: TObject);
begin
  N10Click(Sender);
end;

procedure TForm1.Action8Execute(Sender: TObject);
begin
  N11Click(Sender);
end;

procedure TForm1.Action9Execute(Sender: TObject);
begin
  N13Click(Sender);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  N3Click(Sender);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
    N5Click(Sender);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  N4Click(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  N10Click(Sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  N11Click(Sender);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  N6Click(Sender);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  N8Click(Sender);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  N2Click(Sender);
end;
end.
