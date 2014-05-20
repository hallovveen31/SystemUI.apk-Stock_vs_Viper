.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;
.super Landroid/os/AsyncTask;
.source "QuickSettingDND.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->toggleDNDNextState()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "QuickSettingDND"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleDNDState.oldState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "htc_dnd_feature_enabled"

    if-ne v0, v2, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.settings.action.dnd.QS_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x0

    return-object v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
