.class Lcom/android/systemui/screenshot/ScreenshotService$4;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotService;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotService;->access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z

    const-string v0, "ScreenshotService"

    const-string v1, "restoreLockState.run:exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
