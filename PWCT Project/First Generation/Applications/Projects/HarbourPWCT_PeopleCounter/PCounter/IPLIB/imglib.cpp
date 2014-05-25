#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <stdlib.h>
#include <conio.h>
#include <stdio.h>
 

using namespace std;
using namespace cv;

String face_cascade_name = "haarcascade_frontalface_alt.xml";
String eyes_cascade_name = "haarcascade_eye_tree_eyeglasses.xml";
CascadeClassifier face_cascade;
CascadeClassifier eyes_cascade;
string window_name = "Capture - Face detection";
RNG rng(12345);

int nPeopleCount ;

char checkexit()
{

   FILE *fp;
   char c;
   fp = fopen(command_file,"r");
   c = fgetc(fp) ;
   fclose(fp);
   
   return c;
}

void writetofile()
{

     FILE *fp;
     fp = fopen(output_file,"w");  
     fprintf(fp,"%d \n", nPeopleCount);
     fclose(fp);  

}

void afterimage()
{

     FILE *fp;
     fp = fopen("done.txt","w");  
     fprintf(fp,"done \n" );
     fclose(fp);  

}

void beforeimage()
{

     unlink("done.txt");  

}


void writeface(int x,int y, int r1, int r2)
{

     FILE *fp;
     fp = fopen(faceinfo_file,"a"); /* open for writing */
     fprintf(fp,"\nF(");
     fprintf(fp,"X:%d", x);
     fprintf(fp,",Y:%d", y);
     fprintf(fp,",R1:%d", r1);
     fprintf(fp,",R2:%d)", r2);
     fclose(fp); /* close the file before ending program */
}


void writeeye(int x,int y, int r)
{

     FILE *fp;
     fp = fopen(faceinfo_file,"a");  
     fprintf(fp,"\nE(");
     fprintf(fp,"X:%d", x);
     fprintf(fp,",Y:%d", y);
     fprintf(fp,",R:%d)", r);
     fclose(fp);  
}

void detectpeople( Mat frame )
{
   std::vector<Rect> faces;
   Mat frame_gray;

   cvtColor( frame, frame_gray, CV_BGR2GRAY );
   equalizeHist( frame_gray, frame_gray );

   face_cascade.detectMultiScale( frame_gray, faces, 1.1, 2, 0|CV_HAAR_SCALE_IMAGE, Size(30, 30) );

   if ( faces.size() != nPeopleCount )
   {
   
		nPeopleCount = faces.size(); 
		writetofile() ;	
	 
   }

   unlink( faceinfo_file );

   for( size_t i = 0; i < faces.size(); i++ )
   {

      int point_x , point_y  ;
      point_x = faces[i].x + faces[i].width/2 ;
      point_y = faces[i].y + faces[i].height/2 ;
      int radius1 = faces[i].width/2  ; 
      int radius2 = faces[i].height/2 ;

      Point center( point_x , point_y);
      ellipse( frame, center, Size( radius1 , radius2 ) , 0, 0, 360, Scalar( 255, 0, 255 ), 2, 8, 0 );

      writeface(point_x,point_y, radius1, radius2) ;

      Mat faceROI = frame_gray( faces[i] );
      std::vector<Rect> eyes;

      eyes_cascade.detectMultiScale( faceROI, eyes, 1.1, 2, 0 |CV_HAAR_SCALE_IMAGE, Size(30, 30) );

      for( size_t j = 0; j < eyes.size(); j++ )
       {
		 int point_x , point_y  ;
		 point_x = faces[i].x + eyes[j].x + eyes[j].width/2 ;
		 point_y = faces[i].y + eyes[j].y + eyes[j].height/2 ;
         Point eye_center( point_x , point_y );
         int radius = cvRound( (eyes[j].width + eyes[j].height)*0.25 );
         circle( frame, eye_center, radius, Scalar( 255, 0, 0 ), 3, 8, 0 );
	
		 writeeye(point_x,point_y,radius) ;

       }
    }
 

}

void detectAndDisplay( Mat frame )
{

   detectpeople(frame ) ;
   imshow( window_name, frame );

}
