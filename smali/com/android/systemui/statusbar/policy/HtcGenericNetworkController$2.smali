.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;
.super Landroid/os/Handler;
.source "HtcGenericNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

.field private final synthetic val$asyncChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Lcom/android/internal/util/AsyncChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->val$asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "WIFI_ICON"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WifiActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$10(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->val$asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "WIFI_ICON"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to wifi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x11000 -> :sswitch_1
    .end sparse-switch
.end method
