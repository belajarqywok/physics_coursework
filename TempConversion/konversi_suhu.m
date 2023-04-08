function varargout = konversi_suhu(varargin)

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

function konversi_suhu_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);
movegui(gcf,'center')

function varargout = konversi_suhu_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

set(handles.panel3,'visible','on');
animation = [handles.w,handles.e,handles.l,handles.c,handles.o,handles.m,handles.e2];

for i = 1:length(animation)
    set(animation(i),'visible','off');
    if i == length(animation)
        pause(0.5);
        for j = 1:length(animation)
            set(animation(j),'visible','on');
            pause(0.2);
        end;
    end;
end;  

pause(1);
set(handles.panel3,'visible','off');
set(handles.panel1,'visible','on');
set(handles.panelnav,'visible','on');

function result = nan_prevent (value)

if logical(isnan(value)); 
    result = 0;
else
    result = value;
end

function convertion_values = temperature_convertion ( get_temperature_data, user_choice )

    switch user_choice        
        case 1
            celcius_conv = get_temperature_data;
            kelvin_conv = get_temperature_data + 273;
            reamur_conv = (4/5) * get_temperature_data;
            fahrenheit_conv = ((9/5) * get_temperature_data) + 32;
       
        case 2
            celcius_conv = (5/9) * (get_temperature_data - 32);
            kelvin_conv = (get_temperature_data + 459.67) * 5/9;
            reamur_conv = (get_temperature_data - 32) * 4/9;
            fahrenheit_conv = get_temperature_data;
            
        case 3
            celcius_conv = (5/4) * get_temperature_data;
            kelvin_conv = (get_temperature_data * 5/4) + 273.15;
            reamur_conv = get_temperature_data;
            fahrenheit_conv = (get_temperature_data * (9/4)) + 32;

        case 4
            celcius_conv = get_temperature_data - 273.15;
            kelvin_conv = get_temperature_data;
            reamur_conv = (get_temperature_data - 273.15) * (4/5);
            fahrenheit_conv = 1.8 * (get_temperature_data - 273.15) + 32;           
    end;
    
    
convertion_values  = [celcius_conv, kelvin_conv, reamur_conv, fahrenheit_conv];

function btn_convert_Callback(hObject, eventdata, handles)

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

function input_temp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popup_temp_format_Callback(hObject, eventdata, handles)

function popup_temp_format_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function home_Callback(hObject, eventdata, handles)

set(handles.panel1,'visible','on');
set(handles.panel2,'visible','off');

function dev_Callback(hObject, eventdata, handles)

set(handles.panel1,'visible','off');
set(handles.panel2,'visible','on');
