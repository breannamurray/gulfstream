function varargout = M5_WaypointEntryWindow_bmoy(varargin)
%M5_WAYPOINTENTRYWINDOW_BMOY M-file for M5_WaypointEntryWindow_bmoy.fig
%      M5_WAYPOINTENTRYWINDOW_BMOY, by itself, creates a new M5_WAYPOINTENTRYWINDOW_BMOY or raises the existing
%      singleton*.
%
%      H = M5_WAYPOINTENTRYWINDOW_BMOY returns the handle to a new M5_WAYPOINTENTRYWINDOW_BMOY or the handle to
%      the existing singleton*.
%
%      M5_WAYPOINTENTRYWINDOW_BMOY('Property','Value',...) creates a new M5_WAYPOINTENTRYWINDOW_BMOY using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to M5_WaypointEntryWindow_bmoy_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      M5_WAYPOINTENTRYWINDOW_BMOY('CALLBACK') and M5_WAYPOINTENTRYWINDOW_BMOY('CALLBACK',hObject,...) call the
%      local function named CALLBACK in M5_WAYPOINTENTRYWINDOW_BMOY.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M5_WaypointEntryWindow_bmoy

% Last Modified by GUIDE v2.5 20-Jul-2015 13:34:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M5_WaypointEntryWindow_bmoy_OpeningFcn, ...
                   'gui_OutputFcn',  @M5_WaypointEntryWindow_bmoy_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before M5_WaypointEntryWindow_bmoy is made visible.
function M5_WaypointEntryWindow_bmoy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for M5_WaypointEntryWindow_bmoy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M5_WaypointEntryWindow_bmoy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M5_WaypointEntryWindow_bmoy_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Exit_pb.
function Exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Close Window
close('M5_WaypointEntryWindow_bmoy')

% --- Executes on button press in Help_pb.
function Help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls help window
help_window_waypoint
%closes this window
close('M5_WaypointEntryWindow_bmoy')

% --- Executes on button press in Cite_pb.
function Cite_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Cite_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M5_citations

% --- Executes on button press in Home_pb.
function Home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls Home window
M5_Main
%closes waypoint window
close('M5_WaypointEntryWindow_bmoy')


% --- Executes on button press in Done_pb.
function Done_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Done_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Accesss ICAO code and altitude information
initial = get(handles.Initial_st,'String');
ending = get(handles.Ending_st,'String');
altitude = str2num(get(handles.Altitude_st,'String'));

%Send Information to Flight Summary and In-Flight Window
setappdata(0,'Initialcode',initial)
setappdata(0,'endingcode', ending)
setappdata(0,'alt',altitude)


%Open Main Window
M5_Main
%Close Waypoint Entry Window
close('M5_WaypointEntryWindow_bmoy')

% --- Executes on selection change in FirstICAO_lb.
function FirstICAO_lb_Callback(hObject, eventdata, handles)
% hObject    handle to FirstICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FirstICAO_lb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FirstICAO_lb

%Access information from FirstICAO_lb
index = get(handles.FirstICAO_lb,'Value'); %gets index of selected item
list = get(handles.FirstICAO_lb,'String'); %gets the string
item = list(index); %selects appropriate item from list of position index
set(handles.FirstICAO_st,'String',item) %sets FirstICAO_st to value of item

%Updates handle structures.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function FirstICAO_lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SecondICAO_lb.
function SecondICAO_lb_Callback(hObject, eventdata, handles)
% hObject    handle to SecondICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SecondICAO_lb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SecondICAO_lb

%Access information from SecondICAO_lb
index = get(handles.SecondICAO_lb,'Value'); %gets index of selected item
list = get(handles.SecondICAO_lb,'String'); %gets the string
item = list(index); %selects appropriate item from list of position index
set(handles.SecondICAO_st,'String',item) %sets SecondICAO_st to value of item

%Updates handle structures.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function SecondICAO_lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ThirdICAO_lb.
function ThirdICAO_lb_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ThirdICAO_lb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ThirdICAO_lb

%Access information from ThirdICAO_lb
index = get(handles.ThirdICAO_lb,'Value'); %gets index of selected item
list = get(handles.ThirdICAO_lb,'String'); %gets the string
item = list(index); %selects appropriate item from list of position index
set(handles.ThirdICAO_st,'String',item) %sets ThirdICAO_st to value of item

%Updates handle structures.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function ThirdICAO_lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FourthICAO_lb.
function FourthICAO_lb_Callback(hObject, eventdata, handles)
% hObject    handle to FourthICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FourthICAO_lb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FourthICAO_lb

%Access information from FourthICAO_lb
index = get(handles.FourthICAO_lb,'Value'); %gets index of selected item
list = get(handles.FourthICAO_lb,'String'); %gets the string
item = list(index); %selects appropriate item from list of position index
set(handles.FourthICAO_st,'String',item) %sets FourthICAO_st to value of item

%Updates handle structures.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function FourthICAO_lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourthICAO_lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Add10000_pb.
function Add10000_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Add10000_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude + 10000;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)

% --- Executes on button press in Subtr10000_pb.
function Subtr10000_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Subtr10000_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude - 10000;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)

% --- Executes on button press in Subtr1000_pb.
function Subtr1000_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Subtr1000_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude - 1000;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)

% --- Executes on button press in Subtr100_pb.
function Subtr100_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Subtr100_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude - 100;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)

% --- Executes on button press in Add100_pb.
function Add100_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Add100_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude + 100;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)

% --- Executes on button press in Add1000_pb.
function Add1000_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Add1000_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Access information from Altitude_st
altitude = str2num(get(handles.Altitude_st,'String'));

%Update value of Altitude
altitude = altitude + 1000;

%Updates Altitude_st
set(handles.Altitude_st,'String',altitude)

%Updates handle structures
guidata(hObject,handles)


% --- Executes on button press in Reset_pb.
function Reset_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Reset_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Update Altitude_st
set(handles.Altitude_st,'String','0')

%Update handle structures
guidata(hObject,handles)


% --- Executes on button press in Initial_pb.
function Initial_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Initial_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Accesss ICAO code and altitude information
first = get(handles.FirstICAO_st,'String');
second = get(handles.SecondICAO_st,'String');
third = get(handles.ThirdICAO_st,'String');
fourth = get(handles.FourthICAO_st,'String');

%Create single ICAO code variable
initial = strcat(first,second,third,fourth);

%Change IntialICAO_st
set(handles.Initial_st,'String',initial)


% --- Executes on button press in Ending_pb.
function Ending_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Ending_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Accesss ICAO code and altitude information
first = get(handles.FirstICAO_st,'String');
second = get(handles.SecondICAO_st,'String');
third = get(handles.ThirdICAO_st,'String');
fourth = get(handles.FourthICAO_st,'String');

%Create single ICAO code variable
ending = strcat(first,second,third,fourth);

%Change IntialICAO_st
set(handles.Ending_st,'String',ending)
