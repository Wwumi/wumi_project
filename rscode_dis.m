function dis = rscode_dis(code1, code2)
% 计算两个 RS 码字（均为 GF(8) 行向量）的汉明距离
dis = 0;
for i = 1:length(code1)
    dis = dis + gf_dis(code1(i), code2(i));
end
end