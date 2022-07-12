#include "stdio.h"

int main(void)
{
  for (int i = 0; i < 16; ++i)
  {
#ifdef EXTI_P
  #define EXTI_P
    // clang-format off
 printf("//EXTI%d\n",i) ;
 printf("#define EXTI%dPA%d (EXTI_GPIO_Mapping_t){EXTI%d, GPIOA, GPIO_Pin_%d, EXTI%d_IRQ}\n",i,i,i,i,i);
 printf("#define EXTI%dPB%d (EXTI_GPIO_Mapping_t){EXTI%d, GPIOB, GPIO_Pin_%d, EXTI%d_IRQ}\n",i,i,i,i,i);
 printf("#define EXTI%dPC%d (EXTI_GPIO_Mapping_t){EXTI%d, GPIOC, GPIO_Pin_%d, EXTI%d_IRQ}\n",i,i,i,i,i);
 printf("#define EXTI%dPD%d (EXTI_GPIO_Mapping_t){EXTI%d, GPIOD, GPIO_Pin_%d, EXTI%d_IRQ}\n",i,i,i,i,i);
 printf("\n");
// clang-format on
#endif
#ifdef IVT
  #define IVT
    if (i > 4 && i < 10)
    {
      printf("#define EXTI%d_IRQ  %d", i, 23);
      continue;
    }
    if (i > 4 && i < 10)
    {
      printf("#define EXTI%d_IRQ  %d", i, 23);
      continue;
    }
    printf("#define EXTI%d_IRQ  %d", i, i + 6);
#endif
  }
  return 0;
}
