ur10 = loadrobot("universalUR10");
atlas = loadrobot("atlas");
gen3 = loadrobot("KinovaGen3", "DataFormat","column");

disp(gen3);
show(gen3);
show(atlas);
show(ur10);

%Generating joint configurations
for i =1:4
	subplot(2,2,i);
	config = randomConfiguration(gen3)
	show(gen3,config);
end

%Interacting with Robot model
interactiveGUI = interactiveRigidBodyTree(gen3);

%Saving the joint configuration
interactiveGUI.Configuration = randomConfiguration(gen3);
addConfiguration(interactiveGUI)
disp(interactiveGUI.StoredConfigurations)