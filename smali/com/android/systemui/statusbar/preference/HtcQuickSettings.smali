.class public Lcom/android/systemui/statusbar/preference/HtcQuickSettings;
.super Ljava/lang/Object;
.source "HtcQuickSettings.java"


# static fields
.field private static final SETTINGS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/preference/StatusBarPreference;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SETTINGS_LOADED:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/preference/StatusBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field static final TAG:Ljava/lang/String; = "QuickSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScrollList:Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preference/StatusBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field public mStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS_LOADED:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-class v2, Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "ScreenOn"

    const-class v2, Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "NetworkMode"

    const-class v2, Lcom/android/systemui/statusbar/preference/NetworkMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "LTE"

    const-class v2, Lcom/android/systemui/statusbar/preference/LTE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "XLoud"

    const-class v2, Lcom/android/systemui/statusbar/preference/XLoud;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "PowerSaver"

    const-class v2, Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Tweaks"

    const-class v2, Lcom/android/systemui/statusbar/preference/Tweaks;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Reboot"

    const-class v2, Lcom/android/systemui/statusbar/preference/Reboot;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Flashlight"

    const-class v2, Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Brightness"

    const-class v2, Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-class v2, Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "GPS"

    const-class v2, Lcom/android/systemui/statusbar/preference/GPS;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Airplane"

    const-class v2, Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "HotSpot"

    const-class v2, Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "MobileNetwork"

    const-class v2, Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Rotation"

    const-class v2, Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-class v2, Lcom/android/systemui/statusbar/preference/SilentMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "VibrationMode"

    const-class v2, Lcom/android/systemui/statusbar/preference/VibrationMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "TaskManager"

    const-class v2, Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "AutoSync"

    const-class v2, Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "ADB"

    const-class v2, Lcom/android/systemui/statusbar/preference/Adb;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Volume"

    const-class v2, Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "NFC"

    const-class v2, Lcom/android/systemui/statusbar/preference/NFC;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ScrollView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollView:Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0700b6

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollList:Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

    return-void
.end method


# virtual methods
.method public getQuickSettings()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_quicksettings"

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

.method public loadSettings()V
    .locals 14

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    if-nez v11, :cond_0

    const-string v11, "QuickSettings"

    const-string v12, "loadSettings: not start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->getQuickSettings()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    :goto_1
    if-lt v10, v12, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollList:Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->removeAllViews()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    return-void

    :cond_0
    const-string v11, "QuickSettings"

    const-string v12, "loadSettings"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    aget-object v0, v11, v10

    sget-object v13, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    sget-object v11, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-class v12, Landroid/view/View;

    aput-object v12, v5, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040077

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/PreferenceView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollList:Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

    sget-object v12, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v11, v8, v12}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mContext:Landroid/content/Context;

    aput-object v12, v6, v11

    const/4 v11, 0x1

    aput-object v8, v6, v11

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->SETTINGS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v11, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "QuickSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Can\'t load "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onStart()V
    .locals 3

    const-string v1, "QuickSettings"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    const-string v1, "QuickSettings"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStop()V

    goto :goto_0

    :cond_1
    const-string v1, "QuickSettings"

    const-string v2, "onStop: not start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public scrollToZero()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mScrollList:Lcom/android/systemui/statusbar/widget/HtcLinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    goto :goto_0
.end method
