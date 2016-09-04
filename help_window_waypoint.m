function varargout = help_window_waypoint(varargin)
% HELP_WINDOW_WAYPOINT MATLAB code for help_window_waypoint.fig
%      HELP_WINDOW_WAYPOINT, by itself, creates a new HELP_WINDOW_WAYPOINT or raises the existing
%      singleton*.
%
%      H = HELP_WINDOW_WAYPOINT returns the handle to a new HELP_WINDOW_WAYPOINT or the handle to
%      the existing singleton*.
%
%      HELP_WINDOW_WAYPOINT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP_WINDOW_WAYPOINT.M with the given input arguments.
%
%      HELP_WINDOW_WAYPOINT('Property','Value',...) creates a new HELP_WINDOW_WAYPOINT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before help_window_waypoint_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to help_window_waypoint_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help help_window_waypoint

% Last Modified by GUIDE v2.5 19-Jul-2015 17:45:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @help_window_waypoint_OpeningFcn, ...
                   'gui_OutputFcn',  @help_window_waypoint_OutputFcn, ...
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


% --- Executes just before help_window_waypoint is made visible.
function help_window_waypoint_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to help_window_waypoint (see VARARGIN)

% Choose default command line output for help_window_waypoint
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes help_window_waypoint wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = help_window_waypoint_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in back_pb.
function back_pb_Callback(hObject, eventdata, handles)
% hObject    handle to back_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%calls waypoint  window
M5_WaypointEntryWindow_bmoy
%closes help window
close('help_window_waypoint')

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('help_window_waypoint')
