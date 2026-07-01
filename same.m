function a = same(msg, new_msg)
% 比较两个矩阵中相同元素的个数
% msg, new_msg 均为数值矩阵（十进制）
temp = 0;
[N, M] = size(msg);
for i = 1:N
    for j = 1:M
        if msg(i, j) == new_msg(i, j)
            temp = temp + 1;
        end
    end
end
a = temp;
end