function varargout = help_windowsummary(varargin)
% HELP_WINDOWSUMMARY MATLAB code for help_windowsummary.fig
%      HELP_WINDOWSUMMARY, by itself, creates a new HELP_WINDOWSUMMARY or raises the existing
%      singleton*.
%
%      H = HELP_WINDOWSUMMARY returns the handle to a new HELP_WINDOWSUMMARY or the handle to
%      the existing singleton*.
%
%      HELP_WINDOWSUMMARY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP_WINDOWSUMMARY.M with the given input arguments.
%
%      HELP_WINDOWSUMMARY('Property','Value',...) creates a new HELP_WINDOWSUMMARY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before help_windowsummary_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to help_windowsummary_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help help_windowsummary

% Last Modified by GUIDE v2.5 19-Jul-2015 17:42:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @help_windowsummary_OpeningFcn, ...
                   'gui_OutputFcn',  @help_windowsummary_OutputFcn, ...
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


% --- Executes just before help_windowsummary is made visible.
function help_windowsummary_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to help_windowsummary (see VARARGIN)

% Choose default command line output for help_windowsummary
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes help_windowsummary wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = help_windowsummary_OutputFcn(hObject, eventdata, handles) 
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
%calls summary window
summary_window
%closes help window
close('help_windowsummary')

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('help_windowsummary')
