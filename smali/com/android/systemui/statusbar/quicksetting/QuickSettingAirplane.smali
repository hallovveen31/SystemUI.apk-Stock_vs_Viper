.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingAirplane.java"


# static fields
.field private static final ANIMATION_TIMEOUT:I


# instance fields
.field private final DEBUG_INTERNAL:Z

.field private demoFLOEnable:Z

.field private demoObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z

.field private resetStateRunnable:Ljava/lang/Runnable;

.field private telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7530

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->ANIMATION_TIMEOUT:I

    return-void

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->DEBUG_INTERNAL:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiverRegister:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->observerRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    const-string v0, "airplane"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->updateVisualState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->updateDemoFLOstate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method private getActualState()I
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAirplaneModeOn()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAllRadioOff()Z

    move-result v1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "QuickSettingAirplane"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " airplaneOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radioAllOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020104

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllRadioOff()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    if-nez v7, :cond_0

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    :cond_0
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    invoke-virtual {v7, v6}, Lcom/htc/telephony/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/telephony/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v2

    if-ne v1, v9, :cond_1

    if-ne v2, v9, :cond_1

    move v0, v6

    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->serviceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->serviceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->DEBUG:Z

    if-ne v7, v6, :cond_2

    const-string v6, "QuickSettingAirplane"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllRadioOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    invoke-virtual {v7, v6}, Lcom/htc/telephony/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/htc/telephony/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v2

    if-ne v1, v9, :cond_4

    if-ne v2, v9, :cond_4

    move v0, v6

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->telephonyManager:Lcom/htc/telephony/HtcTelephonyManager;

    invoke-virtual {v7}, Lcom/htc/telephony/HtcTelephonyManager;->getServiceState()I

    move-result v1

    if-ne v1, v9, :cond_6

    move v0, v6

    :cond_6
    goto :goto_0

    :cond_7
    const-string v7, ""

    goto :goto_1
.end method

.method private serviceToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_IN_SERVICE"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_OUT_OF_SERVICE"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_EMERGENCY_ONLY"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_POWER_OFF"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v8, v9

    :goto_0
    return v8

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->isAirplaneModeOn()Z

    move-result v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v0, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7, v8}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiverRegister:Z

    if-nez v7, :cond_2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SERVICE_STATE_EXT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiverRegister:Z

    :cond_2
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->observerRegister:Z

    if-nez v7, :cond_3

    const-string v7, "htc_is_demo"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->observerRegister:Z

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    const-string v7, "QuickSettingAirplane"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setContentView:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " airplaneMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isDualPhone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v7, v9

    goto/16 :goto_1

    :cond_5
    move v7, v9

    goto/16 :goto_2
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_ANIMATE"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_AIRPLANE_ON"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_AIRPLANE_OFF"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toggleNextState()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QuickSettingAirplane"

    const-string v1, "toggleAirplaneState.skip:disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->startColorAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->ANIMATION_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "QuickSettingAirplane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleAirplaneState.lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateDemoFLOstate()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_is_demo"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "QuickSettingAirplane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDemoFLOstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v0, 0x3e99999a

    goto :goto_0
.end method

.method private updateVisualState()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getActualState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->startColorAnimation()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->ANIMATION_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-ne v0, v2, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->onLocaleChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->updateDemoFLOstate()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingAirplane"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiverRegister:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->receiverRegister:Z

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->observerRegister:Z

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->observerRegister:Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->demoFLOEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
