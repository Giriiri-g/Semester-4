ur10 = loadrobot("universalUR10");
atlas = loadrobot("atlas");
gen3 = loadrobot("KinovaGen3", "DataFormat","column");

disp(gen3);
show(gen3);
show(atlas);
show(ur10);

%Generating joint configurations
for i =1:9
	subplot(3,3,i);
	config = randomConfiguration(ur10);
	show(ur10,config);
end

%Interacting with Robot model
interactiveGUI = interactiveRigidBodyTree(ur10);


%Saving the joint configuration
interactiveGUI.Configuration = randomConfiguration(ur10);
addConfiguration(interactiveGUI)
disp(interactiveGUI.StoredConfigurations)