.class Lcom/android/systemui/screenshot/ScreenshotService$3$1;
.super Landroid/os/Handler;
.source "ScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotService$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

.field final synthetic val$myConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotService$3;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->val$myConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotService;->access$400(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotService;->access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->val$myConnection:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    const-string v0, "ScreenshotService"

    const-string v2, "receive reply message from screenshot service"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$600(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$502(Lcom/android/systemui/screenshot/ScreenshotService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$3$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotService$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
