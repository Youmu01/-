//the god of opencv, please let it run!
#include "stdio.h"
#include<iostream> 
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
using namespace std;
using namespace cv;

int main()
{
   string imageName = "5_red_1_50cm46.png";
   Mat image = imread(imageName);
   imshow("orginal", image); //try to log in the picture
   
   if(image.empty())  //deal the situation that image did not log in
   { 
    cout<<"not found"<<endl;
    return 0;
   } 
   
   //try to split the image
   
   
   vector<Mat>bgrsplit;
   
   split(image,bgrsplit);//divide the channels
   //imshow("temp", bgrsplit[0]);//test
   
   Mat thresholdimg;
   //Mat thresholdimg2;//backup
   threshold(bgrsplit[0],thresholdimg,70,255,THRESH_BINARY);
   //threshold(bgrsplit[1],thresholdimg2,40,255,THRESH_BINARY);//test
   Mat element;
   element = getStructuringElement(MORPH_RECT,Size(5,7));
   morphologyEx(thresholdimg,thresholdimg,MORPH_OPEN,element);
   morphologyEx(thresholdimg,thresholdimg,MORPH_CLOSE,element);//open and close to pure the image
   
    vector<Vec4i> hierarchy;
    vector<vector<Point>> contours;
   findContours(thresholdimg, contours,hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);//find the contour of the light
   //drawContours(image, contours,-1,Scalar(0,255,0),2);//test
   //imshow("temp",image);//test
   int index=0;
   Rect point_array[20];
   Rect boundRect;
   RotatedRect box;
   vector<Point2f>boxPts(4);//dim the element
   for(int i=0; i<contours.size();i++)
   {
    boundRect=boundingRect(Mat(contours[i]));
    
    try// get the suitable contour
    { 
     if(double(boundRect.height/boundRect.width)>=1.3&& boundRect.height>25&& boundRect.height>10)//resaons
     {
      point_array[index]= boundRect;
      index++;
     }
   }
   catch(const char* msg)
   {
    cout<<printf(msg)<<endl;
   }
  }
  int point_near[2];
  int min = 10000;
  for(int i=0; i<index-1;i++)
  {
   for(int j=i+1;j<index;j++)
   {
    int value= abs(point_array[i].area() - point_array[j].area());
    if(value<min)
     {
      min = value;
      point_near[0]=i;
      point_near[1]=j;
     }
    }
   }
   try//draw a contour of the armor
   {
    Rect rectangle_1= point_array[point_near[0]];
    Rect rectangle_2= point_array[point_near[1]];
    if(rectangle_2.x==0 || rectangle_1.x==0)
    {
     throw"no enough points";
    }
    Point point1= Point(rectangle_1.x+rectangle_1.width/ 2, rectangle_1.y);
    Point point2= Point(rectangle_1.x+rectangle_1.width/ 2, rectangle_1.y+rectangle_1.height);
    Point point3= Point(rectangle_2.x+rectangle_2.width/ 2, rectangle_2.y);
    Point point4= Point(rectangle_2.x+rectangle_2.width/ 2, rectangle_2.y+rectangle_2.height);
    Point p[4]= {point1,point2,point4,point3};
    cout<<p[0]<<p[1]<<p[2]<<p[3]<<endl;// output the points
    for(int i=0; i<4; i++)
    {
     line(image,p[i%4],p[(i+1)%4], Scalar(0,255,0),2);
    }
   }
  catch(const char*msg)
  {
   cout<<msg<<endl;
  }
  imshow("final",image);//test
   
   
   
   
   imshow("target1",thresholdimg);//test
   //imshow("target2",thresholdimg2);//test
   waitKey(0);//test
   
   
   return 0;
}
