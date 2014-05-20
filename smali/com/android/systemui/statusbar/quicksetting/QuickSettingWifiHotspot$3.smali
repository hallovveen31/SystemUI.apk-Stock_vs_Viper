.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingWifiHotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.htc.tether.check_postpone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "QuickSettingWifiHotspot"

    const-string v3, "receive.check_postpone:force apply animation!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$800()Z

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "QuickSettingWifiHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive.WIFI_AP_STATE_CHANGED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_6
    :goto_3
    if-ne v1, v8, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_1

    :cond_8
    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$800()Z

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)I

    move-result v1

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "QuickSettingWifiHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive.HTC_PERMITTED_TETHER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v1

    goto :goto_4

    :cond_a
    if-eq v1, v8, :cond_b

    if-ne v1, v7, :cond_6

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-ne v2, v5, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    const v3, 0x7f020185

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_d
    if-ne v1, v7, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto/16 :goto_0
.end method
