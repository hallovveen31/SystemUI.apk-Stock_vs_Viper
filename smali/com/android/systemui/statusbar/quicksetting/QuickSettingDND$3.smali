.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;
.super Landroid/database/ContentObserver;
.source "QuickSettingDND.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    const-string v1, "QuickSettingDND"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dndObserver.onChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
