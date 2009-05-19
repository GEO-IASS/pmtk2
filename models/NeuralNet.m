classdef NeuralNet < CondModel
%NEURALNET


	properties

		dof;
		ndimensions;
		params;
		prior;

	end


	methods

		function model = NeuralNet(varargin)
		%
		end


		function computeMapOutput(model,varargin)
		%
			notYetImplemented('NeuralNet.computeMapOutput()');
		end


		function fit(model,varargin)
		%
			notYetImplemented('NeuralNet.fit()');
		end


		function inferOutput(model,varargin)
		%
			notYetImplemented('NeuralNet.inferOutput()');
		end


		function logpdf(model,varargin)
		%
			notYetImplemented('NeuralNet.logpdf()');
		end


		function sample(model,varargin)
		%
			notYetImplemented('NeuralNet.sample()');
		end


	end


end

