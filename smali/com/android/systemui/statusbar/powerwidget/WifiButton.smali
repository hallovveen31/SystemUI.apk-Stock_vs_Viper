.class public Lcom/android/systemui/statusbar/powerwidget/WifiButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "WifiButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->setTitle(I)V

    return-void
.end method

.method private convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0205f8

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0205f7

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0
.end method

.method protected onToggleClick()V
    .locals 5

    const/4 v3, 0x0

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string v2, "WifiButton"

    const-string v3, "No wifiManager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v2, v4, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    new-instance v2, Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiButton;Landroid/net/wifi/WifiManager;Z)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_2
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
