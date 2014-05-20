.class Lcom/android/systemui/statusbar/phone/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    if-gez v9, :cond_0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    sub-float v10, v17, v18

    add-float v11, v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    const/16 v17, 0x1

    return v17

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->disableGc(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->postInvalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v18

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$902(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v18

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v11, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v19

    sub-float v18, v18, v19

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v12, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_2

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float v7, v8, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v18

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v19

    sub-float v18, v18, v19

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v8, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v17

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v11, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v18

    sub-float v3, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    cmpl-float v17, v3, v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    cmpl-float v17, v3, v17

    if-lez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->postInvalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    new-instance v4, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarViewPressed:Z
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    const-wide/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v19}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->computeCurrentVelocity(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getYVelocity()F

    move-result v16

    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_f

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getXVelocity()F

    move-result v14

    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_8

    neg-float v14, v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    cmpl-float v17, v14, v17

    if-lez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v14

    :cond_9
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    float-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2100(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    cmpl-float v17, v13, v17

    if-lez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2100(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v13

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$902(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    cmpg-float v17, v2, v17

    if-ltz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    cmpg-float v17, v13, v17

    if-gez v17, :cond_d

    :cond_c
    const/4 v13, 0x0

    :cond_d
    if-eqz v5, :cond_e

    neg-float v13, v13

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
