//+------------------------------------------------------------------+
//|                                               AccountBalance.mq4 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
float moneyManagement = 0.05;
float maxRisque = AccountBalance()*moneyManagement;

void OnTick()
  {
//---
   Comment("My Account Balance = ",AccountBalance(),"\nMax pert by Operation = ",maxRisque,"\nPipe Price = ",(maxRisque/50));
  }
//+------------------------------------------------------------------+
