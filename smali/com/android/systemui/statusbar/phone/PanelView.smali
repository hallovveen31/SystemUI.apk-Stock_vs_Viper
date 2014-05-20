.class public Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG_INTERNAL:Z

.field private mAbsPos:[I

.field private mAccel:F

.field private final mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBrakingSpeedPx:F

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseBrakingDistancePx:F

.field private mCollapseMinDisplayFraction:F

.field private mDisableGc:Z

.field private mExpandAccelPx:F

.field private mExpandBrakingDistancePx:F

.field private mExpandMinDisplayFraction:F

.field private mExpandedFraction:F

.field private mExpandedHeight:F

.field protected mFinalTouchY:F

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mFlingGestureMinDistPx:F

.field private mFullHeight:I

.field private mHandleView:Landroid/view/View;

.field protected mInitialTouchY:F

.field private mJustPeeked:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPower:Landroid/os/IPowerManager;

.field private mRecModeThreshold:[I

.field private mRubberbanding:Z

.field private mRubberbandingEnabled:Z

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field private mStatusBarViewPressed:Z

.field private final mStopAnimator:Ljava/lang/Runnable;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTouchOffset:F

.field private mTracking:Z

.field private mTrackingPointer:I

.field private mVel:F

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

.field private mViewName:Ljava/lang/String;

.field private notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private notificationTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x2

    const/high16 v3, 0x4316

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseBrakingDistancePx:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandBrakingDistancePx:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPower:Landroid/os/IPowerManager;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG_INTERNAL:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableGc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationTransition:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void

    :array_0
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PanelView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->disableGc(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object p1
.end method

.method private animationTick(J)V
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v7, Landroid/animation/TimeAnimator;

    invoke-direct {v7}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v7, v10}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z

    :cond_0
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->disableGc(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v7}, Landroid/animation/TimeAnimator;->start()V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    neg-float v10, v10

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPower:Landroid/os/IPowerManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v7}, Landroid/os/IPowerManager;->getProximityWakeLockIsHeld()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v6, v8

    :goto_1
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receiverMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v8, :cond_7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v10

    div-float/2addr v7, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v7, v10

    float-to-int v1, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    aget v7, v7, v9

    if-lt v1, v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    aget v10, v10, v8

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_5

    :cond_1
    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG_INTERNAL:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "d="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    aget v11, v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v11, :cond_6

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v7, v9

    goto/16 :goto_0

    :cond_4
    move v6, v9

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    move v7, v9

    goto :goto_2

    :cond_6
    move v8, v9

    goto :goto_3

    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v7, :cond_8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_4

    :cond_8
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v10

    div-float/2addr v7, v10

    const/high16 v10, 0x3f00

    cmpg-float v7, v7, v10

    if-gez v7, :cond_9

    :goto_5
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_4

    :cond_9
    move v8, v9

    goto :goto_5

    :cond_a
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v7, v7, v12

    if-lez v7, :cond_b

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpg-float v7, v7, v12

    if-gez v7, :cond_b

    :goto_6
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_4

    :cond_b
    move v8, v9

    goto :goto_6

    :cond_c
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-lez v7, :cond_16

    long-to-float v7, p1

    const v8, 0x3a83126f

    mul-float v2, v7, v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v4

    const/4 v0, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    neg-float v7, v7

    :goto_7
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    if-eqz v0, :cond_14

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v7, :cond_13

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    :cond_d
    :goto_8
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v8, v2

    add-float v5, v7, v8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v7, :cond_e

    cmpg-float v7, v5, v4

    if-gez v7, :cond_e

    move v5, v4

    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v7, p0, v8}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_11

    :cond_f
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v7, :cond_2

    :cond_10
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_2

    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_12
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    goto :goto_7

    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v7, :cond_d

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_8

    :cond_14
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v7, :cond_15

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_8

    :cond_15
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v7, :cond_d

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_8

    :cond_16
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animationTick called with dtms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; nothing to do (h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private disableGc(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableGc:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableGc:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    goto :goto_0
.end method

.method private getFullHeight()F
    .locals 3

    const/high16 v2, 0x4000

    const/4 v1, -0x2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-gtz v0, :cond_0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 5

    const/high16 v4, 0x4100

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseMinDisplayFraction:F

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandMinDisplayFraction:F

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "receiver_mode_pull_threshold"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    invoke-interface {v0, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRecModeThreshold:[I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_0
.end method

.method private final varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private runPeekAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const-string v0, "expandedHeight"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public cancelPeek()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public collapse()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v1, "[PanelView(%s): expandedHeight=%f fullHeight=%f closing=%s tracking=%s rubberbanding=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string v0, "T"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_3

    const-string v0, "T"

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (started)"

    :goto_4
    aput-object v0, v2, v3

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " (started)"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "f"

    goto :goto_0

    :cond_1
    const-string v0, "f"

    goto :goto_1

    :cond_2
    const-string v0, "f"

    goto :goto_2

    :cond_3
    const-string v0, "f"

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5
.end method

.method public expand()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    :cond_0
    return-void
.end method

.method public fling(FZ)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    :cond_1
    return-void
.end method

.method public getExpandedFraction()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustPeeked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return v0
.end method

.method public isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    if-eqz v1, :cond_4

    const v1, 0x7f040002

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DEBUG_INTERNAL:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "PanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notificationLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->notificationLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void

    :cond_4
    const v1, 0x7f040003

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "onMeasure: getMeasuredHeight=NaN"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-eq v1, v3, :cond_1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v3, v3

    const/high16 v4, -0x8000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "setExpandedFraction: frac=NaN, using 0 instead"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v3, "setExpandedHeightInternal: warning: h=NaN, using 0 instead"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    :cond_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v1, :cond_4

    :cond_3
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    move p1, v0

    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpandedHeightInternal: mExpandedHeight=NaN h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " fh="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/high16 v3, 0x3f80

    cmpl-float v1, v0, v2

    if-nez v1, :cond_7

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpandedHeightInternal: mExpandedFraction=NaN h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " fh="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    :cond_6
    return-void

    :cond_7
    div-float v1, p1, v0

    goto :goto_0
.end method

.method public setRubberbandingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    return-void
.end method
