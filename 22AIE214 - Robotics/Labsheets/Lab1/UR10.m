% UniversalUR10
ur10 = loadrobot("universalUR10");
show(ur10);
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(ur10);
    show(ur10,config)
end
interactiveGUI = interactiveRigidBodyTree(ur10);
interactiveGUIConfiguration = randomConfiguration(ur10);
addConfiguration(interactiveGUI);
disp(interactiveGUI.storedConfiguration);