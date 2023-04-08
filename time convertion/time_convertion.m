function varargout = time_convertion(varargin)
% TIME_CONVERTION MATLAB code for time_convertion.fig
%      TIME_CONVERTION, by itself, creates a new TIME_CONVERTION or raises the existing
%      singleton*.
%
%      H = TIME_CONVERTION returns the handle to a new TIME_CONVERTION or the handle to
%      the existing singleton*.
%
%      TIME_CONVERTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIME_CONVERTION.M with the given input arguments.
%
%      TIME_CONVERTION('Property','Value',...) creates a new TIME_CONVERTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before time_convertion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to time_convertion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help time_convertion

% Last Modified by GUIDE v2.5 20-Sep-2022 22:43:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @time_convertion_OpeningFcn, ...
                   'gui_OutputFcn',  @time_convertion_OutputFcn, ...
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


% --- Executes just before time_convertion is made visible.
function time_convertion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to time_convertion (see VARARGIN)

% Choose default command line output for time_convertion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes time_convertion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = time_convertion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function hours_dynamic_text_Callback(hObject, eventdata, handles)
% hObject    handle to hours_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hours_dynamic_text as text
%        str2double(get(hObject,'String')) returns contents of hours_dynamic_text as a double


% --- Executes during object creation, after setting all properties.
function hours_dynamic_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hours_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minutes_dynamic_text_Callback(hObject, eventdata, handles)
% hObject    handle to minutes_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minutes_dynamic_text as text
%        str2double(get(hObject,'String')) returns contents of minutes_dynamic_text as a double


% --- Executes during object creation, after setting all properties.
function minutes_dynamic_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minutes_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function seconds_dynamic_text_Callback(hObject, eventdata, handles)
% hObject    handle to seconds_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of seconds_dynamic_text as text
%        str2double(get(hObject,'String')) returns contents of seconds_dynamic_text as a double


% --- Executes during object creation, after setting all properties.
function seconds_dynamic_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to seconds_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function miliseconds_dynamic_text_Callback(hObject, eventdata, handles)
% hObject    handle to miliseconds_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of miliseconds_dynamic_text as text
%        str2double(get(hObject,'String')) returns contents of miliseconds_dynamic_text as a double


% --- Executes during object creation, after setting all properties.
function miliseconds_dynamic_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to miliseconds_dynamic_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in choices_popup_menu.
function choices_popup_menu_Callback(hObject, eventdata, handles)
% hObject    handle to choices_popup_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns choices_popup_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choices_popup_menu


% --- Executes during object creation, after setting all properties.
function choices_popup_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choices_popup_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_convertion.
function btn_convertion_Callback(hObject, eventdata, handles)
% hObject    handle to btn_convertion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get data
get_hours_data       = nan_prevent(str2double(get(handles.hours_dynamic_text, 'string')));
get_minutes_data     = nan_prevent(str2double(get(handles.minutes_dynamic_text, 'string')));
get_seconds_data     = nan_prevent(str2double(get(handles.seconds_dynamic_text, 'string')));
get_miliseconds_data = nan_prevent(str2double(get(handles.miliseconds_dynamic_text, 'string')));

user_choice = get(handles.choices_popup_menu, 'Value');

switch user_choice
    
    % Konversi ke Jam
    case 1
        Format = ' Jam';
        count = hours_convert (get_hours_data, get_minutes_data, get_seconds_data, get_miliseconds_data);
        
    % Konversi Ke Menit
    case 2
        Format = ' Menit';
        count = minutes_convert (get_hours_data, get_minutes_data, get_seconds_data, get_miliseconds_data);
        
    % Konversi Ke Detik
    case 3
        Format = ' Detik';
        count = seconds_convert (get_hours_data, get_minutes_data, get_seconds_data, get_miliseconds_data);
        
    % Konversi Ke Milisekon
    case 4
        Format = ' Ms';
        count = miliseconds_convert (get_hours_data, get_minutes_data, get_seconds_data, get_miliseconds_data);
        
end

set(handles.convertion_result, 'string', strcat(sprintf('%.2f', count), Format));


% --- Executes on button press in btn_back.
function btn_back_Callback(hObject, eventdata, handles)
% hObject    handle to btn_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; main;
