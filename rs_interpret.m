function interpret_msg = rs_interpret(in_msg, all_code_msg, all_msg)
% 计算接收码字与所有合法码字的距离，选择距离最小的信息
% 输入 in_msg: 1×7 GF(8)
% 输出 interpret_msg: 1×3 十进制信息

num_codes = size(all_code_msg, 1);
rs_dis = zeros(1, num_codes);

for i = 1:num_codes
    rs_dis(i) = rscode_dis(in_msg, all_code_msg(i, :));
end

rs_dis_min = min(rs_dis);
index = find(rs_dis == rs_dis_min);
interpret_msg = all_msg(index(1), :);   % 若有多个等距，取第一个
end