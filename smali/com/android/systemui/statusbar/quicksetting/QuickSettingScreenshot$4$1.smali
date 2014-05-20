.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;
.super Landroid/os/Handler;
.source "QuickSettingScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

.field final synthetic val$myConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->val$myConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->val$myConnection:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_1

    const-string v0, "QuickSettingScreenshot"

    const-string v2, "receiveMessage:screenshotService"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$702(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
