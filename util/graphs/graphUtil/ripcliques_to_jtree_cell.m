function [jtree]=ripcliques_to_jtree_cell(re_index_cliques) 
% input: re_index_cliques, a 1 x t cell array of nonempty cliques 
%        of a chordal graph in RIP ordering 
%        (such as re_index_cliques from chordal_to_ripcliques_cell.m). 
% output: jtree, the adjacency matrix of a junction tree with respect 
%         to cliques (not necessarily unique). 

% WARNING: this algorithm only works for cliques outputted with respect to 
%  a maximum cardinality search ordering of the cliques, 
%  as then the cliques are already ordered with respect to the rank 
%  of the highest vertex in the clique. For example, if mcs ordering of 
%   vertices is [6 5 3 1 4 2], then a clique comprised of {6,1} will precede 
%   a clique comprised of {4,2} since 6 and 1 precede 4 and 2 in the ordering [6 5 3 1 4 2]. 

% author Helen Armstrong
% url http://www.library.unsw.edu.au/~thesis/adt-NUN/uploads/approved/adt-NUN20060901.134349/public/01front.pdf -

t=size(re_index_cliques,2);
score=zeros(1,t);
jtree=zeros(t,t);
for i=2:t;
  for k=1:i-1;
    score(k)=length(intersect(re_index_cliques{i}, re_index_cliques{k}));
  end;
  if max(score)~=0 ;
    % only add the edge if clique i IS connected to one of its
    % predecessors. if score is all zeros, then clique has no intersection
    % with any of its predecessors. Since the cliques are in RIP, it must
    % follow that we are no longer in the same connected component of
    % the graph.
    % if clique i has no intersection with any of the preceding cliques,
    % then the graph is disconnected, so the adjacency matrix will have
    % a zero row/column for this i, and we have a forest, not a j_tree.
    j=argmax(score);
    jtree(i,j)=1;
    jtree(j,i)=1;
  end;
end;