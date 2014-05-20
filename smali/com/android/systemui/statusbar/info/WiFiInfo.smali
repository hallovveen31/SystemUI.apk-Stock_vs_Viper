.class public Lcom/android/systemui/statusbar/info/WiFiInfo;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "WiFiInfo.java"


# instance fields
.field private wifiInfo:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v0, Lcom/android/systemui/statusbar/info/WiFiInfo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/WiFiInfo$1;-><init>(Lcom/android/systemui/statusbar/info/WiFiInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020553

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/info/WiFiInfo;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const v4, 0x7f0a0132

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/WiFiInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0a0133

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/WiFiInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0a0134

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/WiFiInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const v4, 0x7f0a0131

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/WiFiInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/WiFiInfo;->setVisibility(I)V

    const-string v4, ""

    goto :goto_0
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onStartIntenal()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStopIntenal()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/WiFiInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
