.class Lcom/android/systemui/statusbar/policy/BatteryController$1;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "show_status_bar_battery_percentage"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, visible:I
    const-string v4, "StatusBar.BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batteryObserver:onChange("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_1

    :goto_1
    #calls: Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryTextVisible(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$100(Lcom/android/systemui/statusbar/policy/BatteryController;Z)V

    .line 237
    return-void

    :cond_0
    move v1, v3

    .line 234
    goto :goto_0

    :cond_1
    move v2, v3

    .line 236
    goto :goto_1
.end method
