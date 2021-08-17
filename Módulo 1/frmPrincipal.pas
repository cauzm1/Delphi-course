unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TfrmSistema = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    Panel1: TPanel;
    Btn_CadastroProduto_Imprimir: TButton;
    Btn_CadastroProduto_Salvar: TButton;
    Btn_CadastroProduto_Editar: TButton;
    StatusBar1: TStatusBar;
    Produtos1: TMenuItem;
    Image1: TImage;
    procedure Btn_CadastroProduto_EditarClick(Sender: TObject);
    procedure Btn_CadastroProduto_SalvarClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure Btn_CadastroProduto_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    a :string;
  end;

var
  frmSistema: TfrmSistema;

implementation

{$R *.dfm}

uses frmCadastroProdutos;

procedure TfrmSistema.Btn_CadastroProduto_EditarClick(Sender: TObject);
var vendas, media :integer;
var mensagemboa, mensagemruim:string;
begin
vendas := 15;
media := 10;
mensagemboa:='Satisfatório';
mensagemruim:='Insatisfatório';

if vendas>=media then
begin
showmessage(mensagemboa);
end
else
begin
  showmessage(mensagemruim);
end;
end;

procedure TfrmSistema.Btn_CadastroProduto_ImprimirClick(Sender: TObject);
begin
a:= 'mensagem 1';
showmessage(a);
end;

procedure TfrmSistema.Btn_CadastroProduto_SalvarClick(Sender: TObject);
var a:string;
var b:integer;
begin
a:='fora dos valores';
b:= 50;
case b of
10: a:='vale 10';
50: a:='vale 50';
100: a:='vale 100';
end;
showmessage(a);
end;

procedure TfrmSistema.Produtos1Click(Sender: TObject);
begin
frmCadastroProduto:= TfrmCadastroProduto.Create(nil);
try
  frmCadastroProduto.ShowModal;
finally
FreeAndNil(frmCadastroProduto);
end;
end;

procedure TfrmSistema.SairClick(Sender: TObject);
begin
close;
end;

end.
