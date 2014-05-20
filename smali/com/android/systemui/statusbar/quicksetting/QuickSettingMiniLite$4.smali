.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingMiniLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x7d1

    const-string v0, "QuickSettingMiniLite"

    const-string v1, "receive:ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
