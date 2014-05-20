.class Lcom/android/systemui/screenshot/ScreenshotService$2;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotService;->access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$2$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotService$2;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
