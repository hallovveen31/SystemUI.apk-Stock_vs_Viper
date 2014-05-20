.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG_INTERNAL:Z

    if-eqz v8, :cond_0

    const-string v8, "PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v8, "recentapps"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    #calls: Lcom/android/systemui/statusbar/BaseStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissQuickTips()V

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNetworkLabelWhenUserPresent:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNetworkLabelVisible(Z)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    :cond_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    :cond_5
    const-string v8, "com.android.systemui.demo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v8, "command"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v8, "PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error running demo command, intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    const-string v8, "com.htc.systemui.UI_COLLAPSE_QUERY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pendingCollapse:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.systemui.UI_COLLAPSE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    const-string v8, "PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI_COLLAPSE_QUERY:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pendingCollapse:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_1

    :cond_8
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNetworkLabelVisible(Z)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableNetworkLabel:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableNetworkLabel:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNetworkLabelWhenUserPresent:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto/16 :goto_0

    :cond_9
    const-string v8, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockThread:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->startUpdate()V

    goto/16 :goto_0

    :cond_a
    const-string v8, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockThread:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->stopUpdate()V

    goto/16 :goto_0

    :cond_b
    const-string v8, "com.htc.systemui.GLOW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "GLOW_MODE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "SECURE_KEY"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-lez v4, :cond_2

    const v8, 0x1fffffff

    if-ne v6, v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glow(I)V
    invoke-static {v8, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V

    goto/16 :goto_0

    :cond_c
    const-string v8, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "com.htc.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_d
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    const/16 v9, 0x3f2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v8

    const/16 v9, 0x3f2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
