.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingNfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->toggleNextNFCstate()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

.field final synthetic val$nextEnable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->val$nextEnable:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->val$nextEnable:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4

    const-string v0, "QuickSettingNfc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleNFCstate.unlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
