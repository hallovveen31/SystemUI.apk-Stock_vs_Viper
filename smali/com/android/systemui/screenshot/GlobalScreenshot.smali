.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field private final enableARGB:Z

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persist.screenshot.hquality"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->enableARGB:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    const v0, 0x7f040005

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f07000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f07000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f07000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x1050006

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    const v0, 0x7f0c002b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$4(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1ae

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 9

    const v8, 0x3ee66666

    const/high16 v7, 0x4000

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p3, :cond_0

    const-wide/16 v5, 0x140

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    int-to-float v5, p1

    iget v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float v1, v5, v7

    int-to-float v5, p2

    iget v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float v2, v5, v7

    new-instance v4, Landroid/graphics/PointF;

    neg-float v5, v1

    mul-float v6, v8, v1

    add-float/2addr v5, v6

    neg-float v6, v2

    mul-float v7, v8, v2

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const-wide/16 v5, 0x1ae

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x42b4

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x4387

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 7

    const v6, 0x7f0a0031

    const v5, 0x7f0a0030

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x315

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0201bc

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x315

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x2

    new-array v8, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aput v2, v8, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    aput v2, v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v12

    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v8, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v8, v1

    :cond_0
    const/4 v1, 0x0

    aget v1, v8, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->enableARGB:Z

    if-eqz v1, :cond_5

    const/4 v14, 0x4

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v2

    mul-int/2addr v1, v14

    int-to-float v1, v1

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v15, v1

    int-to-long v1, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dvm.disableGcInRange(rotation):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->enableARGB:Z

    if-eqz v1, :cond_6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    move/from16 v0, v17

    invoke-static {v0, v13, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v1, 0x0

    aget v1, v8, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v8, v2

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v16, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_blocked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    :cond_5
    const/4 v14, 0x2

    goto/16 :goto_2

    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    goto/16 :goto_1
.end method
