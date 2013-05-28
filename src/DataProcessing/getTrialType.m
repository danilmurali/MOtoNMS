function trialType = getTrialType(trialName)
%Extract type without repetition number
%TrialName should be composed by Type + Repetition number

nRep{1}='1';
nRep{2}='2';
nRep{3}='3';
nRep{4}='4';
nRep{5}='5';
nRep{6}='6';
nRep{7}='7';
nRep{8}='8';
nRep{9}='9';

ind=[];

for i=1:length(nRep)
    c=strfind(trialName,nRep{i});
    ind=[ind c];
end

if isempty(ind)==0
    
    trialType=trialName(1:ind-1);
else
    trialType=trialName;
    %disp('No repetition number in the trial name: trial type equals trial name')
end

    