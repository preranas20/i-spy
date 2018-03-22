function [r,c] = i_spy ( object_im, big_im, x )

% note that this implementation does not use variable "x"

%converting Object Image and Big Image to grayscale
obj_im=rgb2gray(object_im);
bi_im=rgb2gray(big_im);

%calculate dimensions of Big Image and object Image
Ro = size(obj_im, 1); 
Co = size(obj_im, 2); 

Rb = size(bi_im, 1); 
Cb = size(bi_im, 2); 



for r=1:Rb-(Ro-1)
    for c=1:Cb-(Co-1)
       if(bi_im(r,c,:)==obj_im(1,1,:))  %compare the first top-left coordinate of object image with r,c
           diff_val=bi_im(r:r+(Ro-1),c:c+(Co-1),:)-obj_im;
           if ( sum ( abs ( diff_val(:)) ) == 0 )
              return;
           end
       end
    end
end

    
