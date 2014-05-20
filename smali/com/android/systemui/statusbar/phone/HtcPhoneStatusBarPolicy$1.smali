.class Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$000(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateVolume()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V

    goto :goto_0

    .line 122
    :cond_6
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_7
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_8
    const-string v1, "android.intent.action.HAC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHACStatus(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_9
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateGps(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0
.end method
