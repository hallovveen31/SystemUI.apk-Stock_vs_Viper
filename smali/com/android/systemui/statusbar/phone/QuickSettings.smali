.class public Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;
    }
.end annotation


# static fields
.field public static final QS_DEFAULT:[I

.field public static final QS_DEFAULT_ALL:[I

.field private static final QS_MAPPING:[Ljava/lang/String;

.field private static final US_SKU:Z

.field private static category_color:I

.field public static final supportFP:Z


# instance fields
.field private final DEBUG:Z

.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerView2:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private modeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private oldConfig:Landroid/content/res/Configuration;

.field private qsContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qsContent2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qsMode:I

.field private qsOrderObserver:Landroid/database/ContentObserver;

.field private themeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/16 v4, 0x11

    const/16 v3, 0xc

    .line 788
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_card"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "airplane"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "power_saver"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mobile_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sound_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "wifi_hotspot"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screenshot"

    aput-object v2, v0, v1

    const-string v1, "gps"

    aput-object v1, v0, v3

    const/16 v1, 0xd

    const-string v2, "roaming"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "media_output"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "auto_sync"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "roaming_setting"

    aput-object v2, v0, v1

    const-string v1, "music_channel"

    aput-object v1, v0, v4

    const/16 v1, 0x12

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sync_all"

    aput-object v2, v0, v1

    const-string v1, "apn"

    aput-object v1, v0, v5

    const/16 v1, 0x16

    const-string v2, "do_not_disturb"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "finger_print"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mini_lite"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nfc"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "prefer_net"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "vowifi"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "auto_answer"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "power_saver_ex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    .line 828
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 829
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 887
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    .line 1466
    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->loadFingerPrintConfig()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    .line 1673
    const/high16 v0, -0x8000

    sput v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return-void

    .line 828
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 829
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 887
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "container"
    .parameter "container2"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->DEBUG:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 245
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 1289
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    .line 1484
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    .line 1555
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    .line 1610
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 137
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/LayoutInflater;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    sput p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->notifyOverlayColorChanged(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 34
    .parameter
    .parameter
    .parameter "inflater"
    .parameter "parent"
    .parameter "optionalQS"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, qs_content_old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, qs_content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v32, "sound_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 416
    if-nez p5, :cond_1e

    const v13, 0x7f040050

    .line 420
    .local v13, layoutID:I
    :goto_1
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    .end local v13           #layoutID:I
    :cond_2
    const-string v32, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 425
    if-nez p5, :cond_1f

    const v13, 0x7f040026

    .line 429
    .restart local v13       #layoutID:I
    :goto_2
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 432
    .local v7, brightnessTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    .end local v7           #brightnessTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_3
    const-string v32, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 438
    if-nez p5, :cond_20

    const v13, 0x7f04002a

    .line 442
    .restart local v13       #layoutID:I
    :goto_3
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    .line 445
    .local v31, wifiTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->setTag(Ljava/lang/Object;)V

    .line 449
    .end local v13           #layoutID:I
    .end local v31           #wifiTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
    :cond_4
    const-string v32, "power_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 451
    if-nez p5, :cond_21

    const v13, 0x7f04003b

    .line 455
    .restart local v13       #layoutID:I
    :goto_4
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 458
    .local v20, powerTile:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    .end local v13           #layoutID:I
    .end local v20           #powerTile:Landroid/view/View;
    :cond_5
    const-string v32, "mobile_data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 464
    if-nez p5, :cond_22

    const v13, 0x7f040033

    .line 468
    .restart local v13       #layoutID:I
    :goto_5
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 471
    .local v16, mobileTile:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    .end local v13           #layoutID:I
    .end local v16           #mobileTile:Landroid/view/View;
    :cond_6
    const-string v32, "bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 477
    if-nez p5, :cond_23

    const v13, 0x7f040023

    .line 481
    .restart local v13       #layoutID:I
    :goto_6
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    .line 484
    .local v6, bluetoothTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->setTag(Ljava/lang/Object;)V

    .line 485
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 488
    .end local v6           #bluetoothTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
    .end local v13           #layoutID:I
    :cond_7
    const-string v32, "screenshot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 490
    if-nez p5, :cond_24

    const v13, 0x7f04004c

    .line 494
    .restart local v13       #layoutID:I
    :goto_7
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    .line 497
    .local v26, screenshotTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setStatusBarService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 498
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setTag(Ljava/lang/Object;)V

    .line 499
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    .end local v13           #layoutID:I
    .end local v26           #screenshotTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
    :cond_8
    const-string v32, "user_card"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 504
    const v32, 0x7f040029

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, p4

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 507
    .local v30, userTile:Landroid/view/View;
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    .end local v30           #userTile:Landroid/view/View;
    :cond_9
    const-string v32, "wifi_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 513
    if-nez p5, :cond_25

    const v13, 0x7f04005f

    .line 517
    .restart local v13       #layoutID:I
    :goto_8
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 520
    .local v12, hotspotTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 521
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 524
    .end local v12           #hotspotTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_a
    const-string v32, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 526
    if-nez p5, :cond_26

    const v13, 0x7f04004e

    .line 530
    .restart local v13       #layoutID:I
    :goto_9
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    .line 533
    .local v27, settingTile:Landroid/view/View;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 534
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    .end local v13           #layoutID:I
    .end local v27           #settingTile:Landroid/view/View;
    :cond_b
    const-string v32, "rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 539
    if-nez p5, :cond_27

    const v13, 0x7f040048

    .line 543
    .restart local v13       #layoutID:I
    :goto_a
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    .line 546
    .local v25, rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->setQuickSettingModel(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 550
    .end local v13           #layoutID:I
    .end local v25           #rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    :cond_c
    const-string v32, "airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 552
    if-nez p5, :cond_28

    const v13, 0x7f040010

    .line 557
    .restart local v13       #layoutID:I
    :goto_b
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    .end local v13           #layoutID:I
    :cond_d
    const-string v32, "media_output"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 562
    if-nez p5, :cond_29

    const v13, 0x7f04002f

    .line 566
    .restart local v13       #layoutID:I
    :goto_c
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 569
    .local v14, mediaTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 570
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 573
    .end local v13           #layoutID:I
    .end local v14           #mediaTile:Landroid/view/View;
    :cond_e
    const-string v32, "auto_sync"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 575
    if-nez p5, :cond_2a

    const v13, 0x7f040016

    .line 579
    .restart local v13       #layoutID:I
    :goto_d
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 582
    .local v5, autoSyncTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 583
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 586
    .end local v5           #autoSyncTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_f
    const-string v32, "roaming_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 588
    if-nez p5, :cond_2b

    const v13, 0x7f040046

    .line 592
    .restart local v13       #layoutID:I
    :goto_e
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    .line 595
    .local v24, roamingcTile:Landroid/view/View;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 596
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    .end local v13           #layoutID:I
    .end local v24           #roamingcTile:Landroid/view/View;
    :cond_10
    const-string v32, "music_channel"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 601
    if-nez p5, :cond_2c

    const v13, 0x7f040037

    .line 605
    .restart local v13       #layoutID:I
    :goto_f
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 608
    .local v17, musicChannelTile:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 609
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 612
    .end local v13           #layoutID:I
    .end local v17           #musicChannelTile:Landroid/view/View;
    :cond_11
    const-string v32, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 614
    if-nez p5, :cond_2d

    const v13, 0x7f040041

    .line 618
    .restart local v13       #layoutID:I
    :goto_10
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 621
    .local v22, ringtoneTile:Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 622
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 625
    .end local v13           #layoutID:I
    .end local v22           #ringtoneTile:Landroid/view/View;
    :cond_12
    const-string v32, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 627
    if-nez p5, :cond_2e

    const v13, 0x7f040020

    .line 631
    .restart local v13       #layoutID:I
    :goto_11
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 634
    .local v11, gpsTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 635
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    .end local v11           #gpsTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_13
    const-string v32, "roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 640
    if-nez p5, :cond_2f

    const v13, 0x7f040044

    .line 644
    .restart local v13       #layoutID:I
    :goto_12
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 647
    .local v23, roamingTile:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 651
    .end local v13           #layoutID:I
    .end local v23           #roamingTile:Landroid/view/View;
    :cond_14
    const-string v32, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 653
    if-nez p5, :cond_30

    const v13, 0x7f040056

    .line 657
    .restart local v13       #layoutID:I
    :goto_13
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    .line 660
    .local v29, timeoutTile:Landroid/view/View;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 661
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 664
    .end local v13           #layoutID:I
    .end local v29           #timeoutTile:Landroid/view/View;
    :cond_15
    const-string v32, "sync_all"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 666
    if-nez p5, :cond_31

    const v13, 0x7f040053

    .line 670
    .restart local v13       #layoutID:I
    :goto_14
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    .line 673
    .local v28, syncAllTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    .end local v13           #layoutID:I
    .end local v28           #syncAllTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
    :cond_16
    const-string v32, "apn"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 678
    if-nez p5, :cond_32

    const v13, 0x7f040014

    .line 682
    .restart local v13       #layoutID:I
    :goto_15
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 685
    .local v4, apnTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 686
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 689
    .end local v4           #apnTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_17
    const-string v32, "do_not_disturb"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 691
    if-nez p5, :cond_33

    const v13, 0x7f04001a

    .line 695
    .restart local v13       #layoutID:I
    :goto_16
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 698
    .local v9, dndTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 699
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 702
    .end local v9           #dndTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_18
    const-string v32, "finger_print"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 704
    if-nez p5, :cond_34

    const v13, 0x7f04001d

    .line 708
    .restart local v13       #layoutID:I
    :goto_17
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 711
    .local v10, fingerPTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 712
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 715
    .end local v10           #fingerPTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_19
    const-string v32, "data_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 717
    if-nez p5, :cond_35

    const v13, 0x7f040058

    .line 721
    .restart local v13       #layoutID:I
    :goto_18
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 724
    .local v8, dataUsageTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 725
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 728
    .end local v8           #dataUsageTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_1a
    const-string v32, "mini_lite"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 730
    if-nez p5, :cond_36

    const v13, 0x7f040031

    .line 734
    .restart local v13       #layoutID:I
    :goto_19
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 737
    .local v15, miniLiteTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 738
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 741
    .end local v13           #layoutID:I
    .end local v15           #miniLiteTile:Landroid/view/View;
    :cond_1b
    const-string v32, "nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 743
    if-nez p5, :cond_37

    const v13, 0x7f040039

    .line 747
    .restart local v13       #layoutID:I
    :goto_1a
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 750
    .local v18, nfcTile:Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 751
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 754
    .end local v13           #layoutID:I
    .end local v18           #nfcTile:Landroid/view/View;
    :cond_1c
    const-string v32, "prefer_net"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 756
    if-nez p5, :cond_38

    const v13, 0x7f04003f

    .line 760
    .restart local v13       #layoutID:I
    :goto_1b
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 763
    .local v21, preferNetTile:Landroid/view/View;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 764
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 767
    .end local v13           #layoutID:I
    .end local v21           #preferNetTile:Landroid/view/View;
    :cond_1d
    const-string v32, "power_saver_ex"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 769
    if-nez p5, :cond_39

    const v13, 0x7f04003c

    .line 773
    .restart local v13       #layoutID:I
    :goto_1c
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 776
    .local v19, powerEXTile:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 777
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 416
    .end local v13           #layoutID:I
    .end local v19           #powerEXTile:Landroid/view/View;
    :cond_1e
    const v13, 0x7f040051

    goto/16 :goto_1

    .line 425
    :cond_1f
    const v13, 0x7f040027

    goto/16 :goto_2

    .line 438
    :cond_20
    const v13, 0x7f04002b

    goto/16 :goto_3

    .line 451
    :cond_21
    const v13, 0x7f04003e

    goto/16 :goto_4

    .line 464
    :cond_22
    const v13, 0x7f040034

    goto/16 :goto_5

    .line 477
    :cond_23
    const v13, 0x7f040024

    goto/16 :goto_6

    .line 490
    :cond_24
    const v13, 0x7f04004d

    goto/16 :goto_7

    .line 513
    :cond_25
    const v13, 0x7f040060

    goto/16 :goto_8

    .line 526
    :cond_26
    const v13, 0x7f04004f

    goto/16 :goto_9

    .line 539
    :cond_27
    const v13, 0x7f040049

    goto/16 :goto_a

    .line 552
    :cond_28
    const v13, 0x7f040011

    goto/16 :goto_b

    .line 562
    :cond_29
    const v13, 0x7f040030

    goto/16 :goto_c

    .line 575
    :cond_2a
    const v13, 0x7f040017

    goto/16 :goto_d

    .line 588
    :cond_2b
    const v13, 0x7f040047

    goto/16 :goto_e

    .line 601
    :cond_2c
    const v13, 0x7f040038

    goto/16 :goto_f

    .line 614
    :cond_2d
    const v13, 0x7f040042

    goto/16 :goto_10

    .line 627
    :cond_2e
    const v13, 0x7f040021

    goto/16 :goto_11

    .line 640
    :cond_2f
    const v13, 0x7f040045

    goto/16 :goto_12

    .line 653
    :cond_30
    const v13, 0x7f040057

    goto/16 :goto_13

    .line 666
    :cond_31
    const v13, 0x7f040054

    goto/16 :goto_14

    .line 678
    :cond_32
    const v13, 0x7f040015

    goto/16 :goto_15

    .line 691
    :cond_33
    const v13, 0x7f04001b

    goto/16 :goto_16

    .line 704
    :cond_34
    const v13, 0x7f04001e

    goto/16 :goto_17

    .line 717
    :cond_35
    const v13, 0x7f040059

    goto/16 :goto_18

    .line 730
    :cond_36
    const v13, 0x7f040032

    goto/16 :goto_19

    .line 743
    :cond_37
    const v13, 0x7f04003a

    goto/16 :goto_1a

    .line 756
    :cond_38
    const v13, 0x7f040040

    goto/16 :goto_1b

    .line 769
    :cond_39
    const v13, 0x7f04003d

    goto/16 :goto_1c
.end method

.method private static checkInsertEXPSitem([I)[I
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x1e

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1148
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 1149
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_QS_EXPS_MODE:Z

    if-ne v2, v1, :cond_1

    new-array p0, v1, [I

    aput v5, p0, v0

    .line 1176
    :cond_1
    :goto_0
    return-object p0

    .line 1151
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_QS_EXPS_MODE:Z

    if-ne v2, v1, :cond_1

    .line 1156
    array-length v3, p0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 1159
    aget v4, p0, v2

    if-ne v4, v5, :cond_4

    .line 1167
    :goto_2
    if-ne v0, v1, :cond_3

    .line 1169
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 1170
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aput v5, p0, v1

    .line 1173
    :cond_3
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInsertEXPSitem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static containsValidValue([II)Z
    .locals 4
    .parameter "list"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1064
    const/16 v3, 0x17

    if-ne p1, v3, :cond_1

    .line 1065
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    .line 1075
    :cond_0
    :goto_0
    return v2

    .line 1067
    :cond_1
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    .line 1070
    const/4 v0, 0x0

    .local v0, loop:I
    array-length v1, p0

    .local v1, size:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1072
    aget v3, p0, v0

    if-ne v3, p1, :cond_2

    .line 1073
    const/4 v2, 0x1

    goto :goto_0

    .line 1070
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getConvertList(Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1183
    :cond_0
    const/4 v0, 0x0

    .line 1209
    :cond_1
    :goto_0
    return-object v0

    .line 1185
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    :try_start_0
    const-string v1, "\\["

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1192
    const/4 v1, 0x0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1194
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1197
    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1198
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!convert visible content list fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getQSAvailableList()[I
    .locals 3

    .prologue
    .line 1118
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 1120
    if-nez v0, :cond_3

    .line 1121
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 1129
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1130
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 1132
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1135
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 1138
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x17

    aput v2, v0, v1

    .line 1141
    :cond_2
    return-object v0

    .line 1124
    :cond_3
    const-string v1, "quick_setting_available_items"

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 1125
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->checkInsertEXPSitem([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static getQSItemInfo(Landroid/content/res/Resources;I)Landroid/util/Pair;
    .locals 5
    .parameter "resource"
    .parameter "qs_index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 1335
    :cond_0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "default"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1461
    :goto_0
    return-object v2

    .line 1337
    :cond_1
    const-string v1, "default"

    .line 1339
    .local v1, itemName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1342
    .local v0, itemIcon:I
    packed-switch p1, :pswitch_data_0

    .line 1461
    :goto_1
    :pswitch_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1345
    :pswitch_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSIconID()I

    move-result v0

    .line 1347
    goto :goto_1

    .line 1349
    :pswitch_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1350
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSIconID()I

    move-result v0

    .line 1351
    goto :goto_1

    .line 1353
    :pswitch_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSIconID()I

    move-result v0

    .line 1355
    goto :goto_1

    .line 1357
    :pswitch_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSIconID()I

    move-result v0

    .line 1359
    goto :goto_1

    .line 1361
    :pswitch_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSIconID()I

    move-result v0

    .line 1363
    goto :goto_1

    .line 1365
    :pswitch_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSIconID()I

    move-result v0

    .line 1367
    goto :goto_1

    .line 1369
    :pswitch_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSIconID()I

    move-result v0

    .line 1371
    goto :goto_1

    .line 1373
    :pswitch_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSIconID()I

    move-result v0

    .line 1375
    goto :goto_1

    .line 1377
    :pswitch_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSIconID()I

    move-result v0

    .line 1379
    goto :goto_1

    .line 1381
    :pswitch_a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSIconID()I

    move-result v0

    .line 1383
    goto :goto_1

    .line 1385
    :pswitch_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSIconID()I

    move-result v0

    .line 1387
    goto :goto_1

    .line 1389
    :pswitch_c
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSIconID()I

    move-result v0

    .line 1391
    goto :goto_1

    .line 1393
    :pswitch_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSIconID()I

    move-result v0

    .line 1395
    goto :goto_1

    .line 1397
    :pswitch_e
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSIconID()I

    move-result v0

    .line 1399
    goto/16 :goto_1

    .line 1401
    :pswitch_f
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSIconID()I

    move-result v0

    .line 1403
    goto/16 :goto_1

    .line 1405
    :pswitch_10
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSIconID()I

    move-result v0

    .line 1407
    goto/16 :goto_1

    .line 1409
    :pswitch_11
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSIconID()I

    move-result v0

    .line 1411
    goto/16 :goto_1

    .line 1413
    :pswitch_12
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1414
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSIconID()I

    move-result v0

    .line 1415
    goto/16 :goto_1

    .line 1417
    :pswitch_13
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSIconID()I

    move-result v0

    .line 1419
    goto/16 :goto_1

    .line 1421
    :pswitch_14
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSIconID()I

    move-result v0

    .line 1423
    goto/16 :goto_1

    .line 1425
    :pswitch_15
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSIconID()I

    move-result v0

    .line 1427
    goto/16 :goto_1

    .line 1429
    :pswitch_16
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSIconID()I

    move-result v0

    .line 1431
    goto/16 :goto_1

    .line 1433
    :pswitch_17
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSIconID()I

    move-result v0

    .line 1435
    goto/16 :goto_1

    .line 1437
    :pswitch_18
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSIconID()I

    move-result v0

    .line 1439
    goto/16 :goto_1

    .line 1441
    :pswitch_19
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSIconID()I

    move-result v0

    .line 1443
    goto/16 :goto_1

    .line 1445
    :pswitch_1a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSIconID()I

    move-result v0

    .line 1447
    goto/16 :goto_1

    .line 1449
    :pswitch_1b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSIconID()I

    move-result v0

    .line 1451
    goto/16 :goto_1

    .line 1453
    :pswitch_1c
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSIconID()I

    move-result v0

    .line 1455
    goto/16 :goto_1

    .line 1457
    :pswitch_1d
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    .line 1342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1d
    .end packed-switch
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v0, -0x8000

    .line 1642
    if-nez p1, :cond_0

    .line 1653
    :goto_0
    return v0

    .line 1645
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x2010055

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1648
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1650
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static getThemeOverlayColor(Landroid/content/res/Resources;)I
    .locals 2
    .parameter

    .prologue
    .line 1677
    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x2060003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1222
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 1223
    :cond_0
    const/4 v0, 0x0

    .line 1225
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 1233
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isSimpleMode()Z
    .locals 1

    .prologue
    .line 1605
    invoke-static {}, Landroid/content/res/HtcConfiguration;->isSimpleMode()Z

    move-result v0

    return v0
.end method

.method private static loadFingerPrintConfig()Z
    .locals 4

    .prologue
    .line 1473
    invoke-static {}, Lcom/htc/fingerprintapi/HtcFingerprint;->hasFingerprint()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1475
    :goto_0
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_finger_print:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return v0

    .line 1473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final modeToString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1536
    packed-switch p0, :pswitch_data_0

    .line 1543
    const-string v0, "QS_MODE_UNKNOWN"

    :goto_0
    return-object v0

    .line 1539
    :pswitch_0
    const-string v0, "QS_MODE_NORMAL"

    goto :goto_0

    .line 1541
    :pswitch_1
    const-string v0, "QS_MODE_SIMPLE"

    goto :goto_0

    .line 1536
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOverlayColorChanged(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 1659
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1670
    :cond_0
    return-void

    .line 1663
    :cond_1
    const/4 v1, 0x0

    .local v1, loop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1665
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1667
    .local v0, childview:Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v3, :cond_2

    .line 1668
    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .end local v0           #childview:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onOverlayColorChanged()V

    .line 1663
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1098
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1104
    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 1108
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1081
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1087
    const/4 v0, 0x0

    array-length v2, p4

    :goto_1
    if-ge v0, v2, :cond_2

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p4, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1091
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshHTCTile(Landroid/view/LayoutInflater;[I)V
    .locals 11
    .parameter "inflater"
    .parameter "configuration"

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 361
    .local v9, startTime:J
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 362
    .local v1, qs_content_old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 364
    .local v8, qs_content_old2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 367
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQuickSettingConfig([I)V

    .line 373
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    .line 378
    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 381
    :cond_1
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshHTCTiles:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v0, :cond_2

    .line 401
    :goto_0
    return-void

    .line 388
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 391
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    .line 396
    if-eqz v8, :cond_3

    .line 397
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 400
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshHTCTiles2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshQSSettingConfiguration([I)[I
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x17

    const/16 v4, 0x9

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 896
    const-string v0, "quick_setting_force_reset_done"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    move v7, v1

    .line 900
    :goto_0
    if-ne v7, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    if-nez v0, :cond_0

    .line 902
    const-string v0, "quick_setting_force_reset_done"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    const-string v0, "quick_setting_items_order"

    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 904
    const-string v0, "quick_setting_items_order_invisible"

    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    const-string v0, "QuickSettings"

    const-string v6, "initialQSConfiguration(content):force reset the visible/invisible as null!!"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    const-string v0, "quick_setting_items_order_invisible"

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    .line 913
    :goto_1
    const-string v6, "quick_setting_items_order"

    invoke-static {v3, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 915
    if-eqz v8, :cond_1

    if-ne v0, v1, :cond_11

    .line 917
    :cond_1
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    .line 919
    if-nez v6, :cond_9

    .line 920
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 924
    :goto_2
    if-eqz v3, :cond_2

    array-length v9, v3

    if-nez v9, :cond_3

    .line 925
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 929
    :cond_3
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    if-ne v9, v1, :cond_4

    .line 932
    array-length v9, v3

    const/16 v10, 0xc

    if-ge v9, v10, :cond_a

    .line 934
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 935
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput v11, v3, v4

    .line 937
    const-string v4, "QuickSettings"

    const-string v6, "initialQSConfiguration(save):insert additional finger print item!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_4
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_QS_EXPS_MODE:Z

    if-ne v4, v1, :cond_f

    .line 966
    array-length v6, v3

    move v4, v5

    move v1, v5

    :goto_4
    if-ge v2, v6, :cond_d

    .line 968
    aget v9, v3, v2

    if-nez v9, :cond_5

    move v1, v2

    .line 969
    :cond_5
    aget v9, v3, v2

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_6

    move v4, v2

    .line 966
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v7, v2

    .line 896
    goto :goto_0

    :cond_8
    move v0, v2

    .line 909
    goto :goto_1

    .line 922
    :cond_9
    const-string v3, "quick_setting_items"

    sget-object v9, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v6, v3, v9}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_2

    .line 943
    :cond_a
    if-eqz v6, :cond_b

    .line 944
    const-string v9, "quick_setting_replace_fp"

    invoke-interface {v6, v9, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    .line 947
    :cond_b
    array-length v9, v3

    move v6, v2

    :goto_5
    if-ge v6, v9, :cond_4

    .line 949
    aget v10, v3, v6

    if-ne v10, v4, :cond_c

    .line 951
    const-string v4, "QuickSettings"

    const-string v9, "initialQSConfiguration(save):replace one item with finger print item!"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    aput v11, v3, v6

    goto :goto_3

    .line 947
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 973
    :cond_d
    if-eq v1, v5, :cond_e

    if-ne v4, v5, :cond_e

    .line 974
    const/16 v2, 0x1e

    aput v2, v3, v1

    .line 976
    :cond_e
    const-string v2, "QuickSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialQSConfiguration("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v2, "QuickSettings"

    const-string v4, "initialQSConfiguration(save)"

    const-string v5, "quick_setting_items_order"

    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1003
    :cond_10
    :goto_6
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialQSConfiguration(recover):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialQSConfiguration(content):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " forceReset:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " US_SKU:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " userNeverEdit:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, "QuickSettings"

    const-string v1, "--------------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-object v3

    .line 986
    :cond_11
    :try_start_0
    const-string v1, "\\["

    const-string v3, ""

    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 988
    array-length v1, v4

    new-array v3, v1, [I

    .line 991
    array-length v5, v4

    move v1, v2

    :goto_7
    if-ge v1, v5, :cond_10

    .line 992
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 994
    :catch_0
    move-exception v1

    .line 997
    new-array v3, v2, [I

    .line 999
    const-string v2, "QuickSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!recover content list fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private refreshQuickSettingConfig([I)V
    .locals 9
    .parameter "configuration"

    .prologue
    .line 834
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 837
    .local v3, qs_acc:[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 840
    if-nez p1, :cond_2

    .line 842
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    .line 844
    .local v4, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v4, :cond_1

    .line 845
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 852
    .end local v4           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v0, v6

    .line 855
    .local v0, MAX_MAPPING:I
    const/4 v2, 0x0

    .local v2, loop:I
    array-length v5, v3

    .local v5, size:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 857
    aget v1, v3, v2

    .line 859
    .local v1, itemIndex:I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 860
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 847
    .end local v0           #MAX_MAPPING:I
    .end local v1           #itemIndex:I
    .end local v2           #loop:I
    .end local v5           #size:I
    .restart local v4       #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v6, "quick_setting_items"

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v4, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_0

    .line 850
    .end local v4           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    move-object v3, p1

    goto :goto_0

    .line 863
    .restart local v0       #MAX_MAPPING:I
    .restart local v2       #loop:I
    .restart local v5       #size:I
    :cond_3
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v6, :cond_4

    .line 884
    :goto_2
    return-void

    .line 870
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 873
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 876
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "user_card"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 877
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 883
    :cond_6
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 873
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeInvalidQSItem([I)[I
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1014
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1018
    :cond_0
    const-string v0, "QuickSettings"

    const-string v1, "!!!!!unexpect condition for null content/reader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_0
    return-object p1

    .line 1022
    :cond_1
    const-string v3, "quick_setting_available_items"

    sget-object v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 1025
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->checkInsertEXPSitem([I)[I

    move-result-object v4

    .line 1030
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    array-length v6, p1

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_3

    .line 1035
    aget v7, p1, v3

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v7

    if-ne v7, v1, :cond_2

    .line 1036
    aget v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1038
    goto :goto_2

    .line 1042
    :cond_3
    if-ne v0, v1, :cond_5

    .line 1044
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvalidQSItem(old):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvalidQSItem(all):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p1, v0, [I

    .line 1051
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    .line 1052
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    .line 1051
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1054
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "QuickSettings"

    const-string v2, "removeInvalidQSItem(save)"

    const-string v3, "quick_setting_items_order"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1057
    :cond_5
    const-string v0, "QuickSettings"

    const-string v1, "--------------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V
    .locals 12
    .parameter "containerView"
    .parameter
    .parameter "autoInsert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, qs_content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:clear all"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v2, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;>;"
    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:move to temp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x0

    .local v3, loop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .local v5, size:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 301
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 303
    .local v6, tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-eqz v6, :cond_3

    .line 305
    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v7, "QuickSettings"

    const-string v8, "%2d:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v6           #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 312
    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:back to container"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_6

    .line 319
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 321
    .restart local v6       #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-eqz v6, :cond_5

    .line 323
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    const-string v7, "QuickSettings"

    const-string v8, "%2d:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 328
    .end local v6           #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 331
    .local v0, count:I
    const/4 v7, 0x1

    if-ne p3, v7, :cond_8

    if-eqz v0, :cond_8

    const/4 v7, 0x5

    if-ge v0, v7, :cond_8

    .line 333
    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:auto insert process"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 340
    .local v1, dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-nez v1, :cond_7

    .line 341
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04001c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 345
    .restart local v1       #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    rsub-int/lit8 v9, v0, 0x5

    int-to-float v9, v9

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 351
    .local v4, lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .end local v1           #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v4           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private setupQuickSettings()V
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, qsInitialList:[I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeInvalidQSItem([I)[I

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "quick_setting_items_order"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    const-string v2, "QuickSettings"

    const-string v3, "setupQuickSettings:registerOrderObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "intent"
    .parameter "onlyProvisioned"

    .prologue
    .line 225
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/content/HtcIfIntent;->setHtcIntentFlag(I)Landroid/content/Intent;

    .line 235
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanelsDelay(ILjava/lang/String;)V

    .line 242
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSettingsActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addQSModeListener(Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;)V
    .locals 1
    .parameter "qsListener"

    .prologue
    .line 1560
    if-nez p1, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    .line 1567
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public animateCollapseAndUnlock()V
    .locals 4

    .prologue
    .line 1277
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1286
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1282
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!unlock keyguard fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLaunchEditListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1313
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    return-object v0
.end method

.method public getQuickSettingsModel()Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 146
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 151
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 5
    .parameter "networkController"
    .parameter "bluetoothController"
    .parameter "batteryController"
    .parameter "locationController"
    .parameter "rotationController"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.htc.intent.category.THEMEID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 218
    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 1262
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1268
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public switchQSMode(I)V
    .locals 4
    .parameter

    .prologue
    .line 1490
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    if-ne v0, p1, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    .line 1494
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchQSMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1500
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1507
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1509
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;->onModeChanged(I)V

    .line 1509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1514
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 1523
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->generateContent(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto/16 :goto_0
.end method

.method updateResources()V
    .locals 7

    .prologue
    .line 248
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 251
    .local v2, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 253
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 256
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_2

    .line 258
    :cond_0
    const v5, 0x7f0b000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 259
    .local v3, span:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 260
    .local v4, v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 263
    .end local v4           #v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 264
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 266
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    .line 268
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #span:I
    :cond_2
    return-void
.end method
