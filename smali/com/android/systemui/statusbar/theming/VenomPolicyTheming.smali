.class public Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;
.super Ljava/lang/Object;
.source "VenomPolicyTheming.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "m0narX_StatusBarPolicyTheming"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLevelIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/AlarmIcon;

    const-string v4, "alarm_clock"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/AlarmIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/SyncIcon;

    const-string v4, "sync_active"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/SyncIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/SyncFailedIcon;

    const-string v4, "sync_failing"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/SyncFailedIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/VolumeIcon;

    const-string v4, "volume"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/VolumeIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/HeadsetIcon;

    const-string v4, "headset_plug"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/HeadsetIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/GPSIcon;

    const-string v4, "gps"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/GPSIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/BluetoothIcon;

    const-string v4, "bluetooth"

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/theming/BluetoothIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "tweaks_show_alarm_icon"

    const-string v3, "tweaks_show_alarm_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_gps_icon"

    const-string v3, "tweaks_show_gps_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_headset_icon"

    const-string v3, "tweaks_show_headset_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_volume_icons"

    const-string v3, "tweaks_show_volume_icons"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_bluetooth_icon"

    const-string v3, "tweaks_show_bluetooth_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;-><init>(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->addListener(Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTweakName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTweakName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1, p3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public setAlarmVisiblity(Z)V
    .locals 2

    const-string v0, "alarm_clock"

    const-string v1, "tweaks_show_alarm_icon"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBluetoothVisiblity(Z)V
    .locals 2

    const-string v0, "bluetooth"

    const-string v1, "tweaks_show_bluetooth_icon"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setGPSVisiblity(Z)V
    .locals 2

    const-string v0, "gps"

    const-string v1, "tweaks_show_gps_icon"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setHeadsetVisiblity(Z)V
    .locals 2

    const-string v0, "headset_plug"

    const-string v1, "tweaks_show_headset_icon"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 16

    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VenomPolicyTheming->Setting icon for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "stat_sys_gps_acquiring_anim"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v14, "gps_acquiring_anim"

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mLevelIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "venom.systemui.theme."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const/4 v5, 0x0

    invoke-virtual {v13, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, -0x1

    if-eq v6, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "venom.systemui.theme."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->getTheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->mSlot:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/StatusBarManager;->setThemeableIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "alarm_clock"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tweaks_show_alarm_icon"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v10, v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->get(I)I

    move-result v6

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v2, "m0narX_StatusBarPolicyTheming"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading theme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "alarm_clock"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tweaks_show_alarm_icon"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public setVolumeVisiblity(Z)V
    .locals 2

    const-string v0, "volume"

    const-string v1, "tweaks_show_volume_icons"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVisiblity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
