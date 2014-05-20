.class Lcom/android/systemui/statusbar/preference/Wifi$3;
.super Landroid/content/BroadcastReceiver;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/Wifi;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Wifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Wifi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi$3;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi$3;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/Wifi;->setState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Wifi$3;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/Wifi;->setState(I)V

    goto :goto_0
.end method
