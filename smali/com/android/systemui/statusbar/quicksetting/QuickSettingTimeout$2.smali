.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;
.super Landroid/database/ContentObserver;
.source "QuickSettingTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->updateTimeoutLevel(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;I)V

    return-void
.end method
