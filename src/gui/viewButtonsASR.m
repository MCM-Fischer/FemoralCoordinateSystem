function viewButtonsASR

mouseControl3d(gca, [0 0 1 0; 1 0 0 0; 0 1 0 0; 0 0 0 1])

% uicontrol Button Size
BSX = 0.1; BSY = 0.023;

%Font properies
FontPropsA.FontUnits = 'normalized';
FontPropsA.FontSize = 0.8;
% Rotate-buttons
uicontrol('Units','normalized','Position',[0.5-BSX*3/2     0.01 BSX BSY],FontPropsA,...
    'String','Posterior','Callback','mouseControl3d(gca, [0 0 -1 0; -1 0 0 0; 0 1 0 0; 0 0 0 1])');
uicontrol('Units','normalized','Position',[0.5-BSX*3/2 0.01+BSY BSX BSY],FontPropsA,...
    'String','Anterior','Callback','mouseControl3d(gca, [0 0 1 0; 1 0 0 0; 0 1 0 0; 0 0 0 1])');
uicontrol('Units','normalized','Position',[0.5-BSX*1/2 0.01+BSY BSX BSY],FontPropsA,...
    'String','Superior','Callback','mouseControl3d(gca, [0 0 1 0;0 1 0 0; -1 0 0 0; 0 0 0 1])');
uicontrol('Units','normalized','Position',[0.5-BSX*1/2     0.01 BSX BSY],FontPropsA,...
    'String','Inferior','Callback','mouseControl3d(gca, [0 0 1 0;0 -1 0 0; 1 0 0 0; 0 0 0 1])');
uicontrol('Units','normalized','Position',[0.5+BSX*1/2 0.01+BSY BSX BSY],FontPropsA,...
    'String','Left','Callback','mouseControl3d(gca, [1 0 0 0;0 0 -1 0; 0 1 0 0; 0 0 0 1])');
uicontrol('Units','normalized','Position',[0.5+BSX*1/2     0.01 BSX BSY],FontPropsA,...
    'String','Right','Callback','mouseControl3d(gca, [-1 0 0 0;0 0 1 0; 0 1 0 0; 0 0 0 1])');

end