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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingScreenshot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    const-string v0, "screenshot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshot()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02014e

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

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

    const/4 v7, 0x1

    const-string v4, "QuickSettingScreenshot"

    const-string v5, "takeScreenshot:bind"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v4, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    const-string v4, "QuickSettingScreenshot"

    const-string v6, "bindService:screenshotService"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-ne v4, v7, :cond_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v4, "QuickSettingScreenshot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!screenshot service action fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->restoreTileview:Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setContentView(Landroid/view/View;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

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

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

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

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    const v6, 0x7f07002e

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setContentView(Landroid/view/View;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->onLocaleChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f07002a

    if-eq v2, v4, :cond_5

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    if-ne v2, v3, :cond_1

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

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    if-ne v2, v3, :cond_2

    const-string v2, "QuickSettingScreenshot"

    const-string v3, "register:notificationPanelListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingScreenshot"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public onPanelCollapse()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->pendingScreenshot:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPanelExpand()V
    .locals 0

    return-void
.end method

.method public setStatusBarService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "QuickSettingScreenshot"

    const-string v1, "register:notificationPanelListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->callbackIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationPanelListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationPanelListener;I)V

    :cond_1
    return-void
.end method
