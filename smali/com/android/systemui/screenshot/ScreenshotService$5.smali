.class Lcom/android/systemui/screenshot/ScreenshotService$5;
.super Ljava/lang/Object;
.source "ScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotService;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotService;->access$400(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotService;->access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenshotService"

    const-string v2, "force unbind screeshot service since timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$502(Lcom/android/systemui/screenshot/ScreenshotService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

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
