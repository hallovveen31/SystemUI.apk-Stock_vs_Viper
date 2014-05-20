.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;
.super Ljava/lang/Object;
.source "QuickSettingAirplane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    const-string v1, "QuickSettingAirplane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAirplaneState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
