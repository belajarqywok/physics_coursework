function varargout = konversi_suhu(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @konversi_suhu_OpeningFcn, ...
                   'gui_OutputFcn',  @konversi_suhu_OutputFcn, ...
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


% --- Executes just before konversi_suhu is made visible.
function konversi_suhu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to konversi_suhu (see VARARGIN)

% Choose default command line output for konversi_suhu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(gcf,'center')
% UIWAIT makes konversi_suhu wait for user response (see UIRESUME)
% uiwait(handles.background);



% --- Outputs from this function are returned to the command line.
function varargout = konversi_suhu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in btn_convert.
function btn_convert_Callback(hObject, eventdata, handles)
% hObject    handle to btn_convert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

get_temperature_data = nan_prevent(str2double(get(handles.input_temp, 'string')));

user_choice = get(handles.popup_temp_format, 'Value');

convertion_values  = temperature_convertion(get_temperature_data, user_choice);
convertion_handles = [handles.celcius_temp, handles.kelvin_temp, handles.reamur_temp, handles.fahrenheit_temp];

for index_convertion = 1:length(convertion_values) * 2
    
    if index_convertion <= length(convertion_values)
    
        set(convertion_handles(index_convertion), 'String', '');
    else
        
        indexing = index_convertion - length(convertion_values);
        set(convertion_handles(indexing), 'string', strcat(sprintf('%.2f', convertion_values(indexing) )), 'visible', 'on');
        pause(0.3);
    end;

end;


function input_temp_Callback(hObject, eventdata, handles)
% hObject    handle to input_temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_temp as text
%        str2double(get(hObject,'String')) returns contents of input_temp as a double


% --- Executes during object creation, after setting all properties.
function input_temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_temp_format.
function popup_temp_format_Callback(hObject, eventdata, handles)
% hObject    handle to popup_temp_format (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_temp_format contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_temp_format


% --- Executes during object creation, after setting all properties.
function popup_temp_format_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_temp_format (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
