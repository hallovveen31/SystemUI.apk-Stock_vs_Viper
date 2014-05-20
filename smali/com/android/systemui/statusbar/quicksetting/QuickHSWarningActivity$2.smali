.class Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;
.super Landroid/os/AsyncTask;
.source "QuickHSWarningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->switchWifiOnOff(ZLandroid/net/wifi/WifiManager;)V
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;ZLandroid/net/wifi/WifiManager;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    const-string v4, "QuickHSWarningActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialogListener.background! time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hotspot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v8

    :cond_3
    const-string v4, "QuickHSWarningActivity"

    const-string v5, "!!!!!wifi manager cannot found from system service"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
