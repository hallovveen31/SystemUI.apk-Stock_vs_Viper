.class Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BarBackgroundDrawable"
.end annotation


# instance fields
.field private mAnimating:Z

.field private mColor:I

.field private mColorStart:I

.field private mEndTime:J

.field private final mGradient:Landroid/graphics/drawable/Drawable;

.field private mGradientAlpha:I

.field private mGradientAlphaStart:I

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMode:I

.field private final mOpaque:I

.field private final mSemiTransparent:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public applyModeBackground(IIZ)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    if-ne v2, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const/16 v6, 0xff

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    if-lez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-nez v8, :cond_6

    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long v8, v4, v8

    long-to-float v8, v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    div-float v2, v8, v9

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v10, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v3, v8

    int-to-float v8, v6

    mul-float/2addr v8, v3

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    float-to-double v14, v3

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    float-to-double v14, v3

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-double v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-float v11, v11

    float-to-double v11, v11

    const-wide/high16 v13, 0x3ff0

    float-to-double v15, v3

    sub-double/2addr v13, v15

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    float-to-double v0, v3

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-double v11, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-float v13, v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0

    float-to-double v0, v3

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    goto/16 :goto_2
.end method

.method public finishAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
