#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <opencv2/opencv.hpp>


int main (int argc, char* argv[]) {
	const std::string img_path = argv[1];

	if (img_path.empty()) {
		printf("Please add image path!!\n");
		return -1;
	}
	
	int img_mode = (2 < argc) && argv[2] == 0 ? cv::IMREAD_GRAYSCALE: cv::IMREAD_COLOR;
	cv::Mat image = cv::imread(img_path, img_mode);
  std::string window_name = (2 < argc) && argv[2] == 0 ? "Grayscale Image" : "Color Image";
	cv::imshow(window_name, image);
	
	cv::waitKey(0);
	return 0;
}

