function varargout = in_flight_draft(varargin)
% IN_FLIGHT_DRAFT MATLAB code for in_flight_draft.fig
%      IN_FLIGHT_DRAFT, by itself, creates a new IN_FLIGHT_DRAFT or raises the existing
%      singleton*.
%
%      H = IN_FLIGHT_DRAFT returns the handle to a new IN_FLIGHT_DRAFT or the handle to
%      the existing singleton*.
%
%      IN_FLIGHT_DRAFT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IN_FLIGHT_DRAFT.M with the given input arguments.
%
%      IN_FLIGHT_DRAFT('Property','Value',...) creates a new IN_FLIGHT_DRAFT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before in_flight_draft_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to in_flight_draft_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help in_flight_draft

% Last Modified by GUIDE v2.5 19-Jul-2015 16:55:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @in_flight_draft_OpeningFcn, ...
                   'gui_OutputFcn',  @in_flight_draft_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end 

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before in_flight_draft is made visible.
function in_flight_draft_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to in_flight_draft (see VARARGIN)

% Choose default command line output for in_flight_draft

handles.output = hObject;
I = imread('chicago_display4.jpg');
imshow(I);
x = getappdata(0,'Initialcode');
x1 = getappdata(0,'endingcode');
y = getappdata(0,'alt');
set(handles.alt_st, 'String', y)
speed1 = getappdata(0,'speed');
set(handles.speedt_st, 'String', speed1);
distance1 = getappdata(0,'distance');
set(handles.dist_st, 'String', distance1);
fuelburn1 = getappdata(0,'fuelburn1');
set(handles.fuelb_st, 'String', fuelburn1);

%load database.mat
load('database')

x = x{1};  %getting coords
x1 = x1{1}; %getting coords

%Retrives coordinates for specifed ICAO code
initial = [database.(x).coord];
final = [database.(x1).coord];

% ;hold on

% axis([0 1600 0 1200])

% load database.mat;
% plot(database.KMIE.coord,database.KMIE.coord)


% x = [400 1000];
% y = [200 800];
% x1 = [100 800];
% y1 = [800 800];

KORD = [624,384];
KLAF = [752,635];
% x=200;
% y=400;
% hold off

% KRAG = [1200 200];
% KANG = [1000 600];
% 
% plot(x, y,'Color','r','LineStyle','-','LineWidth', 2)
% plot(x1, y1, 'Color','r','LineStyle','-','LineWidth', 2)
% 
% plot(KRAG, KANG,'Color','r','LineStyle','-','LineWidth', 2)
hold on
plot(KORD(1),KORD(2),'.', 'Color', 'r','MarkerSize', 20)
plot(KLAF(1),KLAF(2), '.', 'Color','r','MarkerSize', 20)
hold on
plot(KORD,KLAF,'Color','r','LineStyle','-','LineWidth',2)

% dist = sum(sqrt(diff(KORD).^2+diff(KLAF).^2))

% scatter[

% KOKK = plotm(,lon)
% 
% M = size(I,1);
% N = size(I,2);

% plot(database.KMIE,database.KMIE.coord)

% for k = 1:50:M
%     x = [1 N];
%     y = [k k];
%     plot(x,y,'Color','k','LineStyle',':');
%     plot(x,y,'Color','k','LineStyle',':');
% end
% 
% for k = 1:50:N
%     x = [k k];
%     y = [1 M];
%     plot(x,y,'Color','k','LineStyle',':');
%     plot(x,y,'Color','k','LineStyle',':');
% end

% plot(x_val,y_val,'Color','r')
% plot([10000,10000],'Color','r')


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes in_flight_draft wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = in_flight_draft_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in waypoint_return_pb.
function waypoint_return_pb_Callback(hObject, eventdata, handles)
% hObject    handle to waypoint_return_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close in_flight_draft
open m5_WaypointEntryWindow_bmoy

% --- Executes on button press in main_return_pb.
function main_return_pb_Callback(hObject, eventdata, handles)
% hObject    handle to main_return_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close in_flight_draft
open m5_main

% --- Executes on button press in flight_return_pb.
function flight_return_pb_Callback(hObject, eventdata, handles)
% hObject    handle to flight_return_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close in_flight_draft
open summary_window

% --- Executes on button press in inflight_exit_pb.
function inflight_exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to inflight_exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close in_flight_draft

% --- Executes on button press in citations_pb.
function citations_pb_Callback(hObject, eventdata, handles)
% hObject    handle to citations_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close in_flight_draft
open citations
