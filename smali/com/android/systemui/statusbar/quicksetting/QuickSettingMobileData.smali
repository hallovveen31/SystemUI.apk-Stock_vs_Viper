.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingMobileData.java"


# instance fields
.field private final SENDER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private airplaneState:Z

.field private connectManager:Landroid/net/ConnectivityManager;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private mobileState:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingMobileData"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->TAG:Ljava/lang/String;

    const-string v0, "com.android.systemui.statusbar.quicksetting.QuickSettingMobileData"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->SENDER:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiverRegister:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "mobile_data"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->performNextState()V

    return-void
.end method

.method private getNeedToShowCTDataRoamingWarning()Z
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ct_data_roaming_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020131

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initEnvironment(J)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, p1

    const-string v3, "QuickSettingMobileData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEnvironment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " airplane:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    if-nez v3, :cond_4

    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    if-nez v6, :cond_5

    :goto_4
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v5, v4

    goto :goto_4
.end method

.method private isEnableDataRoaming()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isUnderDataRoaming()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    goto :goto_0
.end method

.method private performNextState()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    const-string v1, "QuickSettingMobileData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performNextState:launchVzwDialog oldState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.framework.core.wireless.mobilenetwork.HtcMobileDataDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    const-string v1, "QuickSettingMobileData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performNextState:MOBILEDATA_MODE oldState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiverRegister:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiverRegister:Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->initEnvironment(J)V

    const-string v2, "QuickSettingMobileData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private toggleNextState()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "QuickSettingMobileData"

    const-string v8, "click.toggleNextState!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    if-nez v7, :cond_3

    sget v7, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getNeedToShowCTDataRoamingWarning()Z

    move-result v3

    if-ne v3, v10, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->animateCollapseAndUnlock()V

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->connectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_1
    const-string v7, "QuickSettingMobileData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleNextState(CT):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elapse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->isUnderDataRoaming()Z

    move-result v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->isEnableDataRoaming()Z

    move-result v0

    const-string v7, "QuickSettingMobileData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleNextState.underRoaming:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enableRoaming:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v10, :cond_4

    if-nez v0, :cond_4

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v7}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.framework.core.wireless.mobilenetwork.HtcMobileDataDialog"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1084

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "type"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v7, "QuickSettingMobileData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package.settings:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    new-instance v7, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V

    new-array v8, v11, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    const v5, 0x7f07002e

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingMobileData"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->receiverRegister:Z

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x3e99999a

    goto :goto_0
.end method
