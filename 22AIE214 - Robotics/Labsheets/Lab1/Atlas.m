% Atlas Robot
atlas = loadrobot("atlas")
show(atlas);
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(atlas);
    show(atlas,config)
end
interactiveGUI = interactiveRigidBodyTree(atlas);
interactiveGUIConfiguration = randomConfiguration(atlas);
addConfiguration(interactiveGUI);
disp(interactiveGUI.storedConfiguration);