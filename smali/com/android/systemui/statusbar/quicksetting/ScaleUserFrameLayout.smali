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
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "ScaleUserFrameLayout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->DEBUG:Z

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleXDifference:I

    .line 26
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleYDifference:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    .line 105
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "ScaleUserFrameLayout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->DEBUG:Z

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleXDifference:I

    .line 26
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->scaleYDifference:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    .line 105
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 48
    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1
    .parameter "_enable"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    if-eq v0, p1, :cond_0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->postInvalidate()V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->draw_color:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 183
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 147
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 157
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleUserFrameLayout;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
