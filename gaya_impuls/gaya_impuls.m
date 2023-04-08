function varargout = gaya_impuls(varargin)
% GAYA_IMPULS MATLAB code for gaya_impuls.fig
%      GAYA_IMPULS, by itself, creates a new GAYA_IMPULS or raises the existing
%      singleton*.
%
%      H = GAYA_IMPULS returns the handle to a new GAYA_IMPULS or the handle to
%      the existing singleton*.
%
%      GAYA_IMPULS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAYA_IMPULS.M with the given input arguments.
%
%      GAYA_IMPULS('Property','Value',...) creates a new GAYA_IMPULS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gaya_impuls_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gaya_impuls_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gaya_impuls

% Last Modified by GUIDE v2.5 18-Dec-2022 14:05:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gaya_impuls_OpeningFcn, ...
                   'gui_OutputFcn',  @gaya_impuls_OutputFcn, ...
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


% --- Executes just before gaya_impuls is made visible.
function gaya_impuls_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gaya_impuls (see VARARGIN)

% Choose default command line output for gaya_impuls
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gaya_impuls wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gaya_impuls_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_massa_Callback(hObject, eventdata, handles)
% hObject    handle to input_massa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_massa as text
%        str2double(get(hObject,'String')) returns contents of input_massa as a double


% --- Executes during object creation, after setting all properties.
function input_massa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_massa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_v0_Callback(hObject, eventdata, handles)
% hObject    handle to input_v0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_v0 as text
%        str2double(get(hObject,'String')) returns contents of input_v0 as a double


% --- Executes during object creation, after setting all properties.
function input_v0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_v0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_vt_Callback(hObject, eventdata, handles)
% hObject    handle to input_vt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_vt as text
%        str2double(get(hObject,'String')) returns contents of input_vt as a double


% --- Executes during object creation, after setting all properties.
function input_vt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_vt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_hitung.
function btn_hitung_Callback(hObject, eventdata, handles)
massa = str2double(get(handles.input_massa, 'string'));
v0    = str2double(get(handles.input_v0, 'string'));
vt    = str2double(get(handles.input_vt, 'string'));
dt    = str2double(get(handles.input_dt, 'string'));

i = massa * (vt - (-v0));
f = i / dt;

set(handles.out_impuls, 'string', i);
set(handles.out_gaya, 'string', f);

% --- Executes on button press in btn_reset.
function btn_reset_Callback(hObject, eventdata, handles)
set(handles.input_massa, 'string', '0');
set(handles.input_v0, 'string', '0');
set(handles.input_vt, 'string', '0');
set(handles.input_dt, 'string', '0');
set(handles.out_impuls, 'string', '0');
set(handles.out_gaya, 'string', '0');

% --- Executes on button press in btn_keluar.
function btn_keluar_Callback(hObject, eventdata, handles)
close;



function input_dt_Callback(hObject, eventdata, handles)
% hObject    handle to input_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_dt as text
%        str2double(get(hObject,'String')) returns contents of input_dt as a double


% --- Executes during object creation, after setting all properties.
function input_dt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
