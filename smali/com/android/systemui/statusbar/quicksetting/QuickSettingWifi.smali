.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingWifi.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private isAirplaneToggleable:Z

.field private receiverRegister:Z

.field private resetStateRunnable:Ljava/lang/Runnable;

.field private wifiAPname:Ljava/lang/String;

.field private wifiConnect:Z

.field private wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiReceiver:Landroid/content/BroadcastReceiver;

.field private wifiState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingWifi"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isAirplaneToggleable:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->receiverRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->toggleWifiState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiConnect:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->removeDoubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->performToggleWifiState()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020183

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "null"

    goto :goto_0

    :cond_2
    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_2

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v3, v4

    goto :goto_0
.end method

.method private isWifiRestrict()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isSprintBrand:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiRestricted()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private performToggleWifiState()Ljava/lang/Boolean;
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v5, v7

    :goto_0
    if-ne v5, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isAirplaneToggleable:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v0, v7

    :goto_1
    if-ne v0, v7, :cond_2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v8}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_2
    return-object v6

    :cond_0
    move v5, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v3

    if-ne v5, v7, :cond_4

    const/16 v6, 0xd

    if-eq v3, v6, :cond_3

    const/16 v6, 0xc

    if-ne v3, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v6, "QuickSettingWifi"

    const-string v8, "toggleWifiState:disable wifi hotspot!"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v6, "QuickSettingWifi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleWifiState.currentState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elaspe:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_2
.end method

.method private static removeDoubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const v8, 0x7f07002b

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v8, :cond_4

    const v4, 0x7f020177

    :goto_1
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->receiverRegister:Z

    if-nez v4, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f07002a

    if-eq v4, v7, :cond_2

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->receiverRegister:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->updateAirplaneTogglableConfig()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v8, :cond_5

    const v4, 0x7f02017d

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v3, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    const-string v4, "QuickSettingWifi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentView:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " elaspe:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :cond_4
    const v4, 0x7f020182

    goto/16 :goto_1

    :cond_5
    const v4, 0x7f020178

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "WIFI_STATE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "WIFI_STATE_ENABLED"

    goto :goto_0

    :pswitch_1
    const-string v0, "WIFI_STATE_DISABLED"

    goto :goto_0

    :pswitch_2
    const-string v0, "WIFI_STATE_ENABLING"

    goto :goto_0

    :pswitch_3
    const-string v0, "WIFI_STATE_DISABLING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private toggleWifiState()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "QuickSettingWifi"

    const-string v1, "toggleWifiState.skip:disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->updateAirplaneTogglableConfig()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isAirplaneToggleable:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_4

    const-string v0, "QuickSettingWifi"

    const-string v1, "toggleWifiState.skip:airplane!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isWifiRestrict()Z

    move-result v0

    const-string v3, "QuickSettingWifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleWifiState.restrict:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isSprintBrand:Z

    if-ne v0, v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickRestrictActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10c0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "title"

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const-string v0, "QuickSettingWifi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleWifiState.lock:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private updateAirplaneTogglableConfig()V
    .locals 5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isAirplaneToggleable:Z

    :goto_0
    const-string v2, "QuickSettingWifi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplaneToggleable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->isAirplaneToggleable:Z

    goto :goto_0
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

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingWifi"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->receiverRegister:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
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

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiAPname:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

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
