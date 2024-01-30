#include <stdio.h>

int main(void) {
  float gerente = 1380.57, extra = 0;
  double total = 0, salarioMensual=0, cant1 = 0, cant2 = 0, cant3 = 0;
  int opcion, i = 1, horas = 0, ventas = 0, cate1 = 0, cate2 = 0, cate3 = 0,  empleadosTotal = 0;

  do {
    printf("\nMenú de opciones:\n");
    printf("1. Gerente\n");
    printf("2. Trabajador con Horario\n");
    printf("3. Trabajador a Comisión\n");
    printf("4. Salir\n");
    printf("Ingrese una opción: (1-4): ");
    scanf("%d", &opcion);



    switch(opcion) {
      case 1: salarioMensual = 1380.57*4;
      cant1 = cant1 + salarioMensual;
      cate1 ++;
      break;

      case 2: salarioMensual = 560.84;
      printf("¿Cuántas horas trabajó: ");
      scanf("%d", &horas);
      if(horas > 40){
        extra = horas - 40;
        extra = extra * 1.5;
        salarioMensual = salarioMensual+((salarioMensual * extra)/100);  
        cant2 = cant2 + salarioMensual;
      }
      cate2 ++;
      break;
      
      case 3: salarioMensual = 425.99;
        printf("Cuántas ventas hizo: ");
        scanf("%d", &ventas);
        ventas = (ventas * 4.6)/100;
        salarioMensual = salarioMensual + ventas; 
        cant3 = cant3 + salarioMensual;
        cate3 ++;
        break;
      case 4: break;
      default: printf("Opción no válida. Debe ser entre 1 y 4");
    }
  }while(opcion != 4);


  total = cant1 + cant2 + cant3;
  empleadosTotal = cate1 + cate2 +cate3;
  
  printf("Cantidad de empleados por categoría: \n Gerente: %d \nTrabajador con Horario: %d \nTrabajador a Comisión: %d\n\n", cate1, cate2, cate3);
  printf( "Total de empleados: %d\n",  empleadosTotal);
  
  printf("Monto mensual por categoría: \nGerente: $%.2f \nTrabajador con Horario: $%.2f \nTrabajador a Comisión: $%.2f\n\n", cant1, cant2, cant3);
  
  printf("Porcentaje que corresponde del total: Gerente: %.2f%% \nTrabajador con Horario: %.2f%% \nTrabajador a Comisión: %.2f%%\n\n", (cant1/total)*100, (cant2/total)*100, (cant3/total)*100);
  
  printf("\nEl total que la empresa debe pagar es de: $%.2f\n\n", total);
  return 0;
}