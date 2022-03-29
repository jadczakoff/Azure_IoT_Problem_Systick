
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_azure_rtos.c
  * @author  MCD Application Team
  * @brief   azure_rtos application implementation file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/

#include "app_azure_rtos.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>

#include "tx_api.h"

#include "board_init.h"
#include "sntp_client.h"
#include "stm_networking.h"

#include "nx_client.h"

#include "azure_config.h"
#include "app_threadx.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define AZURE_THREAD_STACK_SIZE 4096
#define AZURE_THREAD_PRIORITY   4
TX_THREAD azure_thread;
ULONG azure_thread_stack[AZURE_THREAD_STACK_SIZE / sizeof(ULONG)];
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN TX_Pool_Buffer */
/* USER CODE END TX_Pool_Buffer */
static UCHAR tx_byte_pool_buffer[TX_APP_MEM_POOL_SIZE];
static TX_BYTE_POOL tx_app_byte_pool;

/* USER CODE BEGIN NX_Pool_Buffer */
/* USER CODE END NX_Pool_Buffer */
static UCHAR  nx_byte_pool_buffer[NX_APP_MEM_POOL_SIZE];
static TX_BYTE_POOL nx_app_byte_pool;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/**
  * @brief  Define the initial system.
  * @param  first_unused_memory : Pointer to the first unused memory
  * @retval None
  */
VOID tx_application_define(VOID *first_unused_memory)
{
  /* USER CODE BEGIN  tx_application_define */

  /* USER CODE END  tx_application_define */

  VOID *memory_ptr;

  if (tx_byte_pool_create(&tx_app_byte_pool, "Tx App memory pool", tx_byte_pool_buffer, TX_APP_MEM_POOL_SIZE) != TX_SUCCESS)
  {
    /* USER CODE BEGIN TX_Byte_Pool_Error */

    /* USER CODE END TX_Byte_Pool_Error */
  }
  else
  {
    /* USER CODE BEGIN TX_Byte_Pool_Success */

    /* USER CODE END TX_Byte_Pool_Success */

    memory_ptr = (VOID *)&tx_app_byte_pool;

    if (App_ThreadX_Init(memory_ptr) != TX_SUCCESS)
    {
      /* USER CODE BEGIN  App_ThreadX_Init_Error */

      /* USER CODE END  App_ThreadX_Init_Error */
    }

    /* USER CODE BEGIN  App_ThreadX_Init_Success */

    /* USER CODE END  App_ThreadX_Init_Success */

  }

  if (tx_byte_pool_create(&nx_app_byte_pool, "Nx App memory pool", nx_byte_pool_buffer, NX_APP_MEM_POOL_SIZE) != TX_SUCCESS)
  {
    /* USER CODE BEGIN NX_Byte_Pool_Error */

    /* USER CODE END NX_Byte_Pool_Error */
  }
  else
  {
    /* USER CODE BEGIN TX_Byte_Pool_Success */

    /* USER CODE END TX_Byte_Pool_Success */

    memory_ptr = (VOID *)&nx_app_byte_pool;

    if (MX_NetXDuo_Init(memory_ptr) != NX_SUCCESS)
    {
      /* USER CODE BEGIN MX_NetXDuo_Init_Error */

      /* USER CODE END MX_NetXDuo_Init_Error */
    }

    /* USER CODE BEGIN MX_NetXDuo_Init_Success */

	//tx_byte_allocate(&tx_app_byte_pool, (VOID**) &memory_ptr, AZURE_THREAD_STACK_SIZE,
		//	TX_NO_WAIT);


    // Create Azure thread

        UINT status = tx_thread_create(&azure_thread,
            "Azure Thread",
            azure_thread_entry,
            0,
			azure_thread_stack,
            AZURE_THREAD_STACK_SIZE,
            AZURE_THREAD_PRIORITY,
            AZURE_THREAD_PRIORITY,
            TX_NO_TIME_SLICE,
            TX_AUTO_START);

        if (status != TX_SUCCESS)
        {
            printf("ERROR: Azure IoT thread creation failed\r\n");
        }

    /* USER CODE END MX_NetXDuo_Init_Success */

  }

}

/* USER CODE BEGIN  0 */

/* USER CODE END  0 */
