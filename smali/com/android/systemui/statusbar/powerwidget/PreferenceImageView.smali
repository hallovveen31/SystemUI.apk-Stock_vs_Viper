.class public Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private dotEffectDrawable:Landroid/graphics/drawable/Drawable;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private overlayEnable:Z

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "PreferenceImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->DEBUG:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->overlayEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "PreferenceImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->DEBUG:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->overlayEnable:Z

    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->setOverlayEnable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow2()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    const v1, -0x33b5e5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->overlayEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

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

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDotEffectEnabled(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->invalidate()V

    const-string v2, "PreferenceImageView"

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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOverlayColor(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setOverlayEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->overlayEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PreferenceImageView;->invalidate()V

    return-void
.end method
