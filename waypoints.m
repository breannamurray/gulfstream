function varargout = waypoints(varargin)
% WAYPOINTS MATLAB code for waypoints.fig
%      WAYPOINTS, by itself, creates a new WAYPOINTS or raises the existing
%      singleton*.
%
%      H = WAYPOINTS returns the handle to a new WAYPOINTS or the handle to
%      the existing singleton*.
%
%      WAYPOINTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WAYPOINTS.M with the given input arguments.
%
%      WAYPOINTS('Property','Value',...) creates a new WAYPOINTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before waypoints_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to waypoints_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help waypoints

% Last Modified by GUIDE v2.5 15-Jul-2015 17:50:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @waypoints_OpeningFcn, ...
                   'gui_OutputFcn',  @waypoints_OutputFcn, ...
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


% --- Executes just before waypoints is made visible.
function waypoints_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to waypoints (see VARARGIN)

% Choose default command line output for waypoints
handles.output = hObject;
I = imread('Wooly.png');
imshow(I)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes waypoints wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = waypoints_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in back_pb.
function back_pb_Callback(hObject, eventdata, handles)
% hObject    handle to back_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
