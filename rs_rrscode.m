function new_msg = rs_rrscode(in_msg, all_code_msg, all_msg)
% RS(7,3) 译码（最小距离硬判决）
% 输入 in_msg: 1×7 的 GF(8) 接收向量
%      all_code_msg: 512×7 所有合法码字
%      all_msg: 512×3 所有对应的信息
% 输出 new_msg: 1×3 的译码信息（十进制）

new_msg = rs_interpret(in_msg, all_code_msg, all_msg);
end