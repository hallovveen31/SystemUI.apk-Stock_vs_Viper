.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingPreferNet.java"


# instance fields
.field private final USER_PREFERRED_NETWORK:Ljava/lang/String;

.field private activeObserver:Landroid/database/ContentObserver;

.field private cnmanager:Landroid/net/ConnectivityManager;

.field private handler:Landroid/os/Handler;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z

.field private receiverRegister:Z

.field private simReceiver:Landroid/content/BroadcastReceiver;

.field private slot1text:Landroid/widget/TextView;

.field private slot2text:Landroid/widget/TextView;

.field private tnmanager:Lcom/htc/telephony/HtcTelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    const-string v0, "user_preferred_network"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->USER_PREFERRED_NETWORK:Ljava/lang/String;

    const-string v0, "prefer_net"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->updateActiveNetwork()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020124

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSlotEnabled(I)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    invoke-virtual {v2, p1}, Lcom/htc/telephony/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    const-string v2, "QuickSettingPreferNet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    if-nez v4, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->updateActiveNetwork()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    if-nez v4, :cond_4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    :cond_4
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    const-string v4, "ext_mobile_data_phone_type"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "user_preferred_network"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    :cond_5
    const-string v4, "QuickSettingPreferNet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentView:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0
.end method

.method private static final slotToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "slot1"

    goto :goto_0

    :pswitch_1
    const-string v0, "slot2"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final slotToString2(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "slot1"

    goto :goto_0

    :pswitch_1
    const-string v0, "slot2"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "undefine"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "absent"

    goto :goto_0

    :pswitch_1
    const-string v0, "PIN required"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUK required"

    goto :goto_0

    :pswitch_3
    const-string v0, "network locked"

    goto :goto_0

    :pswitch_4
    const-string v0, "ready"

    goto :goto_0

    :pswitch_5
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toggleNextState()V
    .locals 8

    const v7, 0xc351

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataSlotType()I

    move-result v0

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v1

    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v2

    const-string v3, "QuickSettingPreferNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slotEnable("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v3, "QuickSettingPreferNet"

    const-string v4, "!!!!!abnormal visual state for timing issue"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateActiveNetwork()V
    .locals 15

    const/16 v14, 0xb

    const/16 v13, 0xa

    const/4 v9, -0x1

    const v10, -0xbbbbbc

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataSlotType()I

    move-result v0

    const-string v8, "user_preferred_network"

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v13}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v4

    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v5

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-ne v4, v11, :cond_7

    move v8, v9

    :goto_1
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-ne v5, v11, :cond_8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v0, v13, :cond_2

    if-ne v4, v11, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-ne v0, v14, :cond_3

    if-ne v5, v11, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eq v4, v11, :cond_4

    if-ne v5, v11, :cond_9

    :cond_4
    move v8, v11

    :goto_3
    invoke-virtual {v9, v8, v11}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    move v8, v11

    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    const-string v8, "QuickSettingPreferNet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateActiveNet:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " slotEnable("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "):"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    if-eq v0, v13, :cond_6

    :cond_5
    if-nez v5, :cond_0

    if-ne v0, v14, :cond_0

    :cond_6
    const-string v8, "QuickSettingPreferNet"

    const-string v9, "!!!!!abnormal active/slot state and try to recover"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-ne v4, v11, :cond_b

    move v8, v1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-ne v5, v11, :cond_c

    :goto_6
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_7
    move v8, v10

    goto/16 :goto_1

    :cond_8
    move v9, v10

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move v8, v10

    goto :goto_5

    :cond_c
    move v1, v10

    goto :goto_6
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setContentView(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingPreferNet"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFlipFontChanged()V
    .locals 5

    const v3, 0x20300ce

    const v4, 0xc351

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onFlipFontChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f07002a

    if-eq v1, v2, :cond_2

    const v0, 0x7f0d0018

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const v0, 0x7f0d0019

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    const v3, 0x7f0a00d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    const v3, 0x7f0a00d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onOverlayColorChanged()V
    .locals 4

    const v3, 0xc351

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onOverlayColorChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
