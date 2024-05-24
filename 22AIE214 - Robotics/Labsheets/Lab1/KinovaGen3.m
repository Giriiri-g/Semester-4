% KinovaGen3 Robot
gen3 = loadrobot("kinovaGen3","DataFormat","column");
disp(gen3);
show(gen3);
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(gen3);
    show(gen3,config)
end
interactiveGUI = interactiveRigidBodyTree(gen3);
interactiveGUIConfiguration = randomConfiguration(gen3);
addConfiguration(interactiveGUI);
disp(interactiveGUI.storedConfiguration);