.class public Lcom/android/systemui/statusbar/theming/VenomClusterTheming;
.super Ljava/lang/Object;
.source "VenomClusterTheming.java"


# static fields
.field public static final SHOW_DATA:Ljava/lang/String; = "tweaks_show_data_icon"

.field public static final SHOW_SIGNAL:Ljava/lang/String; = "tweaks_show_signal_icon"

.field public static final SHOW_WIFI:Ljava/lang/String; = "tweaks_show_wifi_icon"


# instance fields
.field private dataTheme:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

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

.field private signalTheme:Ljava/lang/String;

.field private wifiTheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/SignalIcon;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/theming/SignalIcon;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/WifiIcon;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/theming/WifiIcon;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/theming/DataIcon;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/theming/DataIcon;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "tweaks_systemui_theme_data"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->dataTheme:Ljava/lang/String;

    const-string v2, "tweaks_systemui_theme_signal"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->signalTheme:Ljava/lang/String;

    const-string v2, "tweaks_systemui_theme_wifi"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->wifiTheme:Ljava/lang/String;

    const-string v2, "tweaks_show_signal_icon"

    const-string v3, "tweaks_show_signal_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_wifi_icon"

    const-string v3, "tweaks_show_wifi_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    const-string v2, "tweaks_show_data_icon"

    const-string v3, "tweaks_show_data_icon"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

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

.method private updateVisibility(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getIconTheme(I)Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mLevelIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/theming/LevelThemeableIcon;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public setIcon(Landroid/widget/ImageView;I)V
    .locals 15

    const-string v12, "Venom"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "VenomClusterTheming->setIcon: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    if-eqz p2, :cond_0

    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "Venom"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Icon Name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->wifiTheme:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "venom.systemui.theme."

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_tint_signal_icons"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->dataTheme:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v12, "Venom"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "No theme resource: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_tint_signal_icons"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v12, "Venom"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error loading theme: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setIcon(Lcom/android/systemui/statusbar/widget/SignalBarView;II)V
    .locals 12

    const-string v9, "Venom"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setIcon signalBarView: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->signalTheme:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->signalTheme:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "venom.systemui.theme."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->signalTheme:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "stat_sys_5signal_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "stat_sys_5signal_"

    const-string v10, "stat_sys_signal_"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    const-string v9, "Venom"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "themeResId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2, p3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tweaks_tint_signal_icons"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setColorFilter(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v9, "Venom"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No theme resource: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setImageResource(II)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tweaks_tint_signal_icons"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setColorFilter(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v9, "Venom"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error loading theme: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateDataVisibility(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "tweaks_show_data_icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateVisibility(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public updateSignalVisibility(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "tweaks_show_signal_icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateVisibility(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public updateWifiVisibility(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "tweaks_show_wifi_icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateVisibility(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
