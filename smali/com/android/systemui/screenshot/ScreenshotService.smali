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

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    .line 205
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/screenshot/ScreenshotService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/ScreenshotService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotService;->screenshot()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/ScreenshotService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/screenshot/ScreenshotService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/ScreenshotService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isSupportMySketcher()Z
    .locals 5

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 244
    .local v1, isPackageExist:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.mysketcher"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    .line 253
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "ScreenshotService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!query package manager fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private screenshot()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 97
    const-string v3, "ScreenshotService"

    const-string v4, "start to invoke screenshot method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 106
    monitor-exit v4

    .line 203
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotService$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotService;)V

    .line 183
    .local v0, connection:Landroid/content/ServiceConnection;
    const-string v3, "ScreenshotService"

    const-string v5, "start to bind screenshot service"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 188
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotConnection:Landroid/content/ServiceConnection;

    .line 191
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotService;->screenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #connection:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v1

    .line 198
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "ScreenshotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!screenshot service bind fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->restoreLockState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 8

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, startTime:J
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotService;->isSupportMySketcher()Z

    move-result v2

    .line 38
    .local v2, supportMySketcher:Z
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.htc.action.SCREEN_CAPTURE_BG"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 42
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

    .line 43
    return-void
.end method
