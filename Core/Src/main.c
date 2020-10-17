/**
  ******************************************************************************
  * @file    Multi/Examples/MotionControl/IHM01A1_ExampleFor1Motor/Src/main.c 
  * @author  IPC Rennes
  * @version V1.10.0
  * @date    March 16th, 2018
  * @brief   This example shows how to use 1 IHM01A1 expansion board
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdio.h>
#include <math.h>

/** @defgroup IHM01A1_Example_for_1_motor_device
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
 static volatile uint16_t gLastError;

 TIM_HandleTypeDef htim1;
 TIM_HandleTypeDef htim2;
 TIM_HandleTypeDef htim10;

 UART_HandleTypeDef huart2;



L6474_Init_t gL6474InitParams =
{
    160,                               /// Acceleration rate in step/s2. Range: (0..+inf).
    160,                               /// Deceleration rate in step/s2. Range: (0..+inf). 
    1600,                              /// Maximum speed in step/s. Range: (30..10000].
    800,                               ///Minimum speed in step/s. Range: [30..10000).
    1000,                               ///250 Torque regulation current in mA. (TVAL register) Range: 31.25mA to 4000mA.
    2000,                               ///750 Overcurrent threshold (OCD_TH register). Range: 375mA to 6000mA.
    L6474_CONFIG_OC_SD_ENABLE,         ///Overcurrent shutwdown (OC_SD field of CONFIG register). 
    L6474_CONFIG_EN_TQREG_TVAL_USED,   /// Torque regulation method (EN_TQREG field of CONFIG register).
    L6474_STEP_SEL_1_16,               /// Step selection (STEP_SEL field of STEP_MODE register).
    L6474_SYNC_SEL_1_2,                /// Sync selection (SYNC_SEL field of STEP_MODE register).
    L6474_FAST_STEP_12us,              /// Fall time value (T_FAST field of T_FAST register). Range: 2us to 32us.
    L6474_TOFF_FAST_8us,               /// Maximum fast decay time (T_OFF field of T_FAST register). Range: 2us to 32us.
    3,                                 /// Minimum ON time in us (TON_MIN register). Range: 0.5us to 64us.
    21,                                /// Minimum OFF time in us (TOFF_MIN register). Range: 0.5us to 64us.
    L6474_CONFIG_TOFF_044us,           /// Target Swicthing Period (field TOFF of CONFIG register).
    L6474_CONFIG_SR_320V_us,           /// Slew rate (POW_SR field of CONFIG register).
    L6474_CONFIG_INT_16MHZ,            /// Clock setting (OSC_CLK_SEL field of CONFIG register).
    (L6474_ALARM_EN_OVERCURRENT      |
     L6474_ALARM_EN_THERMAL_SHUTDOWN |
     L6474_ALARM_EN_THERMAL_WARNING  |
     L6474_ALARM_EN_UNDERVOLTAGE     |
     L6474_ALARM_EN_SW_TURN_ON       |
     L6474_ALARM_EN_WRONG_NPERF_CMD)    /// Alarm (ALARM_EN register).
};


/* Private function prototypes -----------------------------------------------*/
static void MyFlagInterruptHandler(void);

static void MX_GPIO_Init(void);
static void MX_TIM2_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_TIM10_Init(void);

static volatile int16_t d_enc = -6;
static volatile int16_t dd_enc = -6;
static volatile uint32_t enc_val = 0x7FFFFFFF;
static volatile int16_t enc_norm;
int16_t enc_norm_offset = 847+300;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  // Check which version of the timer triggered this callback and toggle LED

	char uart_buf[50];
	int uart_buf_len;
	dd_enc = (TIM2->CNT - enc_val) - d_enc;
	d_enc = TIM2->CNT - enc_val;
	enc_val = TIM2->CNT;
	//enc_norm = enc_val % 1200;
	enc_norm = (enc_val - enc_norm_offset) % 1200;

	if (htim == &htim10)
	{
		uart_buf_len = sprintf(uart_buf, "%u\r\n", enc_norm);
		HAL_UART_Transmit(&huart2, (uint8_t *) uart_buf, uart_buf_len, 100);

	}
}



/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
  int32_t pos;
  uint16_t mySpeed;

  uint8_t my_dev = 0; // Zero is the first of the initialized devices.
  /* STM32xx HAL library initialization */
  // Had to override DIR pin for device 1 in
  // x_nucleo_ihm01a1_stm32f4xx.h
  char uart_buf[50];
  int uart_buf_len;

  HAL_Init();
  
  /* Configure the system clock */
  SystemClock_Config();

  MX_GPIO_Init();
  MX_USART2_UART_Init();
  MX_TIM2_Init();
  MX_TIM10_Init();

//----- Init of the Motor control library 
/* Set the L6474 library to use 1 device */
  BSP_MotorControl_SetNbDevices(BSP_MOTOR_CONTROL_BOARD_ID_L6474, 1);
  /* When BSP_MotorControl_Init is called with NULL pointer,                  */
  /* the L6474 registers and parameters are set with the predefined values from file   */
  /* l6474_target_config.h, otherwise the registers are set using the   */
  /* L6474_Init_t pointer structure                */
  /* The first call to BSP_MotorControl_Init initializes the first device     */
  /* whose Id is 0.                                                           */
  /* The nth call to BSP_MotorControl_Init initializes the nth device         */
  /* whose Id is n-1.                                                         */
  /* Uncomment the call to BSP_MotorControl_Init below to initialize the      */
  /* device with the structure gL6474InitParams declared in the the main.c file */
  /* and comment the subsequent call having the NULL pointer                   */
  //BSP_MotorControl_Init(BSP_MOTOR_CONTROL_BOARD_ID_L6474, NULL);
  BSP_MotorControl_Init(BSP_MOTOR_CONTROL_BOARD_ID_L6474, &gL6474InitParams);
  
  /* Attach the function MyFlagInterruptHandler (defined below) to the flag interrupt */
  BSP_MotorControl_AttachFlagInterrupt(MyFlagInterruptHandler);

  /* Attach the function Error_Handler (defined below) to the error Handler*/
  BSP_MotorControl_AttachErrorHandler(Error_Handler);


  //----- Move of 16000 steps in the FW direction
  /* Move device 0 of 16000 steps in the FORWARD direction*/


  /* Wait for the motor of device 0 ends moving */
  //BSP_MotorControl_WaitWhileActive(0);

  /* Wait for 2 seconds */
  //HAL_Delay(2000);
  
//----- Move of 16000 steps in the BW direction

  /* Move device 0 of 16000 steps in the BACKWARD direction*/
  //BSP_MotorControl_Move(0, BACKWARD, 4);

  /* Wait for the motor of device 0 ends moving */
  //BSP_MotorControl_WaitWhileActive(0);

  /* Get current position of device 0*/
  //pos = BSP_MotorControl_GetPosition(0);
  
  /* Set the current position of device 0 to be the Home position */
  //BSP_MotorControl_SetHome(0, pos);
  
  /* Wait for 2 seconds */
  //HAL_Delay(2000);

//----- Go to position -6400

  /* Request device 0 to go to position -6400 */
  //BSP_MotorControl_GoTo(0,-6);
  
  /* Wait for the motor ends moving */
  //BSP_MotorControl_WaitWhileActive(0);

  /* Get current position of device 0*/
  //pos = BSP_MotorControl_GetPosition(0);

  //if (pos != -6400)
  //{
   // Error_Handler(11);
  //}
  
  /* Set the current position of device 0 to be the Mark position */
  //BSP_MotorControl_SetMark(0, pos);

  /* Wait for 2 seconds */
  //HAL_Delay(2000);
  
//----- Go Home

  /* Request device 0 to go to Home */
  //BSP_MotorControl_GoHome(0);
  //BSP_MotorControl_WaitWhileActive(0);

  /* Get current position of device 0 */
  //pos = BSP_MotorControl_GetPosition(0);
  
  /* Wait for 2 seconds */
  //HAL_Delay(2000);

//----- Go to position 6400

  /* Request device 0 to go to position 6400 */
  //BSP_MotorControl_GoTo(0,6400);
  
  /* Wait for the motor of device 0 ends moving */
  //BSP_MotorControl_WaitWhileActive(0);

  /* Get current position of device 0*/
  pos = BSP_MotorControl_GetPosition(my_dev);

  /* Wait for 2 seconds */
  HAL_Delay(2000);
  
//----- Go Mark which was set previously after go to -6400

  /* Request device 0 to go to Mark position */
  //BSP_MotorControl_GoMark(0);
  
  /* Wait for the motor of device 0 ends moving */
  //BSP_MotorControl_WaitWhileActive(0);

  /* Get current position of device 0 */
  /* Wait for 2 seconds */
  //HAL_Delay(2000);


//----- Run the motor BACKWARD

  /* Request device 0 to run BACKWARD */
  //BSP_MotorControl_Run(0,BACKWARD);
  //BSP_MotorControl_Run(0,FORWARD);
   //HAL_Delay(5000);

   /* Get current speed of device 0 */
   //mySpeed = BSP_MotorControl_GetCurrentSpeed(0);

//----- Increase the speed while running

  /* Increase speed of device 0 to 2400 step/s */
  //BSP_MotorControl_SetMaxSpeed(0,2400);
  //HAL_Delay(5000);

   /* Get current speed of device 0 */
   //mySpeed = BSP_MotorControl_GetCurrentSpeed(0);

//----- Decrease the speed while running

  /* Decrease speed of device 0 to 1200 step/s */
  //BSP_MotorControl_SetMaxSpeed(0,1200);
  //HAL_Delay(5000);

  /* Get current speed */
  //mySpeed = BSP_MotorControl_GetCurrentSpeed(0);

//----- Increase acceleration while running

  /* Increase acceleration of device 0 to 480 step/s^2 */
  //BSP_MotorControl_SetAcceleration(0,480);
  //HAL_Delay(5000);

  /* Increase speed of device 0 to 2400 step/s */
  //BSP_MotorControl_SetMaxSpeed(0,2400);
  //HAL_Delay(5000);

  /* Get current speed of device 0 */
  //mySpeed = BSP_MotorControl_GetCurrentSpeed(0);

  //if (mySpeed != 2400)
  //{
    //Error_Handler(10);
  //}
//----- Increase deceleration while running

  /* Increase deceleration of device 0 to 480 step/s^2 */
  //BSP_MotorControl_SetDeceleration(0,480);
  //HAL_Delay(5000);

  /* Decrease speed of device 0 to 1200 step/s */
  //BSP_MotorControl_SetMaxSpeed(0,1200);
  //HAL_Delay(5000);

  /* Get current speed */
  //mySpeed = BSP_MotorControl_GetCurrentSpeed(0);

//----- Soft stopped required while running

  /* Request soft stop of device 0 */
  BSP_MotorControl_SoftStop(my_dev);

  /* Wait for the motor of device 0 ends moving */  
  BSP_MotorControl_WaitWhileActive(my_dev);

  /* Wait for 2 seconds */
  HAL_Delay(2000);

//----- Run stopped by hardstop

  /* Request device 0 to run in FORWARD direction */
  //BSP_MotorControl_Run(0,FORWARD);
  //HAL_Delay(500);
  
  /* Request device 0 to immediatly stop */
  //BSP_MotorControl_HardStop(0);
  //BSP_MotorControl_WaitWhileActive(0);

  /* Request device 0 to disable bridge */
//  BSP_MotorControl_CmdDisable(0);
  
  /* Wait for 2 seconds */
//  HAL_Delay(2000);
  
//----- GOTO stopped by softstop

 /* Request device 0 to go to position 20000  */
//  BSP_MotorControl_GoTo(0,20000);
//  HAL_Delay(5000);

  /* Request device 0 to perform a soft stop */
//  BSP_MotorControl_SoftStop(0);
//  BSP_MotorControl_WaitWhileActive(0);

  /* Wait for 2 seconds */
//  HAL_Delay(2000);

  //----- Read inexistent register to test MyFlagInterruptHandler

  /* Try to read an inexistent register */
  /* the flag interrupt should be raised */
  /* and the MyFlagInterruptHandler function called */
  BSP_MotorControl_CmdGetParam(my_dev,0x1F);
  HAL_Delay(500);

//----- Change step mode to full step mode

  /* Select full step mode for device 0 */
//   BSP_MotorControl_SelectStepMode(0,STEP_MODE_FULL);

  /* Set speed and acceleration to be consistent with full step mode */
//   BSP_MotorControl_SetMaxSpeed(0,100);
//   BSP_MotorControl_SetMinSpeed(0,50);
//   BSP_MotorControl_SetAcceleration(0,10);
//   BSP_MotorControl_SetDeceleration(0,10);

  /* Request device 0 to go position 200 */
//   BSP_MotorControl_GoTo(0,200);

  /* Wait for the motor of device 0 ends moving */
//   BSP_MotorControl_WaitWhileActive(0);

  /* Get current position */
//  pos =  BSP_MotorControl_GetPosition(0);

  /* Wait for 2 seconds */
//  HAL_Delay(2000);
  
//----- Restore 1/16 microstepping mode

  /* Reset device 0 to 1/16 microstepping mode */
  BSP_MotorControl_SelectStepMode(my_dev,STEP_MODE_1_16);

  /* Update speed, acceleration, deceleration for 1/16 microstepping mode*/
  BSP_MotorControl_SetMaxSpeed(my_dev,1600);
  BSP_MotorControl_SetMinSpeed(my_dev,800);
  BSP_MotorControl_SetAcceleration(my_dev,160);
  BSP_MotorControl_SetDeceleration(my_dev,160);
  //BSP_MotorControl_GetTorque(0, torqueMode);
  //BSP_MotorControl_SetTorque(0, RUN_TORQUE, 100);
  /* Infinite loop */

  HAL_TIM_Base_Start_IT(&htim10);

  uint16_t my_del = 100; // 100 works

  while(1)
  {
	  if(enc_norm > 600){
		  if(d_enc < 5 & d_enc > -5){
			  if(dd_enc < 0){
				  BSP_MotorControl_Run(my_dev,BACKWARD);
				  HAL_Delay(2*my_del);
				  BSP_MotorControl_Move(0, BACKWARD, 1);
				  HAL_Delay(my_del);
			  }else{
				  BSP_MotorControl_Run(my_dev,FORWARD);
				  HAL_Delay(2*my_del);
				  BSP_MotorControl_Move(0, FORWARD, 1);
				  HAL_Delay(my_del);
			  }
		  }
	  }else{
		  if(d_enc < 5 & d_enc > -5){
			  if(dd_enc < 0){
				  BSP_MotorControl_Run(my_dev,FORWARD);
				  HAL_Delay(2*my_del);
				  BSP_MotorControl_Move(0, FORWARD, 1);
				  HAL_Delay(my_del);
			  }else{
				  BSP_MotorControl_Run(my_dev,BACKWARD);
				  HAL_Delay(2*my_del);
				  BSP_MotorControl_Move(0, BACKWARD, 1);
				  HAL_Delay(my_del);
			  }
		  }
	  }
  }
}

/**
  * @brief  This function is the User handler for the flag interrupt
  * @param  None
  * @retval None
  */
void MyFlagInterruptHandler(void)
{
  /* Get the value of the status register via the L6474 command GET_STATUS */
  uint16_t statusRegister = BSP_MotorControl_CmdGetStatus(0);
  
  /* Check HIZ flag: if set, power brigdes are disabled */
  if ((statusRegister & L6474_STATUS_HIZ) == L6474_STATUS_HIZ)
  {
    // HIZ state
    // Action to be customized            
  }

  /* Check direction bit */
  if ((statusRegister & L6474_STATUS_DIR) == L6474_STATUS_DIR)
  {
    // Forward direction is set
    // Action to be customized            
  }  
  else
  {
    // Backward direction is set
    // Action to be customized            
  }  

  /* Check NOTPERF_CMD flag: if set, the command received by SPI can't be performed */
  /* This often occures when a command is sent to the L6474 */
  /* while it is in HIZ state */
  if ((statusRegister & L6474_STATUS_NOTPERF_CMD) == L6474_STATUS_NOTPERF_CMD)
  {
      // Command received by SPI can't be performed
     // Action to be customized            
  }  

  /* Check WRONG_CMD flag: if set, the command does not exist */
  if ((statusRegister & L6474_STATUS_WRONG_CMD) == L6474_STATUS_WRONG_CMD)
  {
     //command received by SPI does not exist 
     // Action to be customized          
  }  

  /* Check UVLO flag: if not set, there is an undervoltage lock-out */
  if ((statusRegister & L6474_STATUS_UVLO) == 0)
  {
     //undervoltage lock-out 
     // Action to be customized          
  }  

  /* Check TH_WRN flag: if not set, the thermal warning threshold is reached */
  if ((statusRegister & L6474_STATUS_TH_WRN) == 0)
  {
    //thermal warning threshold is reached
    // Action to be customized          
  }    

  /* Check TH_SHD flag: if not set, the thermal shut down threshold is reached */
  if ((statusRegister & L6474_STATUS_TH_SD) == 0)
  {
    //thermal shut down threshold is reached 
    // Action to be customized          
  }    

  /* Check OCD  flag: if not set, there is an overcurrent detection */
  if ((statusRegister & L6474_STATUS_OCD) == 0)
  {
    //overcurrent detection 
    // Action to be customized          
  }      
 
}


/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */

static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 4294967295;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
//  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim2, &sConfig) != HAL_OK)
  {
    Error_Handler(1);
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler(1);
  }
  /* USER CODE BEGIN TIM2_Init 2 */
  /* USER CODE BEGIN TIM1_Init 2 */

  HAL_TIM_Encoder_MspInit(&htim2);
  HAL_TIM_Encoder_Start(&htim2,TIM_CHANNEL_1);
  HAL_TIM_Encoder_Start(&htim2,TIM_CHANNEL_2);
  TIM2->CNT = 0x7FFFFFFF;

  /* USER CODE END TIM1_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}


/**
  * @brief TIM10 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM10_Init(void)
{

  /* USER CODE BEGIN TIM10_Init 0 */

  /* USER CODE END TIM10_Init 0 */

  /* USER CODE BEGIN TIM10_Init 1 */

  /* USER CODE END TIM10_Init 1 */
  htim10.Instance = TIM10;
  htim10.Init.Prescaler = 200-1;
  htim10.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim10.Init.Period = 10000-1;
  htim10.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
//  htim10.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim10) != HAL_OK)
  {
    Error_Handler(1);
  }
  /* USER CODE BEGIN TIM10_Init 2 */

  /* USER CODE END TIM10_Init 2 */

}



/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler(1);
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pins : PC13 PC14 PC15 PC0
                           PC1 PC2 PC3 PC4
                           PC5 PC6 PC7 PC8
                           PC9 PC10 PC11 PC12 */
  GPIO_InitStruct.Pin = GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15|GPIO_PIN_0
                          |GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4
                          |GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8
                          |GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PH0 PH1 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);

  /*Configure GPIO pins : PA0 PA1 PA4 PA5
                           PA6 PA7 PA8 PA9
                           PA10 PA11 PA12 PA15 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_5
                          |GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9
                          |GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB0 PB1 PB2 PB10
                           PB12 PB13 PB14 PB15
                           PB3 PB6 PB7 PB8
                           PB9 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_10
                          |GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15
                          |GPIO_PIN_3|GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8
                          |GPIO_PIN_9;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : PD2 */
  GPIO_InitStruct.Pin = GPIO_PIN_2;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

}



/**
  * @brief  This function is executed in case of error occurrence.
  * @param  error number of the error
  * @retval None
  */
void Error_Handler(uint16_t error)
{
  /* Backup error number */
  gLastError = error;
  
  /* Infinite loop */
  while(1)
  {
  }
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
