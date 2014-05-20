.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;
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
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V

    .line 394
    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$302(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)Z

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 397
    .local v2, state:I
    :goto_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 398
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pre_state_of_hk_d"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HK D icon customization, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 402
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 404
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #state:I
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 395
    goto :goto_0

    :cond_2
    move v2, v5

    .line 396
    goto :goto_1
.end method
