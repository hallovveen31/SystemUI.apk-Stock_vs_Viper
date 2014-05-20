.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingScreenshot.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbackIndex:I

.field private handler:Landroid/os/Handler;

.field private imageview:Landroid/view/View;

.field private pendingScreenshot:Z

.field private final restoreTileview:Ljava/lang/Runnable;

.field private screenshotConnection:Landroid/content/ServiceConnection;

.field private screenshotLock:Ljava/lang/Object;

.field private final screenshotTimeout:Ljava/lang/Runnable;

.field private statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, "QuickSettingScreenshot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->TAG:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    .line 192
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    .line 195
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 226
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    .line 256
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    .line 259
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    .line 413
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    .line 43
    const-string v0, "screenshot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->tileLabel:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshot()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 449
    const v0, 0x7f02014e

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 443
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private screenshot()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 264
    const-string v4, "QuickSettingScreenshot"

    const-string v5, "takeScreenshot:bind"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v4, :cond_0

    .line 273
    monitor-exit v5

    .line 387
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v0, cmpName:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    .line 368
    .local v1, connection:Landroid/content/ServiceConnection;
    const-string v4, "QuickSettingScreenshot"

    const-string v6, "bindService:screenshotService"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 373
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    .line 376
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0           #cmpName:Landroid/content/ComponentName;
    .end local v1           #connection:Landroid/content/ServiceConnection;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    :catch_0
    move-exception v2

    .line 382
    .local v2, exception:Ljava/lang/Exception;
    const-string v4, "QuickSettingScreenshot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!screenshot service action fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/view/View;)Z
    .locals 8
    .parameter "_imageview"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 175
    .local v1, startTime:J
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    .line 180
    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 182
    .local v0, indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 187
    const-string v3, "QuickSettingScreenshot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 189
    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setEnabled(Z)V

    .line 223
    const-string v0, "QuickSettingScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeScreenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    .prologue
    const v6, 0x7f07002e

    const/4 v3, 0x1

    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 53
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setContentView(Landroid/view/View;)Z

    move-result v1

    .line 55
    .local v1, success:Z
    if-ne v1, v3, :cond_6

    .line 58
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setLongClickable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->onLocaleChanged()V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getId()I

    move-result v2

    const v4, 0x7f07002a

    if-eq v2, v4, :cond_5

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    .line 129
    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    if-ne v2, v3, :cond_1

    .line 130
    const-string v2, "QuickSettingScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeCallbackIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_3

    .line 135
    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    if-ne v2, v3, :cond_2

    .line 136
    const-string v2, "QuickSettingScreenshot"

    const-string v3, "register:notificationPanelListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    .line 141
    :cond_3
    if-eqz v0, :cond_4

    .line 144
    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setTouchDelegate(II)V

    .line 154
    .end local v0           #moreview:Landroid/view/View;
    :cond_4
    :goto_1
    return-void

    .restart local v0       #moreview:Landroid/view/View;
    :cond_5
    move v2, v3

    .line 127
    goto :goto_0

    .line 150
    .end local v0           #moreview:Landroid/view/View;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 152
    const-string v2, "QuickSettingScreenshot"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setOnOverlayChangeListener(I)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setLongClickable(Z)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 432
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 436
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public onPanelCollapse()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPanelExpand()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public setStatusBarService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .parameter "_statusBar"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    const-string v0, "QuickSettingScreenshot"

    const-string v1, "register:notificationPanelListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    .line 209
    :cond_1
    return-void
.end method
