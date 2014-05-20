.class Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;
.super Landroid/os/AsyncTask;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->onToggleClick()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/WifiApButton;

.field private final synthetic val$desiredState:Z

.field private final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/WifiApButton;Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/WifiApButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$desiredState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$desiredState:Z

    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v1, "WifiAp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Async Setting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;->val$desiredState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method
