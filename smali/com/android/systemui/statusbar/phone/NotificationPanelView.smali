.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# static fields
.field private static final STATUS_BAR_SETTINGS_LEFT_PERCENTAGE:F = 0.8f

.field private static final STATUS_BAR_SETTINGS_RIGHT_PERCENTAGE:F = 0.2f

.field private static final STATUS_BAR_SWIPE_MOVE_PERCENTAGE:F = 0.2f

.field private static final STATUS_BAR_SWIPE_TRIGGER_PERCENTAGE:F = 0.05f

.field private static final STATUS_BAR_SWIPE_VERTICAL_MAX_PERCENTAGE:F = 0.025f


# instance fields
.field private TAG:Ljava/lang/String;

.field private mExtFlipOffset:F

.field private mExtGestureStartX:F

.field private mExtGestureStartY:F

.field private mExtSwipeDirection:F

.field private mExtSwipeTriggered:Z

.field private mExtTrackingSwipe:Z

.field mHandleBarHeight:I

.field mHandleView:Landroid/view/View;

.field mOkToFlip:Z

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "NotificationPanelView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v2, :cond_5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    if-eqz v2, :cond_12

    if-nez v18, :cond_1

    if-eqz v19, :cond_12

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v22, v24

    const/16 v20, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_d

    sub-float v2, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isJustPeeked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    :cond_2
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->switchToGestures()V

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    :cond_3
    :goto_3
    if-nez v29, :cond_4

    if-eqz v28, :cond_5

    :cond_4
    move-object/from16 v25, p1

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v27, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v27, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    :goto_4
    return v26

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartX:F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Venom - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event.getX(0): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Venom - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWidth(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Venom - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATUS_BAR_SETTINGS_RIGHT_PERCENTAGE: 0.2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Venom - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWidth() * (1.0f - STATUS_BAR_SETTINGS_RIGHT_PERCENTAGE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickPullDownRight()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    if-lez v2, :cond_9

    const/16 v18, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Venom - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flip: true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccc

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isGesturesEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ccccccd

    mul-float v21, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd

    mul-float v23, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    if-eqz v2, :cond_a

    cmpl-float v2, v17, v21

    if-lez v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    if-eqz v2, :cond_0

    cmpl-float v2, v16, v17

    if-lez v2, :cond_0

    cmpl-float v2, v16, v23

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    const/high16 v2, -0x4080

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeDirection:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtFlipOffset:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeDirection:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeDirection:F

    :goto_8
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeTriggered:Z

    const/16 v29, 0x1

    goto/16 :goto_0

    :cond_b
    const/high16 v2, 0x3f80

    goto :goto_7

    :cond_c
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtFlipOffset:F

    goto :goto_8

    :pswitch_3
    const/16 v18, 0x1

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeTriggered:Z

    move/from16 v28, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeTriggered:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtTrackingSwipe:Z

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v30

    cmpg-float v2, v30, v24

    if-gez v2, :cond_e

    move/from16 v24, v30

    :cond_e
    cmpl-float v2, v30, v22

    if-lez v2, :cond_f

    move/from16 v22, v30

    :cond_f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->switchToSettings()V

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeTriggered:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtGestureStartX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtSwipeDirection:F

    mul-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtFlipOffset:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    div-float v4, v16, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->partialFlip(F)V

    if-nez v29, :cond_3

    const/16 v26, 0x1

    goto/16 :goto_4

    :cond_13
    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVenomStatusBarExtension:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->completePartialFlip()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method
