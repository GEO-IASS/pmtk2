classdef LogRegL1FitEng < LogRegFitEng
   
    
    properties
        verbose;
        
    end
    
    methods
        
        function eng = LogRegL1FitEng(varargin)
            [eng.verbose,eng.optMethod] = processArgs(varargin,'-verbose',true,'-optMethod','projection');
        end
        
    end
    
    methods(Access = 'protected')
        
        function [w, dof, output] = fitCore(eng,model, X, Y1,  winit)
        % Y1 is n*C (one of K)
            d = size(X,2);
            C = model.nclasses;
            lambdaVec = model.lambda*ones(d,C-1);
            if model.addOffset,lambdaVec(:,1) = 0;end % don't regularize w0
            lambdaVec = lambdaVec(:);
            objective = @(w,varargin)LogRegFitEng.multinomLogregNLLGradHessL2(w, X, Y1,0,false); % unpenalized objective (lambda=0 turns off L2 regularizer)
            %TODO move multinomLogRegNLLGradHessL2 from /util/misc to
            %LogRegFitEng protected methods
            
            options.verbose = eng.verbose;
            if strcmpi(eng.optMethod, 'projection')
                options.order = -1; % significant speed improvement with this setting
                options.maxIter = 250;
            end
            [w,eng.diagnostics.fEvals] = L1General(eng.optMethod, objective, winit,lambdaVec, options);
            output = eng.diagnostics;
            dof = [];
        end
    end
end
    
