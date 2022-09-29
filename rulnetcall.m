function out = rulnetcall(unit)

persistent mynet;
 if isempty(mynet)
     mynet = coder.loadDeepLearningNetwork('rul_net.mat'); % loading the network object
 out = predict(mynet,unit);
 end
end