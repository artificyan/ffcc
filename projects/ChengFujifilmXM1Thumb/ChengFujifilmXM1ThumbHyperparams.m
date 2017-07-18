function [params, metrics] = ChengFujifilmXM1ThumbHyperparams(params)
% The hyperparameters for this project, produced using Tune(). See
% ../DefaultHyperparams.m for documentation.
% Tuning started at 2017-06-04, 21:21:22:356.

params.HYPERPARAMS = struct( ...
'CROSSENT_MULTIPLIER', 2^-11, ...
'VONMISES_MULTIPLIER', 2^-1.5, ...
'FILTER_MULTIPLIERS', [2^-23.75, 2^-26.75], ...
'BIAS_MULTIPLIER', 2^-21.5, ...
'FILTER_SHIFTS', [2^-73.5, 2^-33], ...
'BIAS_SHIFT', 2^-45, ...
'VON_MISES_DIAGONAL_EPS', 2^0 ...
);

metrics = struct( ...
'rgb_err', ...
  struct( ...
    'mean', 2.18112, ...
    'mean2', 3.10107, ...
    'mean4', 4.81225, ...
    'median', 1.34721, ...
    'tri', 1.59323, ...
    'b25', 0.429524, ...
    'w25', 5.22424, ...
    'w05', 9.17076, ...
    'max', 11.5015 ...
)    , ...
'uv_err', ...
  struct( ...
    'mean', 3.01584, ...
    'mean2', 4.34572, ...
    'mean4', 6.94304, ...
    'median', 1.82697, ...
    'tri', 2.16458, ...
    'b25', 0.625976, ...
    'w25', 7.23086, ...
    'w05', 13.3115, ...
    'max', 17.82 ...
)    , ...
'vonmises_nll', ...
  struct( ...
    'mean', 2.68376, ...
    'mean2', 4.33374, ...
    'mean4', 9.06781, ...
    'median', 1.69953, ...
    'tri', 1.8467, ...
    'b25', 0.854841, ...
    'w25', 6.28677, ...
    'w05', 14.5527, ...
    'max', 30.0844 ...
)    , ...
'uv_bin_bias', [-0.039574, 0.111454], ...
'final_losses', [87.7238, 105.606, 92.096], ...
'train_times', [183.66, 321.465, 281.78], ...
'min_feature_time', 0.001876, ...
'min_filter_time', 0.000772, ...
'median_feature_time', 0.0138905, ...
'median_filter_time', 0.003166, ...
'opt_traces', ...
  {{[0.544229, 0.513298, 0.468903, 0.468521, 0.468501, 0.468501, 0.468501, 0.468501, 0.468501, 0.468501, 0.468501, 0.468501], [0.527983, 0.49601, 0.457751, 0.45742, 0.457403, 0.457403, 0.457403, 0.457403, 0.457403, 0.457403], [0.51986, 0.453738, 0.452673, 0.452636, 0.452636, 0.452636, 0.452636, 0.452636, 0.452636, 0.452636]; ...
    [257.981, 145.581, 125.955, 119.875, 110.973, 107.716, 101.453, 100.096, 98.5033, 97.499, 95.3658, 94.0579, 92.8459, 92.3479, 91.8688, 91.4908, 91.2862, 90.9533, 90.5013, 90.1491, 89.9101, 89.7189, 89.5377, 89.3592, 89.2316, 89.0204, 88.8242, 88.6993, 88.554, 88.3832, 88.2319, 88.1397, 88.076, 88.041, 88.0099, 87.9685, 87.9244, 87.9021, 87.8868, 87.8667, 87.8467, 87.8392, 87.8314, 87.8284, 87.8234, 87.8153, 87.806, 87.799, 87.7892, 87.7794, 87.766, 87.759, 87.7555, 87.7525, 87.7495, 87.7431, 87.7354, 87.7316, 87.7288, 87.7261, 87.7258, 87.7247, 87.7246, 87.7241, 87.7238], [255.506, 200.959, 160.498, 146.623, 128.354, 123.527, 119.672, 116.109, 116.106, 114.276, 113.535, 112.635, 110.783, 110.39, 109.531, 106.751, 106.227, 105.636, 105.61, 105.606, 105.606, 105.606, 105.606], [251.931, 203.916, 163.028, 150.285, 130.172, 121.863, 117.363, 112.116, 109.825, 108.094, 106.222, 104.456, 100.759, 99.3092, 98.3956, 96.9075, 95.9433, 95.3421, 94.7212, 94.204, 93.7895, 93.4997, 93.0153, 92.7108, 92.478, 92.1876, 92.1639, 92.1081, 92.096, 92.096, 92.096, 92.096]}} ...
);

% Tuning error = 1.600594
% i_pass = 1, i_var = 1, i_mult = 1
% Hyperparams written at 2017-06-04, 21:34:47:772
