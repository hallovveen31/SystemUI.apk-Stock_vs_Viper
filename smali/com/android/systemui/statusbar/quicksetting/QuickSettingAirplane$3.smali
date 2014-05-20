.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingAirplane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->toggleNextState()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAirplaneModeOn()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    if-nez v0, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "state"

    if-nez v0, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "QuickSettingAirplane"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleAirplaneState.back:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " next:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method
