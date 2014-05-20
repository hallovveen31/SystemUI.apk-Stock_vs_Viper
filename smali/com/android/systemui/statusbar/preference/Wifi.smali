.class public Lcom/android/systemui/statusbar/preference/Wifi;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Wifi.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifi:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Wifi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Wifi$1;-><init>(Lcom/android/systemui/statusbar/preference/Wifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Wifi$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Wifi$2;-><init>(Lcom/android/systemui/statusbar/preference/Wifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->getWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifi:Z

    new-instance v0, Lcom/android/systemui/statusbar/preference/Wifi$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Wifi$3;-><init>(Lcom/android/systemui/statusbar/preference/Wifi;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifi:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->updateResources()V

    return-void
.end method

.method private getWifi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->setWifiManager()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02054d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/Wifi;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleWifi(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifi:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Wifi;->setWifiManager()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected setState(I)V
    .locals 10

    const v9, 0x7f0a0161

    const v6, 0x7f0a0153

    const v4, 0x7f0a0154

    const/4 v8, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    const-string v3, "m0narX_tweaks"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wifi state is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f0a015f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f0a0162

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0160

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_5
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setWifiManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    return-void
.end method

.method protected toggleSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/Wifi;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
