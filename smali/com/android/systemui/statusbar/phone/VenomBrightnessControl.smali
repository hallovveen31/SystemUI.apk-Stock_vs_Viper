.class public Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;
.super Ljava/lang/Object;
.source "VenomBrightnessControl.java"


# static fields
.field private static final BRIGHTNESS_CONTROL_LINGER_THRESHOLD:I = 0x14

.field private static final BRIGHTNESS_CONTROL_LONG_PRESS_TIMEOUT:I = 0x2ee

.field private static final BRIGHTNESS_CONTROL_PADDING:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "VenomBrightnessControl"


# instance fields
.field private mBrightnessControl:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mLinger:I

.field private mLongPressBrightnessChange:Ljava/lang/Runnable;

.field private mMinBrightness:I

.field private mNotificationHeaderHeight:I

.field private mScreenWidth:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mBrightnessControl:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;-><init>(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mNotificationHeaderHeight:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mScreenWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mMinBrightness:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->updateSettings()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchX:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->adjustBrightness(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    return-void
.end method

.method private adjustBrightness(I)V
    .locals 9

    const v8, 0x3e19999a

    int-to-float v6, p1

    iget v7, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mScreenWidth:F

    div-float v4, v6, v7

    const v6, 0x3f59999a

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v6, v2, v8

    const v7, 0x3f333333

    div-float v5, v6, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mMinBrightness:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mMinBrightness:I

    rsub-int v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v1, v6, v7

    const/16 v6, 0xff

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mMinBrightness:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v6, "VenomBrightnessControl"

    const-string v7, "Can\'t get IPowerManager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "VenomBrightnessControl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Setting Brightness failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public brightnessControl(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mBrightnessControl:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v3, v5

    if-nez v0, :cond_1

    iput v7, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchX:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchY:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mNotificationHeaderHeight:I

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2ee

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mNotificationHeaderHeight:I

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4248

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->adjustBrightness(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchX:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v1, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v1, :cond_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLongPressBrightnessChange:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v7, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_cm_brightness_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mBrightnessControl:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
