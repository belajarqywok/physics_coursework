function varargout = soal1(varargin)
% SOAL1 MATLAB code for soal1.fig
%      SOAL1, by itself, creates a new SOAL1 or raises the existing
%      singleton*.
%
%      H = SOAL1 returns the handle to a new SOAL1 or the handle to
%      the existing singleton*.
%
%      SOAL1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL1.M with the given input arguments.
%
%      SOAL1('Property','Value',...) creates a new SOAL1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before soal1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to soal1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help soal1

% Last Modified by GUIDE v2.5 05-Dec-2022 22:31:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @soal1_OpeningFcn, ...
                   'gui_OutputFcn',  @soal1_OutputFcn, ...
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


% --- Executes just before soal1 is made visible.
function soal1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to soal1 (see VARARGIN)

% Choose default command line output for soal1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes soal1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = soal1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
g = 10;
h1 = str2double(get(handles.h1_input, 'string'));
h3 = str2double(get(handles.h3_input, 'string'));
m  = str2double(get(handles.m_input,  'string'));

h2 = double(h1 - h3);

t_akhir = sqrt(2 * h1 / g);

ep1 = m * g * h1;
ep2 = m * g * h2;

v2 = sqrt(((h1 * 10) - (h2 * 10)) * 2);
vt = sqrt(2 * g * h1);

ek2 = 0.5 * m * (v2 ^ 2);
ek_akhir = 0.5 * m * (vt ^ 2);


set(handles.h2_output, 'string', h2);
set(handles.v2_output, 'string', v2);
set(handles.t_akhir_output, 'string', t_akhir);
set(handles.ep_awal_output, 'string', ep1);
set(handles.ep2_output, 'string', ep2);
set(handles.ek_akhir_output, 'string', ek_akhir);
set(handles.ek2_output, 'string', ek2);
set(handles.v_akhir_output, 'string', vt);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% input
set(handles.h1_input, 'string', '0');
set(handles.h3_input, 'string', '0');
set(handles.m_input, 'string', '0');

% output
set(handles.h2_output, 'string', '0');
set(handles.v2_output, 'string', '0');
set(handles.t_akhir_output, 'string', '0');
set(handles.ep_awal_output, 'string', '0');
set(handles.ep2_output, 'string', '0');
set(handles.ek_akhir_output, 'string', '0');
set(handles.ek2_output, 'string', '0');
set(handles.v_akhir_output, 'string', '0');


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes during object creation, after setting all properties.
function h2_output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h2_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function h1_input_Callback(hObject, eventdata, handles)
% hObject    handle to h1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h1_input as text
%        str2double(get(hObject,'String')) returns contents of h1_input as a double


% --- Executes during object creation, after setting all properties.
function h1_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h3_input_Callback(hObject, eventdata, handles)
% hObject    handle to h3_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h3_input as text
%        str2double(get(hObject,'String')) returns contents of h3_input as a double


% --- Executes during object creation, after setting all properties.
function h3_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h3_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_input_Callback(hObject, eventdata, handles)
% hObject    handle to m_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_input as text
%        str2double(get(hObject,'String')) returns contents of m_input as a double


% --- Executes during object creation, after setting all properties.
function m_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
