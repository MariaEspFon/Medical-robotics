function T = posRotToTransformMatrix(p, R)
    T = eye(4);
    T(1:3, 1:3) = R;
    T(1:3, 4) = p;
end