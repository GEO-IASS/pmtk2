function addTestClass(baseClass,allowOverwrite)
% Generate a test_class template for the specified class. 
        
        
        savedDir = pwd;
        if nargin < 2, allowOverwrite = false; end
        cd(fullfile(PMTKroot(),'unitTests'));
        if ~exist(baseClass,'file'), error('Could not find class %s',baseClass);end
        testClass = [UnitTest.testPrefix,baseClass];
        if exist(testClass,'file') && ~allowOverwrite, error('%s already exists',testClass);end
        methodNames = localMethods(baseClass);
        if isempty(methodNames) && isabstract(baseClass), error('Class %s is abstract, and has no implemented methods to test.',baseClass);end
        
        classText = {sprintf('classdef %s < UnitTest',testClass)          
                     sprintf('%% Test %s',baseClass);
                    ''
                     sprintf('\tmethods')
                     ''
                     ''
                     sprintf('\t\tfunction obj = setup(obj)');
                     ''
                     sprintf('\t\t\t %% Setup fixtures common to all test methods here.');
                     sprintf('\t\t\t %% The target object is stored under obj.targetObject.');
                     ''
                     sprintf('\t\tend');
                     ''
                     ''
                     sprintf('\t\tfunction obj = teardown(obj)')
                     ''
                     sprintf('\t\t\t %% Perform final cleanup here');
                     ''
                     sprintf('\t\tend');
                     ''
                     ''
                     };
                 if ~isabstract(baseClass)
                    classText = [classText;
                                 sprintf('\t\tfunction %sCnstr(obj)',UnitTest.testPrefix);
                                 sprintf('\t\t\ttarget = feval(obj.targetClass);');
                                 sprintf('\t\tend');
                                  '';
                                  '';
                                 ];
                 end
        for j=1:numel(methodNames)
           mtext  = {sprintf('\t\tfunction %s%s(obj)',UnitTest.testPrefix,methodNames{j})
                     sprintf('\t\t\t%% add assert statements here...')
                     sprintf('\t\t\terror(''empty test method''); %% remove this error'); 
                     sprintf('\t\tend')
                     ''
                    };
           classText = [classText;mtext]; %#ok
        end
        classText = [classText;'';'';sprintf('\tend');'';'end'];
        writeText(classText,[testClass,'.m']);
        fprintf('Test class %s created\n',testClass);
        cd(savedDir);
end