function colorchart = MacbethConstants
% The constants describing the appearance of a Macbeth color chart, where
% each color on the chart is enumerated from left to right, top to bottom.

% Manufacturer's sRGB D65 color values, taken from
% https://en.wikipedia.org/wiki/ColorChecker#Colors)
colorchart.hex_SRGB = { ...
'735244', 'c29682', '627a9d', '576c43', '8580b1', '67bdaa', ...
'd67e2c', '505ba6', 'c15a63', '5e3c6c', '9dbc40', 'e0a32e', ...
'383d96', '469449', 'af363c', 'e7c71f', 'bb5695', '0885a1', ...
'f3f3f2', 'c8c8c8', 'a0a0a0', '7a7a79', '555555', '343434'};
colorchart.SRGB = cellfun(@(x) ...
  [hex2dec(x(1:2)), hex2dec(x(3:4)), hex2dec(x(5:6))], ...
  colorchart.hex_SRGB, 'UniformOutput', false);
colorchart.SRGB = cat(1, colorchart.SRGB{:}) / 255;

% % Alternative sRGB color values, taken from
% % http://www.babelcolor.com/index_htm_files/RGB%20Coordinates%20of%20the%20Macbeth%20ColorChecker.pdf
% colorchart.SRGB = [...
%   29684 20794 17311;
%   51033 37831 33071; ...
%   23285 31447 40035; ...
%   23061 27664 16548; ...
%   33299 32893 45254; ...
%   23760 48805 44209; ...
%   57637 31797 12000; ...
%   17444 23445 43738; ...
%   50970 21055 24945; ...
%   24062 14904 27134; ...
%   40800 48564 16148; ...
%   59221 41533 10089; ...
%   9090 16275 37805; ...
%   17200 38272 19051; ...
%   46236 12506 14638; ...
%   61244 50998 5069; ...
%   49611 21580 38695; ...
%   0 35002 43613; ...
%   62954 63018 62371; ...
%   51492 51965 52019; ...
%   41301 41847 41958; ...
%   31014 31145 31239; ...
%   21187 21613 22046; ...
%   12507 12685 13032] / (2^16-1);

% We can recover the linear color coordinates by unlinearizing the gamma-curved
% values.
colorchart.RGB = UndoSrgbGamma(colorchart.SRGB);