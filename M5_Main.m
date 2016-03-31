function varargout = M5_Main(varargin)
%M5_MAIN M-file for M5_Main.fig
%      M5_MAIN, by itself, creates a new M5_MAIN or raises the existing
%      singleton*.
%
%      H = M5_MAIN returns the handle to a new M5_MAIN or the handle to
%      the existing singleton*.
%
%      M5_MAIN('Property','Value',...) creates a new M5_MAIN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to M5_Main_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      M5_MAIN('CALLBACK') and M5_MAIN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in M5_MAIN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M5_Main

% Last Modified by GUIDE v2.5 19-Jul-2015 17:37:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M5_Main_OpeningFcn, ...
                   'gui_OutputFcn',  @M5_Main_OutputFcn, ...
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


% --- Executes just before M5_Main is made visible.
function M5_Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for M5_Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M5_Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M5_Main_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in waypoint_pb.
function waypoint_pb_Callback(hObject, eventdata, handles)
% hObject    handle to waypoint_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Call waypoint entry window
M5_WaypointEntryWindow_bmoy

%Close home window
close('M5_Main')


% --- Executes on button press in Exit_st.
function Exit_st_Callback(hObject, eventdata, handles)
% hObject    handle to Exit_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Close program
close('M5_Main')

% --- Executes on button press in performance_pb.
function performance_pb_Callback(hObject, eventdata, handles)
% hObject    handle to performance_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('M5_Main')
M5_Performance

% --- Executes on button press in summary_pb.
function summary_pb_Callback(hObject, eventdata, handles)
% hObject    handle to summary_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Call Flight Summary Window
summary_window

%Close Home Window
close('M5_Main')

% --- Executes on button press in inflight_pb.
function inflight_pb_Callback(hObject, eventdata, handles)
% hObject    handle to inflight_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Call in-flight window
in_flight_draft

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls help window
help_window
%closes main window
close('M5_Main')
