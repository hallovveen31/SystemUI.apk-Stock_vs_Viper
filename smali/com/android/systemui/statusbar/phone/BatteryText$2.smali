.class Lcom/android/systemui/statusbar/phone/BatteryText$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/BatteryText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_cm_battery"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->style:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$2(Lcom/android/systemui/statusbar/phone/BatteryText;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->batteryStatus:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$3(Lcom/android/systemui/statusbar/phone/BatteryText;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    const-string v1, "level"

    const/16 v2, 0x32

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$4(Lcom/android/systemui/statusbar/phone/BatteryText;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    #calls: Lcom/android/systemui/statusbar/phone/BatteryText;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$1(Lcom/android/systemui/statusbar/phone/BatteryText;)V

    :cond_0
    return-void
.end method
