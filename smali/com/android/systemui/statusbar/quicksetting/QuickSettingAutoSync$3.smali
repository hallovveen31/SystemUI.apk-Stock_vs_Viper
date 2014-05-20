.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingAutoSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v8

    if-nez v0, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v5

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v3

    const-string v5, "QuickSettingAutoSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive.SYNC_STATUS_CHANGED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " autoSyncEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2
.end method
