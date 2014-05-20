.class public Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;
    }
.end annotation


# static fields
.field public static final BUTTONS_DEFAULT:Ljava/lang/String; = "Tweaks|Hub|Volume|ScreenOn|Brightness|Flashlight|Rotation|Airplane|SoundEnhancerButton|DND|QuietHours|SyncAll|Wifi|NetworkMode|LTE|MobileNetwork|HotSpot|AutoSync|Bluetooth|GPS|SilentMode|VibrationMode|ADB|TaskManager|Reboot|PowerSaver"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Venom - PowerWidget"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sPossibleButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/powerwidget/Toggle;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private conf:Lvenom/common/settings;

.field private mAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private final mButtonNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/powerwidget/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

.field public mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Tweaks"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/Tweaks;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Hub"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/HubButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Volume"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "ScreenOn"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/ScreenOn;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Brightness"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Flashlight"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Rotation"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Airplane"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "SoundEnhancerButton"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "DND"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/DNDButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "QuietHours"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/QuietHoursButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "SyncAll"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "NetworkMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "LTE"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/LTEButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "MobileNetwork"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "HotSpot"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "AutoSync"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "GPS"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SilentMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "VibrationMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "ADB"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/Adb;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "Reboot"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/Reboot;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "TaskManager"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/TaskManager;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "PowerSaver"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "NFC"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/NFC;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->conf:Lvenom/common/settings;

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/IntentFilter;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getAllObservedUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAllObservedUris()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getObservedUris()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 8

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v5, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getQuickSettings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_hquicksettings"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Tweaks|Hub|Volume|ScreenOn|Brightness|Flashlight|Rotation|Airplane|SoundEnhancerButton|DND|QuietHours|SyncAll|Wifi|NetworkMode|LTE|MobileNetwork|HotSpot|AutoSync|Bluetooth|GPS|SilentMode|VibrationMode|ADB|TaskManager|Reboot|PowerSaver"

    new-instance v1, Lvenom/common/settings;

    invoke-direct {v1}, Lvenom/common/settings;-><init>()V

    iget-boolean v1, v1, Lvenom/common/settings;->HAS_NFC:Z

    if-eqz v1, :cond_0

    const-string v0, "Tweaks|Hub|Volume|ScreenOn|Brightness|Flashlight|Rotation|Airplane|SoundEnhancerButton|DND|QuietHours|SyncAll|Wifi|NetworkMode|LTE|MobileNetwork|HotSpot|AutoSync|Bluetooth|GPS|SilentMode|VibrationMode|ADB|TaskManager|Reboot|PowerSaver|NFC"

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private loadButton(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Venom - PowerWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading button: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0
.end method

.method private printIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private recreateButtonLayout()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setScrollBarStyle(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040073

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private unloadAllButtons()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    goto :goto_0
.end method

.method private unloadButton(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyWidget()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Venom - PowerWidget"

    const-string v1, "Clearing any old widget stuffs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->unregister()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->unloadAllButtons()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setupWidget()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->destroyWidget()V

    const-string v1, "Venom - PowerWidget"

    const-string v2, "Setting up widget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getQuickSettings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->recreateButtonLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    return-void

    :cond_0
    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->loadButton(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "Venom - PowerWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error setting up button: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startWidget(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->register()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->observe()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateAllButtons()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "m0narX_HEQ"

    const-string v2, "startWidget()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onStart()V

    goto :goto_0
.end method

.method public stopWidget()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->unregister()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "m0narX_HEQ"

    const-string v2, "stopWidget()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onStop()V

    goto :goto_0
.end method

.method public updateAllButtons()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onRefresh()V

    goto :goto_0
.end method

.method public updateButtonLayoutWidth()V
    .locals 6

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_heqs_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    div-int/lit8 v1, v2, 0x8

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-void

    :pswitch_0
    div-int/lit8 v1, v2, 0x7

    goto :goto_0

    :pswitch_1
    div-int/lit8 v1, v2, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
