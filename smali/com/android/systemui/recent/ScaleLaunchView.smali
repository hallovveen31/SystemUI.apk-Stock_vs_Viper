.class public Lcom/android/systemui/recent/ScaleLaunchView;
.super Landroid/view/View;
.source "ScaleLaunchView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOrientation:I

.field private mToDegrees:F

.field private scaleAnimator:Landroid/animation/ObjectAnimator;

.field private scaleBound:Landroid/graphics/Rect;

.field private scaleDifft:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ScaleLaunchView"

    iput-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleDifft:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    iput-object v1, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mOrientation:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v5

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    const/high16 v5, 0x42b4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleDifft:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleDifft:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v0, v4, v5

    iget v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sub-int v5, v3, v0

    sub-int v5, v1, v5

    sub-int v6, v2, v1

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public startLaunchAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ScaleLaunchView"

    const-string v1, "!!!!!skip startLaunchAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mOrientation:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "ScaleLaunchView"

    const-string v1, "!!!!!cancel current animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->launchDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleBound:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleDifft:Landroid/graphics/Rect;

    const-string v0, "scaleX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/high16 v0, -0x3d4c

    iput v0, p0, Lcom/android/systemui/recent/ScaleLaunchView;->mToDegrees:F

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
