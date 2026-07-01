function distance = gf2num(gf_a)
% 将 GF(8) 元素映射为 0~7 的整数（原指导书仅用于参考，本整理未使用）
distance = -1;
if (gf_a == gf(0,3)) distance = 0; end
if (gf_a == gf(1,3)) distance = 1; end
if (gf_a == gf(2,3)) distance = 2; end
if (gf_a == gf(3,3)) distance = 3; end
if (gf_a == gf(4,3)) distance = 4; end
if (gf_a == gf(5,3)) distance = 5; end
if (gf_a == gf(6,3)) distance = 6; end
if (gf_a == gf(7,3)) distance = 7; end
end