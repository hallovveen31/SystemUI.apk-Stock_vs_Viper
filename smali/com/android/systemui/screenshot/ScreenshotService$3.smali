.class Lcom/android/systemui/screenshot/ScreenshotService$3;
.super Ljava/lang/Object;
.source "ScreenshotService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotService;->screenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const-string v5, "ScreenshotService"

    const-string v6, "success to bind screenshot service"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotService;->access$400(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotService;->access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;

    move-result-object v5

    if-eq v5, p0, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    move-object v2, p0

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotService$3$1;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotService$3$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotService$3;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "ScreenshotService"

    const-string v7, "start to send message to screenshot service"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v0

    :try_start_3
    const-string v5, "ScreenshotService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!!screenshot service send message fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/systemui/screenshot/ScreenshotService;->access$700(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotService$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/systemui/screenshot/ScreenshotService;->access$700(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "ScreenshotService"

    const-string v1, "screenshot service disconnect unexpect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
