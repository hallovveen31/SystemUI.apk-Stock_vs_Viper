.class Lcom/android/systemui/statusbar/preference/LTE$1;
.super Landroid/content/BroadcastReceiver;
.source "LTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/LTE;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/LTE;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/LTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/LTE$1;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/preference/LTE;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE$1;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/LTE;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE$1;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE$1;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/LTE;->getCurrentState()Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/preference/LTE;->setState(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/LTE;->access$1(Lcom/android/systemui/statusbar/preference/LTE;Z)V

    return-void
.end method
