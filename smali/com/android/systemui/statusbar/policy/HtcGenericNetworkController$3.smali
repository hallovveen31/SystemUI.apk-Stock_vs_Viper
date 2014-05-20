.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;
.super Landroid/content/BroadcastReceiver;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceive, action="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$11(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$12(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$13(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$12(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pre_state_of_hk_d"

    if-eqz v0, :cond_2

    move v2, v4

    :goto_1
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HK D icon customization, state="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$11(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$4(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2
.end method
