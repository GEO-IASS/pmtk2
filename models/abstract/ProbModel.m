classdef ProbModel < ProbDist
% ProbModels all have parameters, which is not true of all ProbDists, (e.g.
% SampleDist).
    
    properties(Abstract = true)
        fitEng;
        stateEstEng;
        modelSelEng;
        params;
    end
    
    methods(Abstract = true)
        sample;
        logprob;
        fit;
    end
    
    
    methods
        
        function D = impute(model,D,Q)
          notYetImplemented('ProbModel.impute()');
        end
        
        function M = marginal(model,D,Q)
           M = computeMarginal(model.stateEstEng,D,Q); 
        end
        
    end
    
end

