
function [] = GuardaGif(hgif,f, gifname)
% Frame plot actual, indicador
% hgif: relacionado al figure donde se plotean las imagenes continuas

      % Capture the plot as an image 
      frame = getframe(hgif); 
      im = frame2im(frame); 
      [imind,cm] = rgb2ind(im,256); 
      % Write to the GIF File 
      if f == 1 
          imwrite(imind,cm,gifname,'gif', 'Loopcount',inf,'DelayTime', 0.1); 
      else 
          imwrite(imind,cm,gifname,'gif','WriteMode','append'); 
      end 
      
end