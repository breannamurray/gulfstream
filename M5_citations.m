function varargout = M5_citations(varargin)
% M5_CITATIONS MATLAB code for M5_citations.fig
%      M5_CITATIONS, by itself, creates a new M5_CITATIONS or raises the existing
%      singleton*.
%
%      H = M5_CITATIONS returns the handle to a new M5_CITATIONS or the handle to
%      the existing singleton*.
%
%      M5_CITATIONS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in M5_CITATIONS.M with the given input arguments.
%
%      M5_CITATIONS('Property','Value',...) creates a new M5_CITATIONS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before M5_citations_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to M5_citations_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M5_citations

% Last Modified by GUIDE v2.5 20-Jul-2015 21:36:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M5_citations_OpeningFcn, ...
                   'gui_OutputFcn',  @M5_citations_OutputFcn, ...
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


% --- Executes just before M5_citations is made visible.
function M5_citations_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to M5_citations (see VARARGIN)

% Choose default command line output for M5_citations
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M5_citations wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M5_citations_OutputFcn(hObject, eventdata, handles) 
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
close('M5_citations')
