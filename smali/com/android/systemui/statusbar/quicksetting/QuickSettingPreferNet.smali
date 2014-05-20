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
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 197
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    .line 198
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    .line 312
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    .line 325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    .line 326
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    .line 354
    const-string v0, "user_preferred_network"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->USER_PREFERRED_NETWORK:Ljava/lang/String;

    .line 46
    const-string v0, "prefer_net"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tileLabel:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->updateActiveNetwork()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slotToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f020124

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 186
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
    .parameter "slotIndex"

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    invoke-virtual {v2, p1}, Lcom/htc/telephony/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    .line 253
    .local v0, iccState:I
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

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
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
    .parameter "_slot1text"
    .parameter "_slot2text"
    .parameter "_indicatorview"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    .local v2, start:J
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v6

    .line 136
    :goto_0
    return v4

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 97
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    .line 98
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    .line 100
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->tnmanager:Lcom/htc/telephony/HtcTelephonyManager;

    if-nez v4, :cond_3

    :cond_2
    move v4, v6

    .line 101
    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->updateActiveNetwork()V

    .line 107
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    if-nez v4, :cond_4

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v4, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    .line 119
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    .line 125
    const-string v4, "ext_mobile_data_phone_type"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    const-string v4, "user_preferred_network"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    .line 135
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

    .line 136
    goto/16 :goto_0
.end method

.method private static final slotToString(I)Ljava/lang/String;
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 262
    packed-switch p0, :pswitch_data_0

    .line 269
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "slot1"

    goto :goto_0

    .line 267
    :pswitch_1
    const-string v0, "slot2"

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final slotToString2(I)Ljava/lang/String;
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 275
    packed-switch p0, :pswitch_data_0

    .line 282
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    const-string v0, "slot1"

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v0, "slot2"

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "iccState"

    .prologue
    .line 289
    packed-switch p0, :pswitch_data_0

    .line 304
    const-string v0, "undefine"

    :goto_0
    return-object v0

    .line 292
    :pswitch_0
    const-string v0, "absent"

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v0, "PIN required"

    goto :goto_0

    .line 296
    :pswitch_2
    const-string v0, "PUK required"

    goto :goto_0

    .line 298
    :pswitch_3
    const-string v0, "network locked"

    goto :goto_0

    .line 300
    :pswitch_4
    const-string v0, "ready"

    goto :goto_0

    .line 302
    :pswitch_5
    const-string v0, "unknown"

    goto :goto_0

    .line 289
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

    .prologue
    const v7, 0xc351

    const/4 v6, 0x0

    .line 360
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setEnabled(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataSlotType()I

    move-result v0

    .line 364
    .local v0, activeNetwork:I
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v1

    .line 365
    .local v1, slot1Enable:Z
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v2

    .line 367
    .local v2, slot2Enable:Z
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

    .line 370
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 373
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    const-string v3, "QuickSettingPreferNet"

    const-string v4, "!!!!!abnormal visual state for timing issue"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 381
    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateActiveNetwork()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0xa

    const/4 v9, -0x1

    const v10, -0xbbbbbc

    const/4 v11, 0x1

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 205
    .local v6, start:J
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v8, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 210
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->cnmanager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataSlotType()I

    move-result v0

    .line 211
    .local v0, activeNetwork:I
    const-string v8, "user_preferred_network"

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, preferNetwork:I
    invoke-direct {p0, v13}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v4

    .line 214
    .local v4, slot1Enable:Z
    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->isSlotEnabled(I)Z

    move-result v5

    .line 216
    .local v5, slot2Enable:Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    .line 219
    .local v1, overlayColor:I
    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-ne v4, v11, :cond_7

    move v8, v9

    :goto_1
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-ne v5, v11, :cond_8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    if-ne v0, v13, :cond_2

    if-ne v4, v11, :cond_2

    .line 224
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    :cond_2
    if-ne v0, v14, :cond_3

    if-ne v5, v11, :cond_3

    .line 227
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eq v4, v11, :cond_4

    if-ne v5, v11, :cond_9

    :cond_4
    move v8, v11

    :goto_3
    invoke-virtual {v9, v8, v11}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 232
    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    move v8, v11

    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setEnabled(Z)V

    .line 234
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

    .line 238
    if-nez v4, :cond_5

    if-eq v0, v13, :cond_6

    :cond_5
    if-nez v5, :cond_0

    if-ne v0, v14, :cond_0

    .line 241
    :cond_6
    const-string v8, "QuickSettingPreferNet"

    const-string v9, "!!!!!abnormal active/slot state and try to recover"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-ne v4, v11, :cond_b

    move v8, v1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-ne v5, v11, :cond_c

    .end local v1           #overlayColor:I
    :goto_6
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .restart local v1       #overlayColor:I
    :cond_7
    move v8, v10

    .line 219
    goto/16 :goto_1

    :cond_8
    move v9, v10

    .line 220
    goto/16 :goto_2

    .line 229
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 232
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move v8, v10

    .line 243
    goto :goto_5

    :cond_c
    move v1, v10

    .line 244
    goto :goto_6
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 54
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setContentView(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    .line 59
    .local v0, success:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->onLocaleChanged()V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 77
    const-string v1, "QuickSettingPreferNet"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 144
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    if-ne v1, v4, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->simReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->receiverRegister:Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    if-ne v1, v4, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->activeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->observerRegister:Z

    .line 158
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setOnOverlayChangeListener(I)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method protected onFlipFontChanged()V
    .locals 5

    .prologue
    const v3, 0x20300ce

    const v4, 0xc351

    .line 459
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onFlipFontChanged()V

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getId()I

    move-result v1

    const v2, 0x7f07002a

    if-eq v1, v2, :cond_2

    const v0, 0x7f0d0018

    .line 465
    .local v0, styleID:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 479
    return-void

    .line 461
    .end local v0           #styleID:I
    :cond_2
    const v0, 0x7f0d0019

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 171
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot1text:Landroid/widget/TextView;

    const v3, 0x7f0a00d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->slot2text:Landroid/widget/TextView;

    const v3, 0x7f0a00d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_2
    return-void
.end method

.method public onOverlayColorChanged()V
    .locals 4

    .prologue
    const v3, 0xc351

    .line 450
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onOverlayColorChanged()V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 454
    return-void
.end method
