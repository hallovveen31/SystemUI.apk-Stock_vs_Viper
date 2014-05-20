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

.field private unload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x15

    const/16 v4, 0x11

    const/16 v3, 0xc

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

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->loadFingerPrintConfig()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    const/high16 v0, -0x8000

    sput v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return-void

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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload:Z

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;[I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/LayoutInflater;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->notifyOverlayColorChanged(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 34
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

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v32, "sound_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    if-nez p5, :cond_1e

    const v13, 0x7f040050

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

    :cond_2
    const-string v32, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    if-nez p5, :cond_1f

    const v13, 0x7f040026

    :goto_2
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    const-string v32, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    if-nez p5, :cond_20

    const v13, 0x7f04002a

    :goto_3
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    const-string v32, "power_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5

    if-nez p5, :cond_21

    const v13, 0x7f04003b

    :goto_4
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    const-string v32, "mobile_data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    if-nez p5, :cond_22

    const v13, 0x7f040033

    :goto_5
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    const-string v32, "bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    if-nez p5, :cond_23

    const v13, 0x7f040023

    :goto_6
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    const-string v32, "screenshot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    if-nez p5, :cond_24

    const v13, 0x7f04004c

    :goto_7
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setStatusBarService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    const-string v32, "user_card"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    const v32, 0x7f040029

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move-object/from16 v2, p4

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    const-string v32, "wifi_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_a

    if-nez p5, :cond_25

    const v13, 0x7f04005f

    :goto_8
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    const-string v32, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    if-nez p5, :cond_26

    const v13, 0x7f04004e

    :goto_9
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    const-string v32, "rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    if-nez p5, :cond_27

    const v13, 0x7f040048

    :goto_a
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->setQuickSettingModel(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    :cond_c
    const-string v32, "airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    if-nez p5, :cond_28

    const v13, 0x7f040010

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

    :cond_d
    const-string v32, "media_output"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    if-nez p5, :cond_29

    const v13, 0x7f04002f

    :goto_c
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_e
    const-string v32, "auto_sync"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_f

    if-nez p5, :cond_2a

    const v13, 0x7f040016

    :goto_d
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f
    const-string v32, "roaming_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    if-nez p5, :cond_2b

    const v13, 0x7f040046

    :goto_e
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    const-string v32, "music_channel"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    if-nez p5, :cond_2c

    const v13, 0x7f040037

    :goto_f
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    const-string v32, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_12

    if-nez p5, :cond_2d

    const v13, 0x7f040041

    :goto_10
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    const-string v32, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    if-nez p5, :cond_2e

    const v13, 0x7f040020

    :goto_11
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    const-string v32, "roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14

    if-nez p5, :cond_2f

    const v13, 0x7f040044

    :goto_12
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    const-string v32, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    if-nez p5, :cond_30

    const v13, 0x7f040056

    :goto_13
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_15
    const-string v32, "sync_all"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    if-nez p5, :cond_31

    const v13, 0x7f040053

    :goto_14
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_16
    const-string v32, "apn"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    if-nez p5, :cond_32

    const v13, 0x7f040014

    :goto_15
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_17
    const-string v32, "do_not_disturb"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_18

    if-nez p5, :cond_33

    const v13, 0x7f04001a

    :goto_16
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_18
    const-string v32, "finger_print"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    if-nez p5, :cond_34

    const v13, 0x7f04001d

    :goto_17
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_19
    const-string v32, "data_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1a

    if-nez p5, :cond_35

    const v13, 0x7f040058

    :goto_18
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1a
    const-string v32, "mini_lite"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1b

    if-nez p5, :cond_36

    const v13, 0x7f040031

    :goto_19
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1b
    const-string v32, "nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1c

    if-nez p5, :cond_37

    const v13, 0x7f040039

    :goto_1a
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1c
    const-string v32, "prefer_net"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1d

    if-nez p5, :cond_38

    const v13, 0x7f04003f

    :goto_1b
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1d
    const-string v32, "power_saver_ex"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    if-nez p5, :cond_39

    const v13, 0x7f04003c

    :goto_1c
    const/16 v32, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1e
    const v13, 0x7f040051

    goto/16 :goto_1

    :cond_1f
    const v13, 0x7f040027

    goto/16 :goto_2

    :cond_20
    const v13, 0x7f04002b

    goto/16 :goto_3

    :cond_21
    const v13, 0x7f04003e

    goto/16 :goto_4

    :cond_22
    const v13, 0x7f040034

    goto/16 :goto_5

    :cond_23
    const v13, 0x7f040024

    goto/16 :goto_6

    :cond_24
    const v13, 0x7f04004d

    goto/16 :goto_7

    :cond_25
    const v13, 0x7f040060

    goto/16 :goto_8

    :cond_26
    const v13, 0x7f04004f

    goto/16 :goto_9

    :cond_27
    const v13, 0x7f040049

    goto/16 :goto_a

    :cond_28
    const v13, 0x7f040011

    goto/16 :goto_b

    :cond_29
    const v13, 0x7f040030

    goto/16 :goto_c

    :cond_2a
    const v13, 0x7f040017

    goto/16 :goto_d

    :cond_2b
    const v13, 0x7f040047

    goto/16 :goto_e

    :cond_2c
    const v13, 0x7f040038

    goto/16 :goto_f

    :cond_2d
    const v13, 0x7f040042

    goto/16 :goto_10

    :cond_2e
    const v13, 0x7f040021

    goto/16 :goto_11

    :cond_2f
    const v13, 0x7f040045

    goto/16 :goto_12

    :cond_30
    const v13, 0x7f040057

    goto/16 :goto_13

    :cond_31
    const v13, 0x7f040054

    goto/16 :goto_14

    :cond_32
    const v13, 0x7f040015

    goto/16 :goto_15

    :cond_33
    const v13, 0x7f04001b

    goto/16 :goto_16

    :cond_34
    const v13, 0x7f04001e

    goto/16 :goto_17

    :cond_35
    const v13, 0x7f040059

    goto/16 :goto_18

    :cond_36
    const v13, 0x7f040032

    goto/16 :goto_19

    :cond_37
    const v13, 0x7f04003a

    goto/16 :goto_1a

    :cond_38
    const v13, 0x7f040040

    goto/16 :goto_1b

    :cond_39
    const v13, 0x7f04003d

    goto/16 :goto_1c
.end method

.method private static checkInsertEXPSitem([I)[I
    .locals 6

    const/16 v5, 0x1e

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    new-array p0, v1, [I

    aput v5, p0, v0

    :goto_0
    return-object p0

    :cond_1
    array-length v3, p0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget v4, p0, v2

    if-ne v4, v5, :cond_3

    :goto_2
    if-ne v0, v1, :cond_2

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aput v5, p0, v1

    :cond_2
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

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static containsValidValue([II)Z
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ne p1, v3, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    if-ne v3, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getConvertList(Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 7
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

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    const/4 v1, 0x0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!convert visible content list fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x17

    aput v2, v0, v1

    :cond_2
    return-object v0

    :cond_3
    const-string v1, "quick_setting_available_items"

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->checkInsertEXPSitem([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static getQSItemInfo(Landroid/content/res/Resources;I)Landroid/util/Pair;
    .locals 5
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

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "default"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_1
    const-string v1, "default"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_c
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSIconID()I

    move-result v0

    goto :goto_1

    :pswitch_e
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_f
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_10
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_11
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_12
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_13
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_15
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_16
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_17
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_18
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_19
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_1a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_1b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    :pswitch_1d
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

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

    const/4 v3, 0x0

    const/high16 v0, -0x8000

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x2010055

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static getThemeOverlayColor(Landroid/content/res/Resources;)I
    .locals 2

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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

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

    invoke-static {}, Landroid/content/res/HtcConfiguration;->isSimpleMode()Z

    move-result v0

    return v0
.end method

.method private static loadFingerPrintConfig()Z
    .locals 4

    invoke-static {}, Lcom/htc/fingerprintapi/HtcFingerprint;->hasFingerprint()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final modeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "QS_MODE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "QS_MODE_NORMAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "QS_MODE_SIMPLE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOverlayColorChanged(Landroid/view/ViewGroup;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onOverlayColorChanged()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
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

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_2

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

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

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

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    array-length v2, p4

    :goto_1
    if-ge v0, v2, :cond_2

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQuickSettingConfig([I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

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

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

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
    .locals 11

    const/16 v10, 0x17

    const/16 v4, 0x9

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, "quick_setting_force_reset_done"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    move v6, v1

    :goto_0
    if-ne v6, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    if-nez v0, :cond_0

    const-string v0, "quick_setting_force_reset_done"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "quick_setting_items_order"

    const/4 v7, 0x0

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "quick_setting_items_order_invisible"

    const/4 v7, 0x0

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "QuickSettings"

    const-string v7, "initialQSConfiguration(content):force reset the visible/invisible as null!!"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "quick_setting_items_order_invisible"

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    const-string v7, "quick_setting_items_order"

    invoke-static {v3, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    if-ne v0, v1, :cond_f

    :cond_1
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    if-nez v8, :cond_9

    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    :goto_2
    if-eqz v3, :cond_2

    array-length v9, v3

    if-nez v9, :cond_3

    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    :cond_3
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    if-ne v9, v1, :cond_4

    array-length v1, v3

    const/16 v9, 0xc

    if-ge v1, v9, :cond_a

    array-length v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aput v10, v3, v1

    const-string v1, "QuickSettings"

    const-string v4, "initialQSConfiguration(save):insert additional finger print item!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    array-length v8, v3

    move v4, v5

    move v1, v5

    :goto_4
    if-ge v2, v8, :cond_c

    aget v9, v3, v2

    if-nez v9, :cond_5

    move v1, v2

    :cond_5
    aget v9, v3, v2

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_6

    move v4, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v6, v2

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    const-string v3, "quick_setting_items"

    sget-object v9, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v8, v3, v9}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_2

    :cond_a
    if-eqz v8, :cond_10

    const-string v1, "quick_setting_replace_fp"

    invoke-interface {v8, v1, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    :goto_5
    array-length v8, v3

    move v4, v2

    :goto_6
    if-ge v4, v8, :cond_4

    aget v9, v3, v4

    if-ne v9, v1, :cond_b

    const-string v1, "QuickSettings"

    const-string v8, "initialQSConfiguration(save):replace one item with finger print item!"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aput v10, v3, v4

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    if-eq v1, v5, :cond_d

    if-ne v4, v5, :cond_d

    const/16 v2, 0x1e

    aput v2, v3, v1

    :cond_d
    const-string v2, "QuickSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initialQSConfiguration("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v2, "QuickSettings"

    const-string v4, "initialQSConfiguration(save)"

    const-string v5, "quick_setting_items_order"

    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    :cond_e
    :goto_7
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialQSConfiguration(recover):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    const-string v0, "QuickSettings"

    const-string v1, "--------------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_f
    :try_start_0
    const-string v1, "\\["

    const-string v3, ""

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    new-array v3, v1, [I

    array-length v5, v4

    move v1, v2

    :goto_8
    if-ge v1, v5, :cond_e

    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_0
    move-exception v1

    new-array v3, v2, [I

    const-string v2, "QuickSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!recover content list fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_10
    move v1, v4

    goto/16 :goto_5
.end method

.method private refreshQuickSettingConfig([I)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload:Z

    if-nez v0, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v0, v6

    const/4 v2, 0x0

    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget v1, v3, v2

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "quick_setting_items"

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v4, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p1

    goto :goto_0

    :cond_3
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v6, :cond_5

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "user_card"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    :cond_7
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeInvalidQSItem([I)[I
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "QuickSettings"

    const-string v1, "!!!!!unexpect condition for null content/reader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1

    :cond_1
    const-string v3, "quick_setting_available_items"

    sget-object v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->checkInsertEXPSitem([I)[I

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, p1

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget v7, p1, v3

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v7

    if-ne v7, v1, :cond_2

    aget v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_5

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

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p1, v0, [I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "QuickSettings"

    const-string v2, "removeInvalidQSItem(save)"

    const-string v3, "quick_setting_items_order"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    :cond_5
    const-string v0, "QuickSettings"

    const-string v1, "--------------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V
    .locals 12
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:clear all"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:move to temp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:back to container"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v6, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v7, 0x1

    if-ne p3, v7, :cond_8

    if-eqz v0, :cond_8

    const/4 v7, 0x5

    if-ge v0, v7, :cond_8

    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:auto insert process"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-nez v1, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04001c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    :cond_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    rsub-int/lit8 v9, v0, 0x5

    int-to-float v9, v9

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private setupQuickSettings()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeInvalidQSItem([I)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_setting_items_order"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "QuickSettings"

    const-string v3, "setupQuickSettings:registerOrderObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/content/HtcIfIntent;->setHtcIntentFlag(I)Landroid/content/Intent;

    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanelsDelay(ILjava/lang/String;)V

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

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addQSModeListener(Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public animateCollapseAndUnlock()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!unlock keyguard fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    return-object v0
.end method

.method public getQuickSettingsModel()Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public reload()V
    .locals 2

    const-string v0, "QuickSettings"

    const-string v1, "reload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.category.THEMEID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public switchQSMode(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

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

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;->onModeChanged(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->generateContent(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto/16 :goto_0
.end method

.method public unload()V
    .locals 2

    const-string v0, "QuickSettings"

    const-string v1, "unload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    return-void
.end method

.method updateResources()V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_2

    :cond_0
    const v5, 0x7f0b000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    :cond_2
    return-void
.end method
