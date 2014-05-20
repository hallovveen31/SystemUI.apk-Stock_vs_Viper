.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingRingtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "args"

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    .local v1, startTime:J
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->isDualModeEnable()Z

    move-result v0

    .line 79
    .local v0, dualModeEnable:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v4, "com.htc.widget.ringtone"

    const-string v5, "com.htc.widget.ringtone.HtcRingtoneIntentDispatcher"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v3, "QuickSettingRingtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dualModeEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    return-object v3
.end method
