classdef MixMvnMc < MixMvn & BayesModel
%MIXMVNMC


	properties

		paramDist;

	end


	methods

		function model = MixMvnMc(varargin)
		%
		end


		function getParamPost(model,varargin)
		%
			notYetImplemented('MixMvnMc.inferParams()');
		end


		function logMargLik(model,varargin)
		%
			notYetImplemented('MixMvnMc.logmarglik()');
		end


	end


end

