function out = rulnetcall(unit)

persistent mynet;
 if isempty(mynet)
     mynet = coder.loadDeepLearningNetwork('rul_net.mat'); % loading the network object
 end
 out = predict(mynet,unit);

end
