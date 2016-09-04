function varargout = M5_Performance(varargin)
% M5_PERFORMANCE MATLAB code for M5_Performance.fig
%      M5_PERFORMANCE, by itself, creates a new M5_PERFORMANCE or raises the existing
%      singleton*.
%
%      H = M5_PERFORMANCE returns the handle to a new M5_PERFORMANCE or the handle to
%      the existing singleton*.
%
%      M5_PERFORMANCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in M5_PERFORMANCE.M with the given input arguments.
%
%      M5_PERFORMANCE('Property','Value',...) creates a new M5_PERFORMANCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before M5_Performance_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to M5_Performance_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M5_Performance

% Last Modified by GUIDE v2.5 20-Jul-2015 18:38:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M5_Performance_OpeningFcn, ...
                   'gui_OutputFcn',  @M5_Performance_OutputFcn, ...
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


% --- Executes just before M5_Performance is made visible.
function M5_Performance_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to M5_Performance (see VARARGIN)

% Choose default command line output for M5_Performance
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M5_Performance wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M5_Performance_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in PassengerWeight.
function PassengerWeight_Callback(hObject, eventdata, handles)
% hObject    handle to PassengerWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PassengerWeight = str2num(get(handles.DataSelected, 'String'));
Total = str2num(get(handles.TotalWeight_st, 'String'));
Total = PassengerWeight + Total;
setappdata(0,'Passenger',PassengerWeight)
set(handles.TotalWeight_st, 'String', Total);
guidata(hObject, handles);

% --- Executes on button press in Done.
function Done_Callback(hObject, eventdata, handles)
% hObject    handle to Done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)get
% PassengerWeight = str2num(get(handles.DataSelected, 'String'))
% LuggageWeight = str2num(get(handles.DataSelected, 'String'))
% FuelWeight = str2num(get(handles.DataSelected, 'String'))
Total = str2num(get(handles.TotalWeight_st, 'String'));
setappdata(0,'Total',Total)
close('M5_Performance')
M5_Main


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('M5_Performance')
close('M5_Home')


% --- Executes on button press in Help.
function Help_Callback(hObject, eventdata, handles)
% hObject    handle to Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
help_window_performance
close('M5_Performance')



% --- Executes on button press in Home.
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('M5_Performance')
M5_Main



% --- Executes on button press in Citations.
function Citations_Callback(hObject, eventdata, handles)
% hObject    handle to Citations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M5_citations


% --- Executes on button press in FuelWeight.
function FuelWeight_Callback(hObject, eventdata, handles)
% hObject    handle to FuelWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FuelWeight = str2num(get(handles.DataSelected, 'String'));
Total = str2num(get(handles.TotalWeight_st, 'String'));
Total = FuelWeight + Total;
setappdata(0,'Fuel',FuelWeight)
set(handles.TotalWeight_st, 'String', Total);
guidata(hObject, handles);

% --- Executes on button press in LuggageWeight.
function LuggageWeight_Callback(hObject, eventdata, handles)
% hObject    handle to LuggageWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
LuggageWeight = str2num(get(handles.DataSelected, 'String'));
Total = str2num(get(handles.TotalWeight_st, 'String'));
Total = LuggageWeight + Total;
setappdata(0,'Luggage',LuggageWeight)
set(handles.TotalWeight_st, 'String', Total);
guidata(hObject, handles);

% --- Executes on button press in One.
function One_Callback(hObject, eventdata, handles)
% hObject    handle to One (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '1');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Eight.
function Eight_Callback(hObject, eventdata, handles)
% hObject    handle to Eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '8');
set(handles.DataSelected, 'String', textString);


% --- Executes on button press in Zero.
function Zero_Callback(hObject, eventdata, handles)
% hObject    handle to Zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '0');
set(handles.DataSelected, 'String', textString);


% --- Executes on button press in Nine.
function Nine_Callback(hObject, eventdata, handles)
% hObject    handle to Nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '9');
set(handles.DataSelected, 'String', textString);


% --- Executes on button press in Six.
function Six_Callback(hObject, eventdata, handles)
% hObject    handle to Six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '6');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Seven.
function Seven_Callback(hObject, eventdata, handles)
% hObject    handle to Seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '7');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Five.
function Five_Callback(hObject, eventdata, handles)
% hObject    handle to Five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '5');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Four.
function Four_Callback(hObject, eventdata, handles);
% hObject    handle to Four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)four = get(handles.Eight, 'Value')
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '4');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Three.
function Three_Callback(hObject, eventdata, handles)
% hObject    handle to Three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '3');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Two.
function Two_Callback(hObject, eventdata, handles)
% hObject    handle to Two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.DataSelected, 'String');
textString = strcat(textString, '2');
set(handles.DataSelected, 'String', textString);

% --- Executes on button press in Back.
function Back_Callback(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
back = get(handles.DataSelected, 'String');
back(end)='';
set(handles.DataSelected, 'String', back)

% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear = get(handles.DataSelected, 'String');
clear ='';
set(handles.DataSelected, 'String', clear)

% --- Executes during object creation, after setting all properties.
function TotalWeight_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TotalWeight0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in ClearTotal.
function ClearTotal_Callback(hObject, eventdata, handles)
% hObject    handle to ClearTotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.TotalWeight_st, 'String', '0')
