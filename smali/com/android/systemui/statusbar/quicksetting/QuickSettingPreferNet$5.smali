.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;
.super Landroid/os/AsyncTask;
.source "QuickSettingPreferNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->toggleNextState()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xb

    const/16 v10, 0xa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataSlotType()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z
    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;I)Z

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z
    invoke-static {v7, v11}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;I)Z

    move-result v3

    const-string v7, "1"

    const-string v8, "sys.under_silent_reset"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v7, "QuickSettingPreferNet"

    const-string v8, "!!!!!abnormal visual state for timing issue under background check"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v12

    :cond_1
    if-ne v0, v10, :cond_4

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/ConnectivityManager;->setMobileDataSlotType(I)Z

    const-string v7, "prefer network"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v7, "user_preferred_network"

    const/4 v8, 0x2

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    const-string v7, "QuickSettingPreferNet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleState(background):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$700(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " silentReset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_3

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->setMobileDataSlotType(I)Z

    const-string v7, "prefer network"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const-string v7, "user_preferred_network"

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    const v3, 0xc351

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
