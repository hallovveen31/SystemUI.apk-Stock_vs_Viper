.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingTimeout.java"


# static fields
.field private static final resourceList:[I

.field private static final timeoutList:[I


# instance fields
.field private demoObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z

.field private timeoutLevel:I

.field private timeoutObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x6bt 0x1t 0x2t 0x7ft
        0x6ct 0x1t 0x2t 0x7ft
        0x6dt 0x1t 0x2t 0x7ft
        0x6at 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutObserver:Landroid/database/ContentObserver;

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->demoObserver:Landroid/database/ContentObserver;

    const-string v0, "timeout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->toggleTimeoutState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->updateTimeoutLevel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->updateDemoFLOstate()V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02016e

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->startObserve()V

    const-string v2, "QuickSettingTimeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startObserve()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "QuickSettingTimeout"

    const-string v2, "timeoutObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "htc_is_demo"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method private toggleTimeoutState()V
    .locals 6

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    array-length v4, v4

    rem-int v0, v3, v4

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v1, -0x2

    :goto_0
    const-string v3, "QuickSettingTimeout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleTimeoutState."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nextLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nextTimeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    aget v1, v3, v0

    goto :goto_0
.end method

.method private updateDemoFLOstate()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_is_demo"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->setEnabled(Z)V

    const-string v1, "QuickSettingTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDemoFLOstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTimeoutLevel(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    array-length v3, v3

    if-le v2, v3, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    const-string v2, "QuickSettingTimeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeoutObserver:onChange timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ms level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    sget-object v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->resourceList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    const/4 v0, 0x0

    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutList:[I

    aget v2, v2, v0

    if-gt p1, v2, :cond_5

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutLevel:I

    add-int/lit8 v1, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->onLocaleChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->updateDemoFLOstate()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingTimeout"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->timeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->observerRegister:Z

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

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const v0, 0x3e99999a

    goto :goto_0
.end method
