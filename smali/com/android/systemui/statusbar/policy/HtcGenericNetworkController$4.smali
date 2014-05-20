.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;
.super Ljava/lang/Object;
.source "HtcGenericNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIconLater(J)V
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
    .line 2048
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1302(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)Z

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 2052
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 2053
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 2054
    return-void
.end method
