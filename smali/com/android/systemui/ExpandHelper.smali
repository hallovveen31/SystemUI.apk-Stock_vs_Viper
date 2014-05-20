.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# instance fields
.field private baseStatusBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:I

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mPopDuration:I

.field private mPopLimit:F

.field private mPullGestureMinXSpan:F

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollView:Landroid/view/View;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;IILcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    new-instance v3, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    new-instance v3, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v3, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/16 v3, 0x30

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v4, "height"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    new-instance v3, Landroid/view/ScaleGestureDetector;

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v3, p1, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    const-string v2, "ExpandHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusBar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " baseStatusBar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " small:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " large:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private clamp(F)F
    .locals 2

    move v0, p1

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    return-void
.end method

.method private findView(FF)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private finishExpanding(Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_4

    move v3, v5

    :goto_1
    if-eqz v3, :cond_6

    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    :cond_1
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_3
    invoke-interface {v7, v8, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v7, v5, [F

    aput v2, v7, v6

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v7, v6}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    const-string v4, "ExpandHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishExpand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " recordExpand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v8, v2, v8

    if-nez v8, :cond_a

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v3, v6

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    goto/16 :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    :goto_5
    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_5

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    move v5, v6

    goto :goto_4
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    new-array v1, v6, [I

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    :cond_1
    new-array v1, v6, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v0, v3

    :goto_3
    move v4, v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    return-void
.end method

.method private startExpanding(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    const-string v1, "ExpandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startExpand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restoreHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->baseStatusBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    :cond_3
    const-string v1, "ExpandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startExpand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expandType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " naturelHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_2
.end method

.method private updateExpansion()V
    .locals 9

    const/high16 v7, 0x3f80

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    mul-float/2addr v4, v7

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    mul-float/2addr v0, v7

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x4080

    :goto_0
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    return-void

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v8

    float-to-int v2, v8

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    float-to-int v4, v8

    int-to-float v8, v4

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-ne v0, v9, :cond_2

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    if-ne v0, v9, :cond_3

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-lez v8, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    goto :goto_0

    :pswitch_0
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    sub-int v5, v4, v8

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-le v5, v8, :cond_5

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    int-to-float v8, v2

    int-to-float v9, v4

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v1, v6}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v4, v11, v12

    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    move v6, v9

    :goto_1
    const/4 v1, 0x0

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    cmpl-float v11, v3, v11

    if-lez v11, :cond_4

    :cond_3
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_4

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v11, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    :cond_5
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    float-to-int v7, v11

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    float-to-int v8, v11

    int-to-float v11, v7

    int-to-float v12, v8

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-eq v5, v11, :cond_0

    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    int-to-float v11, v8

    iput v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto/16 :goto_0

    :cond_6
    move v6, v10

    goto :goto_1

    :cond_7
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    goto/16 :goto_0

    :pswitch_2
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    return-void
.end method
