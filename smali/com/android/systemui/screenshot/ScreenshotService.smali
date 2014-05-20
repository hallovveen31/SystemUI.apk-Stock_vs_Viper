.class public Lcom/android/systemui/screenshot/ScreenshotService;
.super Lcom/android/systemui/SystemUI;
.source "ScreenshotService.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final restoreLockState:Ljava/lang/Runnable;

.field private screenshotConnection:Landroid/content/ServiceConnection;

.field private screenshotEnable:Z

.field private screenshotLock:Ljava/lang/Object;

.field private final screenshotRunnable:Ljava/lang/Runnable;

.field private final screenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/ScreenshotService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotService;->screenshot()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/screenshot/ScreenshotService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isSupportMySketcher()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.mysketcher"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "ScreenshotService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!query package manager fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private screenshot()V
    .locals 8

    const/4 v7, 0x1

    const-string v3, "ScreenshotService"

    const-string v4, "start to invoke screenshot method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    const-string v3, "ScreenshotService"

    const-string v5, "start to bind screenshot service"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-ne v3, v7, :cond_1

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "ScreenshotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!screenshot service bind fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotService;->isSupportMySketcher()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.htc.action.SCREEN_CAPTURE_BG"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    const-string v3, "ScreenshotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startServiceTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSupportMySchetcker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
