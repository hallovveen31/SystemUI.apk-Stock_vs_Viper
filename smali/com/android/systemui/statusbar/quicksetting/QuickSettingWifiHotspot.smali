.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingWifiHotspot.java"


# static fields
.field private static final isMHSEnabled:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private isAirplaneToggleable:Z

.field final receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z

.field private resetStateRunnable:Ljava/lang/Runnable;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->supportMHS()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    const-string v0, "wifi_hotspot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->toggleState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->performToggleState()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v0

    return v0
.end method

.method private getMHSState()I
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    const-string v6, "QuickSettingWifiHotspot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMHSState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wifiState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mhsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mhsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02018a

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0a00d2

    :goto_0
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v0, 0x7f0a00ee

    :cond_0
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    const v0, 0x7f0a00ef

    :cond_1
    if-nez p0, :cond_5

    const-string v1, "null"

    :goto_1
    return-object v1

    :cond_2
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    const v0, 0x7f0a00d1

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    const v0, 0x7f0a00d3

    goto :goto_0

    :cond_4
    const v0, 0x7f0a00d0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getWifiRestoreState()I
    .locals 5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "QuickSettingWifiHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!get record wifi state fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeWifiHotspot()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v4, v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v3

    :goto_1
    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v4, v5, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    :goto_2
    const-string v4, "QuickSettingWifiHotspot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeWifiHotspot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto :goto_2
.end method

.method private isHotspotRestrict()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isSprintBrand:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isHotspotRestricted()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private isToggleable()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_0

    const-string v2, "QuickSettingWifiHotspot"

    const-string v4, "performToggleHotspotState(airplaneModeOn):fail"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private mhsToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "HTC_PERMITTED_TETHER_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "HTC_PERMITTED_TETHER_DENY"

    goto :goto_0

    :pswitch_1
    const-string v0, "HTC_PERMITTED_TETHER_ALLOW"

    goto :goto_0

    :pswitch_2
    const-string v0, "HTC_PERMITTED_TETHER_PROGRASSING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private performToggleState()Ljava/lang/Boolean;
    .locals 12

    const/16 v11, 0xd

    const/16 v10, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-boolean v9, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v9, v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v0

    :goto_0
    if-ne v0, v10, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_1
    return-object v7

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v0

    goto :goto_0

    :cond_1
    if-eq v0, v11, :cond_2

    if-ne v0, v10, :cond_7

    :cond_2
    if-eq v0, v11, :cond_3

    move v3, v7

    :goto_2
    if-ne v3, v7, :cond_5

    sget-boolean v9, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v9, v7, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->requestMHSStateChange()Z

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    const-string v9, "QuickSettingWifiHotspot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "performToggleState(MHS):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v4}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    :cond_3
    move v3, v8

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->requestStateChange(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    const-string v9, "QuickSettingWifiHotspot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "performToggleState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " newState:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v7}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v7, v8

    goto/16 :goto_1

    :cond_7
    const-string v8, "QuickSettingWifiHotspot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "performToggleState(fail):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private requestMHSStateChange()Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_0
    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.htc.hotspot.TURN_OFF_WIFI"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    :cond_1
    const-string v4, "QuickSettingWifiHotspot"

    const-string v5, "requestMHSStateChange:popup reimind turn-off wifi dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v8

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const-string v4, "QuickSettingWifiHotspot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestMHSStateChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestStateChange(Z)V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v10, 0x3

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    :cond_0
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    if-nez p1, :cond_3

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getWifiRestoreState()I

    move-result v10

    if-ne v10, v8, :cond_4

    move v6, v8

    :goto_0
    const-string v10, "airplane_mode_on"

    invoke-static {v3, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v0, v8

    :goto_1
    if-ne v6, v8, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    :cond_2
    const-string v8, "QuickSettingWifiHotspot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange:false wifiRestoreOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " airplaneModeOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v1, v8, v4

    const-string v8, "QuickSettingWifiHotspot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " wifiState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move v6, v9

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_1
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    if-nez v3, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.htc.tether.check_postpone"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v3, v4, v0, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->initializeWifiHotspot()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    const-string v3, "QuickSettingWifiHotspot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentView:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto/16 :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "WIFI_AP_STATE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "WIFI_AP_STATE_FAILED"

    goto :goto_0

    :pswitch_1
    const-string v0, "WIFI_AP_STATE_ENABLED"

    goto :goto_0

    :pswitch_2
    const-string v0, "WIFI_AP_STATE_DISABLED"

    goto :goto_0

    :pswitch_3
    const-string v0, "WIFI_AP_STATE_ENABLING"

    goto :goto_0

    :pswitch_4
    const-string v0, "WIFI_AP_STATE_DISABLING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final supportMHS()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "Android_Networking"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "tethering_guard_support"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "QuickSettingWifiHotspot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supportMHS(ACC):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchWifiOnOff(Z)V
    .locals 6

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "QuickSettingWifiHotspot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!save record wifi state fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toggleState()V
    .locals 13

    const/high16 v12, 0x10c0

    const/16 v11, 0xb

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "airplane_mode_on"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    const-string v0, "QuickSettingWifiHotspot"

    const-string v1, "toggleHotspotState.skip:airplane!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isHotspotRestrict()Z

    move-result v0

    const-string v5, "QuickSettingWifiHotspot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleHotspotState.restrict:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isSprintBrand:Z

    if-ne v0, v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickRestrictActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "title"

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hotspot_wizard_launch_page"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "tethering_checkbox_tmous"

    invoke-static {v3, v7, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    sget-boolean v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v3, v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v3

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    const-string v8, "QuickSettingWifiHotspot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toggleHotspotState.wizard:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_7

    if-ne v3, v11, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v4

    if-ne v4, v1, :cond_7

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "com.htc.WifiRouter"

    const-string v8, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v8, 0x1

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v5, :cond_6

    const-string v0, "QuickSettingWifiHotspot"

    const-string v1, "toggleHotspotState:launch hotspot setup wizard!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v3

    goto/16 :goto_3

    :cond_6
    const-string v4, "QuickSettingWifiHotspot"

    const-string v5, "!!!!!no activity relative hotspot setup wizard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-ne v3, v11, :cond_8

    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    if-ne v4, v11, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v4

    if-ne v4, v1, :cond_8

    if-ne v6, v1, :cond_8

    if-nez v7, :cond_8

    const-string v4, "QuickSettingWifiHotspot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleHotspotState.warning:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " state:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " wifiEnable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method private updateAirplaneTogglableConfig()V
    .locals 4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    :goto_0
    const-string v1, "QuickSettingWifiHotspot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplaneToggleable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

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

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingWifiHotspot"

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

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

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

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

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
