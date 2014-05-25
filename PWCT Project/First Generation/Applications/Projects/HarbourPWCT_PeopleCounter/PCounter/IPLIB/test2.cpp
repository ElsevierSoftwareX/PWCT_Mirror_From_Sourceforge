#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <stdlib.h>
#include <conio.h>
#include <stdio.h>

#include "test2.h"
#include "imglib.cpp"
 
int main( void )
{


    if( !face_cascade.load( face_cascade_name ) ){ printf("--(!)Error loading\n"); return -1; };
    if( !eyes_cascade.load( eyes_cascade_name ) ){ printf("--(!)Error loading\n"); return -1; };

    cv::Mat frame = cv::imread("inputfile.jpg");

    if( !frame.empty() )
    {
        
		detectpeople( frame ); 	

		IplImage *small;
		IplImage small2;		
		small2 = frame ;		 
		small = &small2 ;

		if ( checkexit() != 2)
		{
		
			beforeimage();
			cvSaveImage("outputfile.jpg",small);
			afterimage();
			
		}
		
    }

   
	unlink(command_file);
    printf(" Closing the application \n");
    printf("end of the program \n"); 
    cvDestroyWindow( "Capture - Face detection" );
    return 0;
	
}

 