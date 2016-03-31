function varargout = summary_window(varargin)
% SUMMARY_WINDOW MATLAB code for summary_window.fig
%      SUMMARY_WINDOW, by itself, creates a new SUMMARY_WINDOW or raises the existing
%      singleton*.
%
%      H = SUMMARY_WINDOW returns the handle to a new SUMMARY_WINDOW or the handle to
%      the existing singleton*.
%
%      SUMMARY_WINDOW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMMARY_WINDOW.M with the given input arguments.
%
%      SUMMARY_WINDOW('Property','Value',...) creates a new SUMMARY_WINDOW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before summary_window_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to summary_window_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help summary_window

% Last Modified by GUIDE v2.5 21-Jul-2015 23:05:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @summary_window_OpeningFcn, ...
                   'gui_OutputFcn',  @summary_window_OutputFcn, ...
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


% --- Executes just before summary_window is made visible.
function summary_window_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to summary_window (see VARARGIN)

% Choose default command line output for summary_window
handles.output = hObject;
% ICAO = varargin{1};
% Altitude = varargin{2};
%gets ICAO codes from waypoint window
load('database');  %loading database
x = getappdata(0,'Initialcode');   
set(handles.icao_st, 'String', x)
x1 = getappdata(0,'endingcode');
set(handles.icaoend_st, 'String', x1)

x = x{1};  %getting coords
x1 = x1{1}; %getting coords

%access information from database
initial = [database.(x).coord];
final = [database.(x1).coord];
%calculates coords distance
distance = sqrt((final(2)-initial(2))^2 + (final(1) - initial(1))^2);
distance = (distance / 291)*10 ;
%sends information to option1 and option2 functions
setappdata(0,'distance', distance);

%gets altitude
y = getappdata(0,'alt');
set(handles.altitude_st, 'String', y)
%gets data form performance window
t = getappdata(0,'Total');
set(handles.tweight_st, 'String', t)
setappdata(0,'totalw',t)
L = getappdata(0,'Luggage');
set(handles.lugweight_st, 'String', L)
P = getappdata(0,'Passenger');
set(handles.pweight_st, 'String', P)
F = getappdata(0,'Fuel');
set(handles.fweight_st, 'String', F)
%sets limits to weights
if t > 99600 
    error = ('Error! total weight exceeds the limit')
    set(handles.valid_st, 'String', error)
elseif F > 44200
    error1 = ('Error! Fuel weight exceeds the limit')
    set(handles.valid_st, 'String', error1)
elseif ((L+P) > 6500)
      error2 = ('Error! Luggage and Passenger weight exceeds the limit')
    set(handles.valid_st, 'String', error2)

else
    valid = ('Valid Data')
    set(handles.valid_st, 'String', valid)
end



% set(handles.icao_st,'String', ICAO);
% set(handles.altitude_st, 'String', Altitude);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes summary_window wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = summary_window_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in citations_pb.
function citations_pb_Callback(hObject, eventdata, handles)
% hObject    handle to citations_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%opens citations window
M5_citations

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls help window
help_windowsummary
%closes this window
close('summary_window')

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls main window
M5_Main
%closes summary window
close('summary_window')

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%closes the window
close('summary_window')




% --- Executes on button press in wayp_pb.
function wayp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to wayp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%closes this window and opens waypoint window
close('summary_window')
M5_WaypointEntryWindow_bmoy




% --- Executes on button press in map_pb.
function map_pb_Callback(hObject, eventdata, handles)
% hObject    handle to map_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%closes summary window and opens inflight window

close('summary_window')
in_flight_draft


% --- Executes on button press in weights_pb.
function weights_pb_Callback(hObject, eventdata, handles)
% hObject    handle to weights_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%closes this window and opens performance window
M5_Performance
close('summary_window')


% --- Executes on button press in opton1_pb.
function opton1_pb_Callback(hObject, eventdata, handles)
% hObject    handle to opton1_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%loads excel data for fuel burn calculations
data = xlsread('Flight Profile.xlsx',1, 'C7:C11');
%calculates the speed
speed = data(4,1); 
speed= (speed/6076.12) * 60 ;
%sends data to inflight window
setappdata(0,'speed',speed);
%gets distance data
distance1 = getappdata(0,'distance');
%calculates time 
time = (distance1 / speed);
%calculates fuel burn
fuelburn = 3800 * time;
%sends data to inflight window
setappdata(0,'fuelburn1',fuelburn);
%gets toatal weight data
totalweight = getappdata(0,'totalw');
%calculates final weight
finalweight = (totalweight - fuelburn);
%sets information in the gui
set(handles.weightfin_st, 'String', finalweight);
set(handles.fuelused_st, 'String', fuelburn);

% --- Executes on button press in option2_pb.
function option2_pb_Callback(hObject, eventdata, handles)
% hObject    handle to option2_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%gets information from excel for fuel burn rate option2
data2 = xlsread('Flight Profile.xlsx', 1, 'D7:D11');
%calculates speed
speed = data2(4,1); 
speed= (speed/6076.12) * 60 ;
%sends data to inflight window
setappdata(0,'speed',speed);
%gets distance information
distance2 = getappdata(0,'distance');
%calculates time
time1 = (distance2 / speed);
%calculates fuel burn
fuelburn = 3000 * time1;
%sends data to inflight window
setappdata(0,'fuelburn1',fuelburn);
%gets total weight data
totalweight = getappdata(0,'totalw');
%calculates final weight
finalweight1 = (totalweight - fuelburn);
%sets information in gui
set(handles.weightfin_st, 'String', finalweight1);
set(handles.fuelused_st, 'String', fuelburn);