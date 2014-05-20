.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingAPN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    const-string v9, "phone_type"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$202(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)I

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v8

    if-ne v8, v12, :cond_2

    const-string v8, "QuickSettingAPN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v11}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v11

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->typeToString(I)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v8

    if-ne v8, v12, :cond_4

    const-string v8, "LOADED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ABSENT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    const-string v8, "ABSENT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v4, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v8

    if-ne v8, v4, :cond_0

    const-string v8, "LOADED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "ABSENT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "NOT_READY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_5
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setEnabled(Z)V

    const-string v8, "LOADED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v4, :cond_7

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V
    invoke-static {v8, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    if-nez v4, :cond_8

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setVisibility(I)V

    :cond_6
    const-string v7, "QuickSettingAPN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->type:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v10

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->typeToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isCGMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v4, v7

    goto :goto_1

    :cond_8
    const/16 v7, 0x8

    goto :goto_2

    :cond_9
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "QuickSettingAPN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " airplaneModeOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "state"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "state"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v4, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    goto/16 :goto_0

    :cond_a
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "networkType"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    :cond_b
    const-string v7, "QuickSettingAPN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->networkTypeToString(I)Ljava/lang/String;
    invoke-static {v9, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mode:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)I

    move-result v10

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->modeToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    const/4 v8, 0x0

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$902(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v8

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$902(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->serviceState:Landroid/telephony/ServiceState;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v5

    if-ne v5, v12, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isUnderDataRoaming()Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z

    move-result v2

    const-string v7, "QuickSettingAPN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive.CDMA_STATE_CHANGE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " old:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->roamingInCDMA:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z

    move-result v7

    if-eq v2, v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNstate()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    goto/16 :goto_0
.end method
