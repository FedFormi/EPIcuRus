function tree=updatenodeids(tree,d)
%UPDATENODEIDS    Updates the node ids of a GPLAB tree.
%   UPDATENODEIDS(TREE,DIFFERENCE) returns TREE with DIFFERENCE
%   added to all its node ids.
%   
%   Input arguments:
%      TREE - the tree to update the node ids (struct)
%      DIFFERENCE - the value to add to the node ids (integer)
%   Output arguments:
%      TREE - the tree with updated node ids (struct)
%
%   See also SWAPNODES
%
%   Copyright (C) 2003-2015 Sara Silva (sara@fc.ul.pt)
%   This file is part of the GPLAB Toolbox
% This file is part of GP-utils
% Copyright © [2020] – [2021] University of Luxembourg.

tree.nodeid=tree.nodeid+d;
tree.maxid=tree.maxid+d;

for i=1:length(tree.kids)
   tree.kids{i}=updatenodeids(tree.kids{i},d);
end
