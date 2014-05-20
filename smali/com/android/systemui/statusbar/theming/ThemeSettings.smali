.class public Lcom/android/systemui/statusbar/theming/ThemeSettings;
.super Ljava/lang/Object;
.source "ThemeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;
    }
.end annotation


# static fields
.field private static final intsettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final inttweaks:[Ljava/lang/String;

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static final settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tweaks:[Ljava/lang/String;

.field private static final uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->listeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->mLock:Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_data"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_signal"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_wifi"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_alarm"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_sync"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_sync"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_volume"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_headset"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_gps"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    const-string v4, "tweaks_systemui_theme_bluetooth"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_data_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_signal_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_wifi_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_alarm_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_gps_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_headset_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_volume_icons"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_show_bluetooth_icon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    const-string v4, "tweaks_statusbar_h_icon"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sget-object v4, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/net/Uri;

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->uris:[Landroid/net/Uri;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->tweaks:[Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->inttweaks:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/theming/ThemeSettings;->tweaks:[Ljava/lang/String;

    aput-object v0, v4, v1

    sget-object v4, Lcom/android/systemui/statusbar/theming/ThemeSettings;->uris:[Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/theming/ThemeSettings;->inttweaks:[Ljava/lang/String;

    aput-object v0, v4, v1

    sget-object v4, Lcom/android/systemui/statusbar/theming/ThemeSettings;->uris:[Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntSettings()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->inttweaks:[Ljava/lang/String;

    return-object v0
.end method

.method public static getObservableUris()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->uris:[Landroid/net/Uri;

    return-object v0
.end method

.method public static getSettings()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->tweaks:[Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static hasObservableUri(Landroid/net/Uri;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/theming/ThemeSettings;->uris:[Landroid/net/Uri;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-object v0, v3, v2

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 3

    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static putIntUpdate(Ljava/lang/String;I)V
    .locals 4

    sget-object v2, Lcom/android/systemui/statusbar/theming/ThemeSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->intsettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;->onIntSettingChanged(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static putStringUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/theming/ThemeSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->settings:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/statusbar/theming/ThemeSettings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;->onStringSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
