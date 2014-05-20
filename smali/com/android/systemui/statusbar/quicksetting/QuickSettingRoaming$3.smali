.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->setRoamingState(Z)V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$enable:Z

.field final synthetic val$setting:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;ILandroid/content/ContentResolver;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    iput p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$setting:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$enable:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$602(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Lcom/htc/telephony/HtcTelephonyManager;)Lcom/htc/telephony/HtcTelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$setting:I

    invoke-virtual {v1, v2}, Lcom/htc/telephony/HtcTelephonyManager;->setGlobalDataRoamingOption(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "domestic"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "domestic"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$enable:Z

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "international"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "international"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$enable:Z

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    if-eqz v1, :cond_6

    const-string v1, "QuickSettingRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoamingState - Current Preferred Network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "data_roaming"

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$setting:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "data_roaming_slot2"

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$setting:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v1, "QuickSettingRoaming"

    const-string v2, "!!!Current Preferred Network value is wrong!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v2, "data_roaming"

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$3;->val$setting:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
