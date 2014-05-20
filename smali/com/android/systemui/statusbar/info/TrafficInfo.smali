.class public Lcom/android/systemui/statusbar/info/TrafficInfo;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "TrafficInfo.java"


# instance fields
.field mTrafficStats:Landroid/net/TrafficStats;

.field totalRxBytes:F

.field totalTxBytes:F

.field private wifiInfo:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v0, Lcom/android/systemui/statusbar/info/TrafficInfo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/TrafficInfo$1;-><init>(Lcom/android/systemui/statusbar/info/TrafficInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private formatSpeed(F)Ljava/lang/String;
    .locals 8

    const/high16 v7, 0x4480

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, ""

    float-to-double v3, p1

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    div-float v3, p1, v7

    const/high16 v4, 0x4100

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mb/s"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    float-to-double v3, p1

    const-wide v5, 0x3f84467381d7dbf5L

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    mul-float v3, p1, v7

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B/s"

    goto :goto_0

    :cond_1
    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KB/s"

    goto :goto_0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f02012f

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 7

    const/high16 v6, 0x4480

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/TrafficInfo;->setVisibility(I)V

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->totalRxBytes:F

    sub-float/2addr v4, v5

    div-float v2, v4, v6

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->totalTxBytes:F

    sub-float/2addr v4, v5

    div-float v3, v4, v6

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    long-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->totalRxBytes:F

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    long-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->totalTxBytes:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/info/TrafficInfo;->formatSpeed(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/info/TrafficInfo;->formatSpeed(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/info/TrafficInfo;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, ""

    goto :goto_0
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public onStartIntenal()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStopIntenal()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TrafficInfo;->wifiInfo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
