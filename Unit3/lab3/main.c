
// LAB 3, toggle led PF3 on TM4C kit, launchpad
// building startup.c , linkerscript.ld for cortexM4

// Omar Elmasri

#define SYSCTL_RCGC_R           (*((volatile unsigned long*) 0x400FE108))
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long*) 0x40025400))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long*) 0x4002551C))
#define GPIO_PORTF_DATA_R       (*((volatile unsigned long*) 0x400253FC))


void main()
{
  SYSCTL_RCGC_R = 0x00000020;
  for(volatile int i=0; i<300; i++); // delay to make sure clock up and running

  GPIO_PORTF_DIR_R |= 1<<3; // dir output for pin 3 port f
  GPIO_PORTF_DEN_R |= 1<<3;

    while(1)
    {
      GPIO_PORTF_DATA_R |= 1<<3;
      for(volatile int delay=0; delay<200e3; delay++);
      GPIO_PORTF_DATA_R &= ~(1<<3);
      for(volatile int delay=0; delay<200e3; delay++);
    }
} 