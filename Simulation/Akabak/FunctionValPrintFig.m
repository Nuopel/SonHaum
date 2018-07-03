function [  ] = FunctionValPrintFig( numFig, filename )
% FunctionValPrintFig  Prints a figure into a pdf file
%
%    FunctionValPrintFig(numFig, filename) prints the content of figure
%    number numFig (integer) in a pdf file of the same size, and with the
%    name filename (string format) in the current folder.
%    
%   Example
%      x = -pi:pi/10:pi;
%      y = sin(x);
%      h=figure;
%      numh=h.Number;
%      plot(x,y,'--rs','LineWidth',2,...
%                      'MarkerEdgeColor','k',...
%                      'MarkerFaceColor','g',...
%                      'MarkerSize',10)
%      FunctionValPrintFig(numh, 'FigureExample' )
%
%    ---------
%    Valentin SEREY, jan 2016
%    ---------

set(numFig,'Units','Inches');
set(numFig,'PaperPositionMode','auto');         
pos = get(numFig,'Position');
set(numFig,'PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(numFig, '-dpdf', [filename,'.pdf'])

end

