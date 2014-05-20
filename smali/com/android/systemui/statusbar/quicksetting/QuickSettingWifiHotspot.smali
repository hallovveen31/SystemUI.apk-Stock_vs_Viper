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

    .prologue
    .line 699
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->supportMHS()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 62
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 208
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    .line 367
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 397
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    .line 878
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    .line 57
    const-string v0, "wifi_hotspot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->tileLabel:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->toggleState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->performToggleState()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v0

    return v0
.end method

.method private getMHSState()I
    .locals 9

    .prologue
    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 706
    .local v3, startTime:J
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v2

    .line 707
    .local v2, mhsApState:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v5

    .line 709
    .local v5, wifiApState:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 711
    .local v0, elapse:J
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

    .line 728
    return v5
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 345
    const v0, 0x7f02018a

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .parameter "resource"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, stringID:I
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    const v0, 0x7f0a00d2

    .line 333
    :goto_0
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 334
    const v0, 0x7f0a00ee

    .line 337
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    .line 338
    const v0, 0x7f0a00ef

    .line 340
    :cond_1
    if-nez p0, :cond_5

    const-string v1, "null"

    :goto_1
    return-object v1

    .line 325
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 326
    const v0, 0x7f0a00d1

    goto :goto_0

    .line 327
    :cond_3
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 328
    const v0, 0x7f0a00d3

    goto :goto_0

    .line 330
    :cond_4
    const v0, 0x7f0a00d0

    goto :goto_0

    .line 340
    :cond_5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 323
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

    .prologue
    .line 662
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 666
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 673
    :goto_0
    return v2

    .line 668
    :catch_0
    move-exception v0

    .line 670
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    const-string v2, "QuickSettingWifiHotspot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!get record wifi state fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeWifiHotspot()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 374
    .local v1, startTime:J
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v4, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v4, v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v3

    .line 382
    .local v3, state:I
    :goto_1
    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v4, v5, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 386
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 394
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

    .line 379
    .end local v3           #state:I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v3

    goto :goto_1

    .line 390
    .restart local v3       #state:I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 391
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto :goto_2
.end method

.method private isHotspotRestrict()Z
    .locals 3

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 864
    .local v0, hotspotRestrict:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isSprintBrand:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 869
    .end local v0           #hotspotRestrict:Z
    .local v1, hotspotRestrict:I
    :goto_0
    return v1

    .line 867
    .end local v1           #hotspotRestrict:I
    .restart local v0       #hotspotRestrict:Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isHotspotRestricted()Z

    move-result v0

    move v1, v0

    .line 869
    .restart local v1       #hotspotRestrict:I
    goto :goto_0
.end method

.method private isToggleable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    .line 768
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    if-ne v4, v2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v2

    .line 772
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 774
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 777
    .local v0, airplaneModeOn:Z
    :goto_1
    if-ne v0, v2, :cond_0

    .line 779
    const-string v2, "QuickSettingWifiHotspot"

    const-string v4, "performToggleHotspotState(airplaneModeOn):fail"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 780
    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_2
    move v0, v3

    .line 774
    goto :goto_1
.end method

.method private mhsToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 733
    packed-switch p1, :pswitch_data_0

    .line 743
    const-string v0, "HTC_PERMITTED_TETHER_NONE"

    :goto_0
    return-object v0

    .line 736
    :pswitch_0
    const-string v0, "HTC_PERMITTED_TETHER_DENY"

    goto :goto_0

    .line 738
    :pswitch_1
    const-string v0, "HTC_PERMITTED_TETHER_ALLOW"

    goto :goto_0

    .line 740
    :pswitch_2
    const-string v0, "HTC_PERMITTED_TETHER_PROGRASSING"

    goto :goto_0

    .line 733
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

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 558
    .local v5, startTime:J
    sget-boolean v9, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v9, v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v0

    .line 562
    .local v0, currentState:I
    :goto_0
    if-ne v0, v10, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v9

    if-nez v9, :cond_1

    .line 563
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    .line 595
    :goto_1
    return-object v7

    .line 558
    .end local v0           #currentState:I
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v0

    goto :goto_0

    .line 566
    .restart local v0       #currentState:I
    :cond_1
    if-eq v0, v11, :cond_2

    if-ne v0, v10, :cond_7

    .line 569
    :cond_2
    if-eq v0, v11, :cond_3

    move v3, v7

    .line 572
    .local v3, nextState:Z
    :goto_2
    if-ne v3, v7, :cond_5

    .line 574
    sget-boolean v9, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v9, v7, :cond_5

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->requestMHSStateChange()Z

    move-result v4

    .line 577
    .local v4, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    .line 579
    .local v1, elapse:J
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

    .line 581
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v4}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    .end local v1           #elapse:J
    .end local v3           #nextState:Z
    .end local v4           #result:Z
    :cond_3
    move v3, v8

    .line 569
    goto :goto_2

    .restart local v1       #elapse:J
    .restart local v3       #nextState:Z
    .restart local v4       #result:Z
    :cond_4
    move v7, v8

    .line 579
    goto :goto_3

    .line 586
    .end local v1           #elapse:J
    .end local v4           #result:Z
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->requestStateChange(Z)V

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    .line 590
    .restart local v1       #elapse:J
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

    .line 595
    .end local v1           #elapse:J
    .end local v3           #nextState:Z
    :goto_4
    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v7}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v7, v8

    goto/16 :goto_1

    .line 593
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

    .prologue
    const/4 v8, 0x0

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 792
    .local v1, startTime:J
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 795
    .local v3, wifiState:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 799
    :cond_0
    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 801
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 803
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.htc.hotspot.TURN_OFF_WIFI"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 809
    :cond_1
    const-string v4, "QuickSettingWifiHotspot"

    const-string v5, "requestMHSStateChange:popup reimind turn-off wifi dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v8

    .line 814
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    .line 818
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 823
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
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
    .parameter "enable"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 603
    .local v4, startTime:J
    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    .line 606
    .local v7, wifiState:I
    const/4 v10, 0x3

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    .line 608
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    .line 611
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 614
    if-nez p1, :cond_3

    .line 616
    iget-object v10, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 618
    .local v3, resolver:Landroid/content/ContentResolver;
    if-eqz v3, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getWifiRestoreState()I

    move-result v10

    if-ne v10, v8, :cond_4

    move v6, v8

    .line 622
    .local v6, wifiRestoreOn:Z
    :goto_0
    const-string v10, "airplane_mode_on"

    invoke-static {v3, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v0, v8

    .line 626
    .local v0, airplaneModeOn:Z
    :goto_1
    if-ne v6, v8, :cond_2

    if-nez v0, :cond_2

    .line 627
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->switchWifiOnOff(Z)V

    .line 629
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

    .line 633
    .end local v0           #airplaneModeOn:Z
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v6           #wifiRestoreOn:Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v1, v8, v4

    .line 635
    .local v1, elapse:J
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

    .line 636
    return-void

    .end local v1           #elapse:J
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_4
    move v6, v9

    .line 620
    goto :goto_0

    .restart local v6       #wifiRestoreOn:Z
    :cond_5
    move v0, v9

    .line 622
    goto :goto_1
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 166
    .local v1, startTime:J
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    .line 205
    :goto_0
    return v3

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 170
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_2

    move v3, v4

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 178
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 181
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    if-nez v3, :cond_3

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.tether.check_postpone"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v3, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v3, v4, v0, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    .line 197
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setEnabled(Z)V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->initializeWifiHotspot()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    .line 203
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

    .line 205
    goto/16 :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 350
    packed-switch p0, :pswitch_data_0

    .line 364
    const-string v0, "WIFI_AP_STATE_NONE"

    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    const-string v0, "WIFI_AP_STATE_FAILED"

    goto :goto_0

    .line 355
    :pswitch_1
    const-string v0, "WIFI_AP_STATE_ENABLED"

    goto :goto_0

    .line 357
    :pswitch_2
    const-string v0, "WIFI_AP_STATE_DISABLED"

    goto :goto_0

    .line 359
    :pswitch_3
    const-string v0, "WIFI_AP_STATE_ENABLING"

    goto :goto_0

    .line 361
    :pswitch_4
    const-string v0, "WIFI_AP_STATE_DISABLING"

    goto :goto_0

    .line 350
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

    .prologue
    const/4 v2, 0x0

    .line 681
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 683
    .local v0, custManager:Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v2

    .line 686
    :cond_1
    const-string v3, "Android_Networking"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 689
    .local v1, custReader:Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 692
    const-string v3, "tethering_guard_support"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 694
    .local v2, support:Z
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
    .parameter "wifiEnable"

    .prologue
    const/4 v2, 0x1

    .line 641
    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    .line 643
    .local v2, saveState:I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 646
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 650
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    const-string v3, "QuickSettingWifiHotspot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!save record wifi state fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .prologue
    const/high16 v12, 0x10c0

    const/16 v11, 0xb

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->updateAirplaneTogglableConfig()V

    .line 409
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    if-nez v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "airplane_mode_on"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 414
    :goto_0
    if-ne v0, v1, :cond_2

    .line 416
    const-string v0, "QuickSettingWifiHotspot"

    const-string v1, "toggleHotspotState.skip:airplane!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 411
    goto :goto_0

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isHotspotRestrict()Z

    move-result v0

    .line 422
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

    .line 425
    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isSprintBrand:Z

    if-ne v0, v1, :cond_3

    .line 427
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickRestrictActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 443
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hotspot_wizard_launch_page"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 449
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 452
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "tethering_checkbox_tmous"

    invoke-static {v3, v7, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    .line 455
    sget-boolean v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-ne v3, v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I

    move-result v3

    .line 457
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    .line 459
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

    .line 462
    if-ne v0, v1, :cond_7

    if-ne v3, v11, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v4

    if-ne v4, v1, :cond_7

    .line 464
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 465
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    const-string v5, "com.htc.WifiRouter"

    const-string v8, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v8, 0x1

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 471
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v5, :cond_6

    .line 473
    const-string v0, "QuickSettingWifiHotspot"

    const-string v1, "toggleHotspotState:launch hotspot setup wizard!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 446
    goto/16 :goto_2

    .line 455
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v3

    goto/16 :goto_3

    .line 478
    :cond_6
    const-string v4, "QuickSettingWifiHotspot"

    const-string v5, "!!!!!no activity relative hotspot setup wizard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_7
    if-ne v3, v11, :cond_8

    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    if-ne v4, v11, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isToggleable()Z

    move-result v4

    if-ne v4, v1, :cond_8

    if-ne v6, v1, :cond_8

    if-nez v7, :cond_8

    .line 486
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

    .line 488
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 491
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_8

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 507
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isMHSEnabled:Z

    if-nez v0, :cond_a

    .line 510
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    :cond_a
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method private updateAirplaneTogglableConfig()V
    .locals 4

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 918
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    .line 922
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

    .line 923
    return-void

    .line 920
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->isAirplaneToggleable:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    .prologue
    const v5, 0x7f07002e

    const/4 v4, 0x1

    .line 67
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 69
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    .line 73
    .local v1, success:Z
    if-ne v1, v4, :cond_2

    .line 76
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setLongClickable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->onLocaleChanged()V

    .line 123
    if-eqz v0, :cond_1

    .line 126
    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setTouchDelegate(II)V

    .line 136
    .end local v0           #moreview:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 134
    const-string v2, "QuickSettingWifiHotspot"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setOnOverlayChangeListener(I)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setLongClickable(Z)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiverRegister:Z

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    :cond_2
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 304
    .local v1, resource:Landroid/content/res/Resources;
    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    .local v2, textview:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 308
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 312
    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 315
    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    return-void
.end method
