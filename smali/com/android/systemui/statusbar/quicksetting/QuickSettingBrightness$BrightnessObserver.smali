.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateBrightnessContent()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    return-void
.end method

.method public startObserver()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "htc_is_demo"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->demoObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->observerRegister:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateBrightnessContent()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    const-string v1, "QuickSettingBrightness"

    const-string v2, "BrightnessObserver:startObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
