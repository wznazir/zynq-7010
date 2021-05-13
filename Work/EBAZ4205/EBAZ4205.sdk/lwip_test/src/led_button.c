/******************************************************************************
*
* Copyright (C) 2010 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
* @file xgpiops_polled_example.c
*
* This file contains an example for using GPIO hardware and driver. This
* example provides the usage of APIs for reading/writing to the individual pins.
* Please see xgpiops.h file for description of the pin numbering.
*
* @note		This example assumes that there is a Uart device in the HW
* design. This example is to provide support only for zcu102 on
* ZynqMp Platform and only for zc702 on Zynq Platform.
* For ZynqMP Platform, Input pin is 22(sw19 on zcu102 board) and Output Pin is
* 23(DS50 on zcu102 board).
* For Zynq Platform, Input Pins are 12(sw14 on zc702 board), 14(sw13 on
* zc702 board) and Output Pin is 10(DS23 on zc702 board).
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.00a sv   01/18/10 First Release
* 1.01a sv   04/15/12 Removed the calling of some unnecessary APIs.
*		      Updated the examples for a ZC702 board .
*		      Updated the example to use only pin APIs.
* 3.3   ms   04/17/17 Added notes about input and output pin description
*                     for zcu102 and zc702 boards.
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "xgpiops.h"
#include "xstatus.h"
#include "xplatform_info.h"
#include <xil_printf.h>

/************************** Constant Definitions ****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_DEVICE_ID  	XPAR_XGPIOPS_0_DEVICE_ID



#define printf			xil_printf	/* Smalller foot-print printf */

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions *******************/

/************************** Function Prototypes ****************************/

static void led_set(u32 Pin,u32 Stat);

static u32 Read_Button_stat(void);

int Led_Button_init(void);

static u32 Button = 20; /* Switch button */
static u32 Led1 = 54; /* LED button */
static u32 Led2 = 55; /* LED button */

/*
 * The following are declared globally so they are zeroed and can be
 * easily accessible from a debugger.
 */
XGpioPs Gpio;	/* The driver instance for GPIO Device. */


int Led_Button_task(void)
{
	u32 button_count=0;
	u32 led_stat1 = 0;
	u32 led_stat2 = 0;
	u32 led_count =0;
	Led_Button_init();

	while(1)
	{
		vTaskDelay(5);

		led_count++;
		if(led_count>=10)
		{
			led_count=0;
			led_stat1 =!led_stat1;
			led_set(Led1,led_stat1);
		}

		if(Read_Button_stat()) button_count++;
		else
		{
			if(button_count >2)
			{
				led_stat2 =!led_stat2;
				button_count=0;

				led_set(Led2,led_stat2);
				printf("button press! \r\n");
			}
		}
	}
	return 0;
}

int Led_Button_init(void)
{
	int Status;
	XGpioPs_Config *ConfigPtr;

	/* Initialize the GPIO driver. */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpioPs_SetDirectionPin(&Gpio, Led1, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, Led1, 1);

	/* Set the GPIO output to be low. */
	XGpioPs_WritePin(&Gpio, Led1, 0x0);

	XGpioPs_SetDirectionPin(&Gpio, Led2, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, Led2, 1);

	/* Set the GPIO output to be low. */
	XGpioPs_WritePin(&Gpio, Led2, 0x0);


	/* Set the direction for the specified pin to be input. */
	XGpioPs_SetDirectionPin(&Gpio, Button, 0x0);

	return XST_SUCCESS;
}


static void led_set(u32 Pin,u32 Stat)
{
	XGpioPs_WritePin(&Gpio, Pin, Stat);
}


static u32 Read_Button_stat(void)
{
	return XGpioPs_ReadPin(&Gpio, Button);
}
