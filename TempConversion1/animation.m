function varargout = animation(varargin)
% animation MATLAB code for animation.fig
%      animation, by itself, creates a new animation or raises the existing
%      singleton*.
%
%      H = animation returns the handle to a new animation or the handle to
%      the existing singleton*.
%
%      animation('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in animation.M with the given input arguments.
%
%      animation('Property','Value',...) creates a new animation or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before animation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to animation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help animation

% Last Modified by GUIDE v2.5 01-Oct-2022 02:16:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @animation_OpeningFcn, ...
                   'gui_OutputFcn',  @animation_OutputFcn, ...
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


% --- Executes just before animation is made visible.
function animation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to animation (see VARARGIN)

% Choose default command line output for animation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(gcf,'center')
% UIWAIT makes animation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = animation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

loading_dots = '. . .';
loading = 1;

while loading <= 3
    concate_dots = '';
    
    for index_concate = 1:length(loading_dots)
        concate_dots(index_concate) = loading_dots(index_concate);
        set(handles.t1, 'string', concate_dots);
        if mod(index_concate, 2) == 1
            pause(0.4);
        end;
    end;
    
    set(handles.t1, 'string', '');
    loading = loading + 1;
end;
close;
konversi_suhu;
