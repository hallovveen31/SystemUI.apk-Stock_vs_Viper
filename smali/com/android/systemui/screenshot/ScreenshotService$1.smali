.class Lcom/android/systemui/screenshot/ScreenshotService$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotService.java"


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
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z
    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotService;->access$000(Lcom/android/systemui/screenshot/ScreenshotService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "delay"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, delay:I
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$100(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotService;->access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotService;->access$100(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    const-string v1, "ScreenshotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:SCREEN_CAPTURE_BG delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
