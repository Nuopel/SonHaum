function [  ] = lAtexfigIN( SFont )
  fig = gcf;
  if nargin<1
        SFont=10;
  end
        set(gca,'Fontsize',SFont)
        
        ax = fig.CurrentAxes;
        axl = ax.XLabel.String;
        xlabel(axl,'FontUnits','points','interpreter','latex','FontSize',SFont,'FontName','Helvetica');
       
        set(findobj(gca, 'Type', 'Line'), 'LineWidth', 2);
        
        azl = ax.ZLabel.String;
        zlabel(azl,'FontUnits','points','interpreter','latex','FontSize',SFont,'FontName','Helvetica');
        
        ayl = ax.YLabel.String;
        ylabel(ayl,'FontUnits','points','interpreter','latex','FontSize',SFont,'FontName','Helvetica');

        df_l=legend();
%         set(df_l,'FontUnits','points','interpreter','latex','FontSize',SFont,'FontName','Helvetica','Location','NorthEast')
        set(df_l,'FontUnits','points','interpreter','latex','FontSize',SFont,'FontName','Helvetica','Location','SouthEast')

        tl = ax.Title.String;
        title( tl,'interpreter','latex', 'FontUnits','points','FontWeight','bold','FontSize',SFont+3,'FontName','Helvetica')
        
        set(gca, 'TickLabelInterpreter', 'latex')

end

