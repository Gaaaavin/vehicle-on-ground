function Xbody = body(length, width, len_axle)
    body_center = [0; 0; 0];
    body_x = cat(2, repmat(body_center(1)+length, 1, 4), repmat(body_center(1)-length, 1, 4));
    body_y = repmat([body_center(2)+width+len_axle, ...
              body_center(2)+width-len_axle, ...
              body_center(2)-width+len_axle, ...
              body_center(2)-width-len_axle], 1, 2);
    body_z = repmat(body_center(3), 1, 8); % for normal conditions
%     body_z = repmat([body_center(2)+width+len_axle, ...
%               body_center(2)+width-len_axle, ...
%               body_center(2)-width+len_axle, ...
%               body_center(2)-width-len_axle], 1, 2); % for cone condition
%     body_z = body_z * cone_slope;
%     body_z = cat(2, repmat(-1, 1, 4), repmat(-1, 1, 4));
    Xbody = [body_x; body_y; body_z];
end