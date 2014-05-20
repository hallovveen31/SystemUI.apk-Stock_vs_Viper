.class Lcom/android/systemui/statusbar/policy/BatteryController$1;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$0(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_status_bar_battery_percentage"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "StatusBar.BatteryController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "batteryObserver:onChange("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    #calls: Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryTextVisible(Z)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$1(Lcom/android/systemui/statusbar/policy/BatteryController;Z)V

    return-void
.end method
