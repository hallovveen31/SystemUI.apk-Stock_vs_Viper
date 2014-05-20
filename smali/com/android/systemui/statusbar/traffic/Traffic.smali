.class public Lcom/android/systemui/statusbar/traffic/Traffic;
.super Landroid/widget/LinearLayout;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field mSpeed:Landroid/widget/TextView;

.field mSuffix:Landroid/widget/TextView;

.field protected mTrafficColor:I

.field mTrafficHandler:Landroid/os/Handler;

.field mTrafficStats:Landroid/net/TrafficStats;

.field showTraffic:Z

.field speed:F

.field totalRxBytes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/traffic/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/traffic/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/high16 v9, 0x4120

    const/16 v8, 0x11

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/traffic/Traffic$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/traffic/Traffic$1;-><init>(Lcom/android/systemui/statusbar/traffic/Traffic;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/systemui/statusbar/traffic/Traffic$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/traffic/Traffic$2;-><init>(Lcom/android/systemui/statusbar/traffic/Traffic;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, -0x3

    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, -0x5

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/traffic/Traffic;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/traffic/Traffic;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_status_bar_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_status_bar_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    const/high16 v5, 0x40e0

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/traffic/Traffic;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/traffic/Traffic;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/traffic/Traffic;Landroid/os/Handler;)V

    new-instance v4, Landroid/net/TrafficStats;

    invoke-direct {v4}, Landroid/net/TrafficStats;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficStats:Landroid/net/TrafficStats;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->updateSettings()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    const/high16 v5, 0x4150

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/traffic/Traffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/traffic/Traffic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getConnectAvailable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tweaks_speed_color"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    if-eq v1, v4, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSuffix:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const-string v4, "tweaks_speed_view"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->showTraffic:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->showTraffic:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->getConnectAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mAttached:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->updateTraffic()V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/traffic/Traffic;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/traffic/Traffic;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mAttached:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mSpeed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficColor:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/traffic/Traffic;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mAttached:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTraffic()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/traffic/Traffic$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/traffic/Traffic$3;-><init>(Lcom/android/systemui/statusbar/traffic/Traffic;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->totalRxBytes:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
