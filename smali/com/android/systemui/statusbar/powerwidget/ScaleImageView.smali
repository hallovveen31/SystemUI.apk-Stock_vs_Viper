.class public Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;
.super Landroid/widget/ImageView;
.source "ScaleImageView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private dotEffectDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private overlayEnable:Z

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "ScaleImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->DEBUG:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->overlayEnable:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ScaleImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->DEBUG:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->overlayEnable:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->setOverlayEnable(Z)V

    return-void
.end method

.method private get2DPressAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v5, 0x2

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private get2DReleaseAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v5, 0x2

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->overlayEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/high16 v1, 0x3f80

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->cancelAnimator()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->setScaleY(F)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->cancelAnimator()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->get2DReleaseAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->cancelAnimator()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->get2DPressAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDotEffectEnabled(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->invalidate()V

    const-string v2, "ScaleImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDotEffectEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elapse:"

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

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOverlayColor(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v2, 0x2060003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setOverlayEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->overlayEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->invalidate()V

    return-void
.end method
