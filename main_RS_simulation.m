%% RS(7,3) 码编译码仿真主程序
% 本脚本演示对 GF(2^3) 上所有可能信息进行编码，随机生成5组信息，
% 加入随机噪声后译码，并计算译码正确率。

clear; clc;

% 1. 生成所有可能的 3 符号信息（GF(8) 共 8^3=512 种）
all_msg = a_msg();                % 512×3 的十进制矩阵
all_msg_gf = gf(all_msg, 3);      % 转为 GF(8) 元素

% 2. 对所有信息编码，得到所有合法码字（512×7）
all_code_msg = rs_rscode(all_msg_gf);

% 3. 随机生成 5 组信息（十进制 0~7）
msg = rand(5, 3);
msg = floor(msg * 8);             % 5×3 的随机信息
MSG = gf(msg, 3);                 % 转为 GF(8)

% 4. 编码得到 5 组 RS 码字（5×7）
code = rs_rscode(MSG);

% 5. 构造噪声（只影响后2个符号，模拟突发错误）
a = zeros(5, 5);
b = floor(rand(5, 2) * 8);
noise = [a, b];                   % 前5列无噪声，后2列加随机噪声
NOISE = gf(noise, 3);

% 6. 接收信号 = 码字 + 噪声
in_msg = code + NOISE;

% 7. 译码
new_msg = zeros(5, 3);
for ii = 1:5
    new_msg(ii, :) = rs_rrscode(in_msg(ii, :), all_code_msg, all_msg);
end

% 8. 输出结果并计算正确率
disp('原始信息 (十进制):');
disp(msg);
disp('译码结果 (十进制):');
disp(new_msg);

num_same = same(msg, new_msg);    % 正确符号总数
num = num_same / 15;              % 正确率（15个符号）
fprintf('译码正确率: %.2f%%\n', num * 100);
