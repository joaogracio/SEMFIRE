bag = rosbag('semfireIA_G3.bag');
bSel = select(bag,'Topic','/camera/rgb_sd_rect');
msgs = readMessages(bSel,1:4);
img = readImage(msgs{2});
imshow(img);
