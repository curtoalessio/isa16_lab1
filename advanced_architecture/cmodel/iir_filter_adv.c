#include<stdio.h>
#include<stdlib.h>

#define N 2 /// pipeline lenght
#define NB 11  /// number of bits

const int b0 = 211; /// coefficient b0
const int b[N]={423, 211}; /// b array
const int a[N]={-61, -75}; /// a array
const int a1=378;

/// Perform fixed point filtering assuming direct form II
///\param x is the new input sample
///\return the new output sample
int myfilter(int x)
{
  static int sw[N+1]; /// w shift register
  static int first_run = 0; /// for cleaning the shift register
  static int x_1;
  int i; /// index
  int w; /// intermediate value (w)
  int y; /// output sample
  int fb, ff; /// feed-back and feed-forward results
  int tmp;
  int a1x1;


  /// clean the buffer
  if (first_run == 0)
  { x_1=0;
    first_run = 1;
    for (i=0; i<N+1; i++)
    sw[i] = 0;
  }

  /// compute feed-forward

  ff = 0;

  for (i=0; i<N; i++)
  {
    ff += (sw[i]*b[i]) >> (NB+1);
  }

    ///compute feed-back
  fb = 0;
    for (i=1; i<N+1; i++)
  {
    fb += (sw[i]*a[i-1]) >> (NB+1);
  }

  /// compute intermediate value (w) and output sample
  a1x1=a1*x_1 >> (NB+1);
  tmp = x + a1x1;
  w=tmp + fb;
  y = (w*b0) >> (NB+1);
  y += ff;


  /// update the shift register
  for (i=N+1; i>0; i--)
    {sw[i] = sw[i-1];}
    sw[0] = w;
  x_1 = x;
  return y;
}

int main (int argc, char **argv)
{
  FILE *fp_in;
  FILE *fp_out;

  int x;
  int y;

  /// check the command line
  if (argc != 3)
  {
    printf("Use: %s <input_file> <output_file>\n", argv[0]);
    exit(1);
  }

  /// open files
  fp_in = fopen(argv[1], "r");
  if (fp_in == NULL)
  {
    printf("Error: cannot open \n");
    exit(2);
  }
  fp_out = fopen(argv[2], "w");

  /// get samples and apply filter
  fscanf(fp_in, "%d", &x);
  do{
    y = myfilter(x);
    fprintf(fp_out,"%d\n", y);
    fscanf(fp_in, "%d", &x);
  } while (!feof(fp_in));

  fclose(fp_in);
  fclose(fp_out);

  return 0;

}
