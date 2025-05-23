function s=nodes(tree)
%NODES    Counts the number of nodes of a GPLAB algorithm tree.
%   NODES(TREE) returns the number of nodes (functions and
%   terminals) of a GPLAB algorithm individual representation tree.
%
%   Input arguments:
%      TREE - the tree to measure (struct)
%   Output arguments:
%      NNODES - the number of nodes of the tree (integer)
%
%   See also INTRONNODES, TREELEVEL, MAKETREE
%
%   Copyright (C) 2003-2015 Sara Silva (sara@fc.ul.pt)
%   This file is part of the GPLAB Toolbox
% This file is part of GP-utils
% Copyright © [2020] – [2021] University of Luxembourg.

nkids=size(tree.kids,2);
if nkids<0
   error('NODES: number of children lower than 0!');
end

s=1; % root of this subtree
if nkids>0
   for i=1:nkids
      s=s+nodes(tree.kids{i});
   end
end
