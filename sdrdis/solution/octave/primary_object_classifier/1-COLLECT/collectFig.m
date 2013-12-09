clear ; close all; clc

cd 0;

files = ls;

j = 0;
for i=1:length(files)
  j += 1;
  fileName = strtrim(files(i, :));
  [IMG] = imread(fileName);
  IMG = cast(IMG, 'double');
  infos = imfinfo(fileName);
  if infos.TotalColors == 1
    IMG = IMG .* 255;
  end
  X(j, :) = IMG'(:);
  y(j, 1) = 0;
end;

cd ..;
cd 1;
files = ls;

for i=1:length(files)
  j += 1;
  fileName = strtrim(files(i, :));
  [IMG] = imread(fileName);
  IMG = cast(IMG, 'double');
  infos = imfinfo(fileName);
  if infos.TotalColors == 1
    IMG = IMG .* 255;
  end
  X(j, :) = IMG'(:);
  y(j, 1) = 1;
end;

cd ..;
cd 2;
files = ls;

for i=1:length(files)
  j += 1;
  fileName = strtrim(files(i, :));
  [IMG] = imread(fileName);
  IMG = cast(IMG, 'double');
  infos = imfinfo(fileName);
  if infos.TotalColors == 1
    IMG = IMG .* 255;
  end
  X(j, :) = IMG'(:);
  y(j, 1) = 2;
end;

cd ..;

save -binary unordered_bundle X y
