unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, ExtDlgs, Menus;

type
  TfmWinapi = class(TForm)
    btnRefresh: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    pcWndInfo: TPageControl;
    tsMain: TTabSheet;
    tsWndStyle: TTabSheet;
    tsExWndStyle: TTabSheet;
    tsClassStyle: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Bevel1: TBevel;
    edWText: TEdit;
    lbWClass: TLabel;
    lbWHandle: TLabel;
    lbWHMenu: TLabel;
    imWIcon: TImage;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel18: TBevel;
    lbWHinst: TLabel;
    edPWText: TEdit;
    lbPWHandle: TLabel;
    edWWidth: TEdit;
    EdWHeight: TEdit;
    edWTop: TEdit;
    edWLeft: TEdit;
    edWBottom: TEdit;
    lbWProcId: TLabel;
    lbWDC: TLabel;
    edWRight: TEdit;
    Label18: TLabel;
    Bevel15: TBevel;
    lvWndStyle: TListView;
    lvExWndStyle: TListView;
    lvClassStyle: TListView;
    odIcon: TOpenPictureDialog;
    btnApply: TSpeedButton;
    tvList: TTreeView;
    pmWIcon: TPopupMenu;
    pmSave: TMenuItem;
    sdIcon: TSavePictureDialog;
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
    procedure btnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvListCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvListDblClick(Sender: TObject);
    procedure pcWndInfoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure imWIconClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure pmSaveClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure BuildTree;
    procedure GetWindowParams(Wnd: HWND);
    procedure GetWindowExParams(Wnd: HWND);
  end;

var
  fmWinapi: TfmWinapi;
  tnCurrent: TTreeNode;
  SelWindow: HWND;

implementation
var
 SelDC: HDC;

 NewStyle: LongInt;
 NewExStyle: LongInt;
 NewClassStyle: LongInt;

{$R *.dfm}

function GetIcon(wnd:hwnd):TIcon;
begin
result:=TIcon.Create;
result.Handle:=GetClassLong(wnd,GCL_HICON);
end;

procedure SetIcon(wnd:hwnd; icon:TIcon);
begin
postmessage(wnd,wm_seticon,0,icon.Handle);
end;

function GetText(wnd:hwnd):string;
var p:array [0..256] of char;
begin
with fmWinAPi do
GetWindowText(wnd,p,255);
result:=strpas(p);
end;

procedure TfmWinapi.GetWindowParams(Wnd: HWND);
var
 I, WL: LongInt;

begin
 WL:= GetWindowLong(wnd, GWL_STYLE);
 for I:= 0 to lvWndStyle.Items.Count -1 do
  if ((LongInt(lvWndStyle.Items[i].Data)) and WL) <> 0 then lvWndStyle.Items[i].Checked:= True else lvWndStyle.Items[i].Checked:= False;

 WL:= GetWindowLong(wnd, GWL_EXSTYLE);
 for I:= 0 to lvExWndStyle.Items.Count -1 do
  if ((LongInt(lvExWndStyle.Items[i].Data)) and WL) <> 0 then lvExWndStyle.Items[i].Checked:= True else lvExWndStyle.Items[i].Checked:= False;

 WL:= GetClassLong(wnd, GCL_STYLE);
 for I:= 0 to lvClassStyle.Items.Count -1 do
  if ((LongInt(lvClassStyle.Items[i].Data)) and WL) <> 0 then lvClassStyle.Items[i].Checked:= True else lvClassStyle.Items[i].Checked:= False;
end;


procedure TfmWinapi.GetWindowExParams(Wnd: HWND);
var
 PParam: array[0..127] of Char;
 ProcId: LongInt;
 hInst: THandle;
 Rct: TRect;
begin
edWText.Text:= GetText(wnd); //Caption
GetClassName(wnd, PParam, 128); //Class
lbWClass.caption:= StrPas(PParam); //Class
lbWHandle.caption:= IntToStr(wnd); //Handle
lbWHmenu.caption:=IntToStr(GetMenu(wnd));// HMenu
ImWIcon.Picture.Icon:=GetIcon(wnd);
GetWindowText(GetParent(wnd), PParam, 127);//Parent Text
EdPWText.text:= StrPas(PParam); //Parent Text
lbPWHandle.caption:= IntToStr(GetParent(wnd));//Parent Handle
GetWindowRect(Wnd, Rct);
edWLeft.text:= IntToStr(Rct.Left);//Left
edWTop.text:= IntToStr(Rct.Top);//Top
edWWidth.text:= IntToStr(Rct.Right-Rct.Left);//Width
edWHeight.text:= IntToStr(Rct.Bottom-Rct.Top);//Height
edWRight.text:= IntToStr(Rct.Right);//Right
edWBottom.text:= IntToStr(Rct.Bottom);//Bottom
lbWDC.Caption:= IntToStr(SelDC); //DC
hInst:= GetWindowLong((wnd), GWL_HINSTANCE);//HInstance
lbWHinst.Caption:= IntToStr(hInst);
GetWindowThreadProcessId(wnd, @ProcId);
lbWProcId.Caption:= IntToStr(ProcId);//ProcId

end;

function ChildTree(Handle: HWND; Info: Pointer): BOOL; stdcall;
var
 Text: array [0..256] of Char;
 tnParent: TTreeNode;
begin
 GetWindowText(handle, text, 200);
 if Text <> '' then
  tnParent:= fmWinapi.tvList.Items.AddChildObject(tnCurrent, StrPas(Text), TObject(Handle))
 else begin
  GetClassName(Handle,text,255);
  tnParent:= fmWinapi.tvList.Items.AddChildObject(tnCurrent,text, TObject(Handle));
end;
 tnParent.ImageIndex:= 1;
 tnParent.SelectedIndex:= 1;
 Result:= True;
end;

function ParentTree(Handle: HWND; Info: Pointer): BOOL; stdcall;
var
 Text: array [0..256] of Char;
 tnParent: TTreeNode;
begin
 GetWindowText(handle, text, 200);
 if (Text <> '') then
  tnParent:= fmWinapi.tvList.Items.AddObject(nil, StrPas(Text), TObject(Handle))
 else begin
  GetClassName(Handle,text,255);
  tnParent:= fmWinapi.tvList.Items.AddObject(nil, text, TObject(Handle));
  end;
 tnParent.ImageIndex:= 0;
 tnParent.SelectedIndex:= 0;
 Result:= True;
end;

procedure TfmWinapi.BuildTree;
var
 i: integer;
begin
  tvList.Items.Clear;
  EnumWindows(@ParentTree, 0);
  for i:= 0 to tvList.Items.Count do begin
      tnCurrent:= tvList.Items[i];
    EnumChildWindows(Integer(tvList.Items[i].Data), @ChildTree, 0);
  end;
end;

procedure TfmWinapi.btnRefreshClick(Sender: TObject);
begin
BuildTree;
end;

procedure TfmWinapi.FormCreate(Sender: TObject);
var
 ListItem: TListItem;
begin
 btnRefresh.Click;
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_POPUP';         ListItem.Data:= TObject($80000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_CHILD';         ListItem.Data:= TObject($40000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_MINIMIZE';      ListItem.Data:= TObject($20000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_VISIBLE';       ListItem.Data:= TObject($10000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_DISABLED';      ListItem.Data:= TObject($8000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_CLIPSIBLINGS';  ListItem.Data:= TObject($4000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_CLIPCHILDREN';  ListItem.Data:= TObject($2000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_MAXIMIZE';      ListItem.Data:= TObject($1000000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_CAPTION';       ListItem.Data:= TObject($C00000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_BORDER';        ListItem.Data:= TObject($800000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_DLGFRAME';      ListItem.Data:= TObject($400000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_VSCROLL';       ListItem.Data:= TObject($200000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_HSCROLL';       ListItem.Data:= TObject($100000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_SYSMENU';       ListItem.Data:= TObject($80000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_THICKFRAME';    ListItem.Data:= TObject($40000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_GROUP';         ListItem.Data:= TObject($20000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_TABSTOP';       ListItem.Data:= TObject($10000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_MINIMIZEBOX';   ListItem.Data:= TObject($20000);
 ListItem:= lvWndStyle.Items.Add;  ListItem.Caption:= 'WS_MAXIMIZEBOX';   ListItem.Data:= TObject($10000);

 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_DLGMODALFRAME';  ListItem.Data:= TObject(1);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_NOPARENTNOTIFY'; ListItem.Data:= TObject(4);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_TOPMOST';        ListItem.Data:= TObject(8);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_ACCEPTFILES';    ListItem.Data:= TObject($10);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_TRANSPARENT';    ListItem.Data:= TObject($20);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_MDICHILD';       ListItem.Data:= TObject($40);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_TOOLWINDOW';     ListItem.Data:= TObject($80);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_WINDOWEDGE';     ListItem.Data:= TObject($100);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_CLIENTEDGE';     ListItem.Data:= TObject($200);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_CONTEXTHELP';    ListItem.Data:= TObject($400);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_RIGHT';          ListItem.Data:= TObject($1000);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_RTLREADING';     ListItem.Data:= TObject($2000);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_LEFTSCROLLBAR';  ListItem.Data:= TObject($4000);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_CONTROLPARENT';  ListItem.Data:= TObject($10000);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_STATICEDGE';     ListItem.Data:= TObject($20000);
 ListItem:= lvExWndStyle.Items.Add;  ListItem.Caption:= 'WS_EX_APPWINDOW';      ListItem.Data:= TObject($40000);

 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_VREDRAW';         ListItem.Data:= TObject(1);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_HREDRAW';         ListItem.Data:= TObject(2);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_KEYCVTWINDOW';    ListItem.Data:= TObject(4);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_DBLCLKS';         ListItem.Data:= TObject(8);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_OWNDC';           ListItem.Data:= TObject($20);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_CLASSDC';         ListItem.Data:= TObject($40);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_PARENTDC';        ListItem.Data:= TObject($80);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_NOKEYCVT';        ListItem.Data:= TObject($100);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_NOCLOSE';         ListItem.Data:= TObject($200);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_SAVEBITS';        ListItem.Data:= TObject($800);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_BYTEALIGNCLIENT'; ListItem.Data:= TObject($1000);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_BYTEALIGNWINDOW'; ListItem.Data:= TObject($2000);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_GLOBALCLASS';     ListItem.Data:= TObject($4000);
 ListItem:= lvClassStyle.Items.Add;  ListItem.Caption:= 'CS_IME';             ListItem.Data:= TObject($10000);

end;

procedure TfmWinapi.tvListCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 if IsWindowVisible(LongInt(Node.Data)) then Sender.Canvas.Font.Color:= clBlack
                                        else Sender.Canvas.Font.Color:= clGray;
end;

procedure TfmWinapi.tvListDblClick(Sender: TObject);
begin
  SelWindow:= LongInt(tvList.Selected.Data);
  selDC:=GetDC(SelWindow);
  GetWindowParams(SelWindow);
  GetWindowExParams(SelWindow);
end;

procedure TfmWinapi.pcWndInfoChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
if SelWIndow=0 then AllowChange:=false;
end;

procedure TfmWinapi.imWIconClick(Sender: TObject);
begin
if imWIcon.Picture.Icon.Empty then Exit;
if odicon.Execute then
imWIcon.Picture.Icon.LoadFromFile(odicon.FileName);
end;

procedure TfmWinapi.btnApplyClick(Sender: TObject);
var i:integer;
begin
 NewStyle:= 0;
 for i:= 0 to lvWndStyle.Items.Count -1 do begin
  if lvWndStyle.Items[i].Checked then NewStyle:= NewStyle or LongInt(lvWndStyle.Items[i].Data);
 end;

 NewExStyle:= 0;
 for i:= 0 to lvExWndStyle.Items.Count -1 do begin
  if lvExWndStyle.Items[i].Checked then NewExStyle:= NewExStyle or LongInt(lvExWndStyle.Items[i].Data);
 end;

 NewClassStyle:= 0;
 for i:= 0 to lvClassStyle.Items.Count -1 do begin
  if lvClassStyle.Items[i].Checked then NewClassStyle:= NewClassStyle or LongInt(lvClassStyle.Items[i].Data);
 end;

 SetWindowLong(SelWindow, GWL_STYLE, NewStyle);
 SetWindowLong(SelWindow, GWL_EXSTYLE, NewExStyle);
 SetClassLong(SelWindow, GCL_STYLE, NewClassStyle);

 SetWindowPos(SelWindow, HWND_TOP, StrToInt(EdWLeft.Text),StrToInt(EdWTop.Text), StrToInt(EdWWidth.Text), StrToInt(EdWHeight.Text), SWP_FRAMECHANGED);
 SetIcon(SelWindow,imWIcon.picture.icon);
end;

procedure TfmWinapi.pmSaveClick(Sender: TObject);
begin
if SdIcon.Execute then
imWIcon.Picture.Icon.SaveToFile(sdicon.FileName);
end;

procedure TfmWinapi.N2Click(Sender: TObject);
begin
CloseWindow(SelWindow);
end;

procedure TfmWinapi.N3Click(Sender: TObject);
begin
OpenIcon(SelWindow);
end;

procedure TfmWinapi.N4Click(Sender: TObject);
begin
ShowWindow(SelWindow,SW_MAXIMIZE);
end;

procedure TfmWinapi.N6Click(Sender: TObject);
begin
EnableWindow(SelWindow,False);
end;

procedure TfmWinapi.N7Click(Sender: TObject);
begin
EnableWindow(SelWindow,True);
end;

procedure TfmWinapi.N10Click(Sender: TObject);
begin
ShowWindow(SelWindow,sw_hide);
end;

procedure TfmWinapi.N11Click(Sender: TObject);
begin
ShowWindow(SelWindow,sw_show);
end;

procedure TfmWinapi.N5Click(Sender: TObject);
begin
PostMessage(SelWindow,WM_QUIT,0,0);
end;

procedure TfmWinapi.N9Click(Sender: TObject);
begin
BuildTree;
end;

end.
