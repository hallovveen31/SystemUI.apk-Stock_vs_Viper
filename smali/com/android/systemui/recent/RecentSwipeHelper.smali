.class public Lcom/android/systemui/recent/RecentSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "RecentSwipeHelper.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private isDismissingChild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentSwipeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentSwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v5, Lcom/android/systemui/recent/RecentSwipeHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "RecentSwipeHelper"

    const-string v6, "RecentSwipeHelper dismissChild"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_2

    cmpl-float v5, p2, v7

    if-nez v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_2

    :cond_1
    cmpl-float v5, p2, v7

    if-nez v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    :goto_0
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    cmpl-float v5, p2, v7

    if-eqz v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    sget-boolean v5, Lcom/android/systemui/recent/RecentSwipeHelper;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "RecentSwipeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecentSwipeHelper dismissChild() duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/recent/RecentSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/android/systemui/recent/RecentSwipeHelper$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recent/RecentSwipeHelper$1;-><init>(Lcom/android/systemui/recent/RecentSwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method public isDismissingChild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v3, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v4, v10, v11

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v10, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v4, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_3

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/recent/RecentSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v7, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v6, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3fd999999999999aL

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v14

    float-to-double v14, v14

    mul-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_7

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    const/4 v11, 0x1

    :goto_5
    if-ne v10, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v3, :cond_4

    if-eqz v2, :cond_a

    :cond_4
    const/4 v5, 0x1

    :goto_7
    if-eqz v5, :cond_c

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_b

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/systemui/recent/RecentSwipeHelper;->dismissChild(Landroid/view/View;F)V

    :cond_5
    :goto_9
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/recent/RecentSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    :cond_d
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setIsDismissingChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild:Z

    return-void
.end method
