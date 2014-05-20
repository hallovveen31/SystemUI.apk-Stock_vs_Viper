.class Lcom/android/systemui/statusbar/preference/NetworkMode$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/NetworkMode;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/NetworkMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/NetworkMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode$1;->this$0:Lcom/android/systemui/statusbar/preference/NetworkMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/preference/NetworkMode;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode$1;->this$0:Lcom/android/systemui/statusbar/preference/NetworkMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode$1;->this$0:Lcom/android/systemui/statusbar/preference/NetworkMode;

    #calls: Lcom/android/systemui/statusbar/preference/NetworkMode;->refreshSummary()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->access$1(Lcom/android/systemui/statusbar/preference/NetworkMode;)V

    return-void
.end method
