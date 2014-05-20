.class public Lcom/android/systemui/statusbar/info/BatteryInfo;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "BatteryInfo.java"


# instance fields
.field private batteryInfo:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/BatteryInfo$1;-><init>(Lcom/android/systemui/statusbar/info/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/BatteryInfo;->batteryInfo:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f02054f

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onStartIntenal()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/BatteryInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/BatteryInfo;->batteryInfo:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStopIntenal()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/BatteryInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/BatteryInfo;->batteryInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
