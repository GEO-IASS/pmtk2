classdef test_DgmTabularConj < UnitTest
% Test DgmTabularConj

	methods


		function obj = setup(obj)

			 % Setup fixtures common to all test methods here.
			 % The target object is stored under obj.targetObject.

		end


		function obj = teardown(obj)

			 % Perform final cleanup here

		end


		function test_Cnstr(obj)
			target = feval(obj.targetClass);
		end
		function test_inferParams(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_logmarglik(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

	end
end
