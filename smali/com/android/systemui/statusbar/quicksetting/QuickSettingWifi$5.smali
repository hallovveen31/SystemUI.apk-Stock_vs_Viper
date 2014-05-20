.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;
.super Ljava/lang/Object;
.source "QuickSettingWifi.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f07002b

    if-ne v1, v5, :cond_2

    const v1, 0x7f02017d

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    const-string v1, "QuickSettingWifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetWIFIstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v1, 0x7f020178

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method
