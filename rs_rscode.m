function code = rs_rscode(msg)
% RS(7,3) 编码，生成矩阵 G (3×7) 在 GF(8) 上
% 输入 msg: n×3 的 GF(8) 矩阵，每行是一个信息向量
% 输出 code: n×7 的 GF(8) 矩阵，每行是编码后的码字

% 生成矩阵（来自指导书）
g = [1 0 0 3 2 1 3;
     0 1 0 5 5 1 4;
     0 0 1 7 6 1 6];
g = gf(g, 3);
code = msg * g;
end