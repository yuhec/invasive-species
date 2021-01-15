import cv2
import os
import numpy as np

def process_data(path_dir, max_imgs, IMG_SIZE): 
    data = []
    img_nums = []
    for img in os.listdir(path_dir)[:max_imgs]: 
        path = os.path.join(path_dir, img) 
        img_num = img.split('.')[0] 
        img = cv2.imread(path, cv2.IMREAD_GRAYSCALE) 
        img = cv2.resize(img, (IMG_SIZE, IMG_SIZE)) 
        data.append(np.array(img))
        img_nums.append(img_num)

    return data, img_nums