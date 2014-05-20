.class public Lcom/android/systemui/statusbar/powerwidget/Adb;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "Adb.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Adb;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Adb;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a0147

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setTitle(I)V

    return-void
.end method

.method private checkPortSetting()Z
    .locals 1

    const-string v0, "service.adb.tcp.port"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected adbStart()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.m0narx.tweaks"

    const-string v6, "com.m0narx.tweaks.AdbService"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "enable"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Adb;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/Adb;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getWifiIp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    move v3, v4

    goto :goto_0
.end method

.method protected adbStop()Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.m0narx.tweaks"

    const-string v4, "com.m0narx.tweaks.AdbService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "enable"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Adb;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->checkPortSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "service.adb.tcp.port"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5555"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02057a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020579

    goto :goto_0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Adb;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getWifiIp()Ljava/lang/String;
    .locals 4

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onSettingChanged()V
    .locals 2

    const-string v0, "Venom"

    const-string v1, "ADB Changed.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/Adb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->adbStop()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Adb;->adbStart()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Adb;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0139

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/Adb;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_1
.end method

.method protected onToggleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
