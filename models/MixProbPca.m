classdef MixProbPca < MixtureModel
%MIXPROBPCA


	properties

		dof;
		ndimensions;
		ndimsLatent;
		params;
		prior;

	end


	methods

		function model = MixProbPca(varargin)
		%
		end


		function computeMapLatent(model,varargin)
		%
			notYetImplemented('MixProbPca.computeMapLatent()');
		end


		function fit(model,varargin)
		%
			notYetImplemented('MixProbPca.fit()');
		end


		function inferLatent(model,varargin)
		%
			notYetImplemented('MixProbPca.inferLatent()');
		end


		function logpdf(model,varargin)
		%
			notYetImplemented('MixProbPca.logpdf()');
		end


		function sample(model,varargin)
		%
			notYetImplemented('MixProbPca.sample()');
		end


	end


end

