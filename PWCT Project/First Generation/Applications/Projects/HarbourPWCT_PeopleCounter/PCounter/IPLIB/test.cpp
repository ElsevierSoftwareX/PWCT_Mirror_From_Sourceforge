#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>

#include <stdlib.h>
#include <conio.h>
#include <stdio.h>

using namespace std;
using namespace cv;
 
#include "test.h"
#include "imglib.cpp"     
 
int main( void )
{

 
  CvCapture* capture;
  Mat frame;

  if( !face_cascade.load( face_cascade_name ) ){ printf("--(!)Error loading\n"); return -1; };
  if( !eyes_cascade.load( eyes_cascade_name ) ){ printf("--(!)Error loading\n"); return -1; };

  capture = cvCaptureFromCAM( -1 );
  if( capture )
  {
    while(1)
    {

		if ( checkexit() != 2)
		{
		
				 frame = cvQueryFrame( capture );

				
				 if( !frame.empty() )
				 { 
		   
					detectpeople( frame ); 
					writetofile();
					IplImage small2;		 			
					small2 = frame ;		 
					beforeimage();
					cvSaveImage("myimage.jpg",&small2);
					afterimage();	
					
				 }
				 else
				 { 
						printf(" --(!) No captured frame -- Break!"); 
						break; 
				 }


		}

        int c = waitKey(1);
    
        if( ( (char)c == 'c' ) || ( checkexit()   == '1' ) ) 
		{ 
			unlink(command_file);
			unlink(output_file);
			unlink(faceinfo_file);
			unlink("myimage.jpg");
			printf(" Closing the application \n");
			break; 
		}

    }
  }

  printf("end of the program \n");   
  
  cvDestroyWindow( "Capture - Face detection" );
  cvReleaseCapture( &capture );

  return 0;
  
}

 