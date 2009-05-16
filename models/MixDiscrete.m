classdef MixDiscrete < MixtureModel
%MIXDISCRETE


	properties

		dof;
		ndimensions;
		ndimsLatent;
		params;
		prior;

	end


	methods

		function model = MixDiscrete(varargin)
		%
		end


		function computeMapLatent(model,varargin)
		%
			notYetImplemented('MixDiscrete.computeMapLatent()');
		end


		function fit(model,varargin)
		%
			notYetImplemented('MixDiscrete.fit()');
		end


		function inferLatent(model,varargin)
		%
			notYetImplemented('MixDiscrete.inferLatent()');
		end


		function logpdf(model,varargin)
		%
			notYetImplemented('MixDiscrete.logpdf()');
		end


		function sample(model,varargin)
		%
			notYetImplemented('MixDiscrete.sample()');
		end


	end


end

