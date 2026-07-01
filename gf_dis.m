function ret = gf_dis(a, b)
% 计算 GF(8) 中两个元素 a 和 b 的汉明距离（0 或 1）
% 若元素相等返回 0，否则返回 1
ret = 0;
if a ~= b
    ret = 1;
end
e