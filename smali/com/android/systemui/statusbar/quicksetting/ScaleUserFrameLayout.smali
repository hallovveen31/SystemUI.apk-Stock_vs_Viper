.class public Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleUserFrameLayout.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private draw_color:Z

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;

.field private scaleXDifference:I

.field private scaleYDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ScaleUserFrameLayout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->DEBUG:Z

    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleXDifference:I

    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleYDifference:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->pressAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ScaleUserFrameLayout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->DEBUG:Z

    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleXDifference:I

    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleYDifference:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->pressAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/16 v2, 0xff

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
