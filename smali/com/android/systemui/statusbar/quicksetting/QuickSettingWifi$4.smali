.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 355
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v7, :cond_a

    .line 363
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$802(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;I)I

    .line 367
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    if-nez v6, :cond_5

    .line 370
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->setEnabled(Z)V

    .line 371
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 374
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-nez v6, :cond_3

    .line 375
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 390
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    if-ne v6, v7, :cond_9

    .line 392
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v6

    invoke-virtual {v6, v8, v7}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 393
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 401
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    const-string v6, "QuickSettingWifi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive.wifiState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setEnable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    if-eq v6, v11, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 380
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-ne v6, v7, :cond_7

    .line 381
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 383
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->setEnabled(Z)V

    .line 384
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v9

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getId()I

    move-result v6

    const v10, 0x7f07002b

    if-ne v6, v10, :cond_8

    const v6, 0x7f02017d

    :goto_3
    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_8
    const v6, 0x7f020178

    goto :goto_3

    .line 395
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I

    move-result v6

    if-ne v6, v11, :cond_4

    .line 397
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 398
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto/16 :goto_2

    .line 405
    :cond_a
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 409
    .local v2, start:J
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 412
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v7

    :goto_4
    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z
    invoke-static {v10, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1002(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Z)Z

    .line 414
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Z

    move-result v6

    if-ne v6, v7, :cond_f

    .line 417
    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 420
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v5, :cond_b

    .line 421
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 423
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    if-nez v5, :cond_e

    move-object v6, v9

    :goto_5
    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->removeDoubleQuote(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    const v7, 0x7f070029

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 434
    .local v4, textview:Landroid/widget/TextView;
    if-eqz v4, :cond_c

    .line 436
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    :goto_8
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 442
    :cond_c
    const-string v6, "QuickSettingWifi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive.wifiConnect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wifiAPname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #textview:Landroid/widget/TextView;
    :cond_d
    move v6, v8

    .line 412
    goto/16 :goto_4

    .line 423
    .restart local v5       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 426
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_6

    .line 436
    .restart local v4       #textview:Landroid/widget/TextView;
    :cond_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 439
    :cond_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v8

    goto :goto_8
.end method
