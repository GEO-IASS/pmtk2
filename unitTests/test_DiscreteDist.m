classdef test_DiscreteDist < UnitTest
% Test DiscreteDist

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
        
		function test_entropy(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_fit(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_logPdf(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_mean(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_mode(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_plotPdf(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_sample(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
		end

		function test_var(obj)
			% add assert statements here...
			error('empty test method'); % remove this error
        end
        
        function test_logPrior(obj)
            error('empty test method');
        end
            
        function test_mkSuffStat(obj)
            error('empty test method');
        end
        
        function test_pmf(obj)
           error('empty test method'); 
        end


	end
end
