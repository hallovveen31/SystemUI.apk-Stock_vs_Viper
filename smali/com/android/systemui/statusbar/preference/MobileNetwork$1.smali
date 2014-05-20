.class Lcom/android/systemui/statusbar/preference/MobileNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$internal$telephony$PhoneConstants$DataState:[I


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$internal$telephony$PhoneConstants$DataState()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->$SWITCH_TABLE$com$android$internal$telephony$PhoneConstants$DataState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->$SWITCH_TABLE$com$android$internal$telephony$PhoneConstants$DataState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    const/4 v3, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$0(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    const-string v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "networkUnvailable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$1(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$2(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V

    if-eqz v12, :cond_6

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$4(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/net/ConnectivityManager;

    move-result-object v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v13, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    const-string v15, "connectivity"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v14, v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$5(Lcom/android/systemui/statusbar/preference/MobileNetwork;Landroid/net/ConnectivityManager;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$4(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/net/ConnectivityManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v14, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const-string v13, "radioTurnedOff"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$6(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$7(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v13, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$6(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v13, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    if-nez v12, :cond_7

    const-string v13, "MobileNetworkStatusBarPreference"

    const-string v14, "capability is null , return."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->$SWITCH_TABLE$com$android$internal$telephony$PhoneConstants$DataState()[I

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$9(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v10, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const-string v13, "radioTurnedOff"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v6, 0x0

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    move v6, v3

    :cond_8
    invoke-virtual {v10, v6}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v13, v3}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_1
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$9(Z)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$9(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const-string v13, "radioTurnedOff"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    const/4 v3, 0x0

    :cond_a
    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_3
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$9(Z)V

    const/4 v4, 0x1

    if-eqz v5, :cond_f

    const-string v13, "radioTurnedOff"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v4, 0x0

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$7(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-nez v4, :cond_d

    :cond_c
    const/4 v3, 0x0

    :cond_d
    invoke-virtual {v9, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$6(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v13, "dataDetached"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$10(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v4, 0x0

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v13, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$3(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    const-string v13, "radioTurnedOff"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v4, 0x0

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v13, v13, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v13, "MobileNetwork"

    const-string v14, "sender"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$1(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v14

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$2(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
