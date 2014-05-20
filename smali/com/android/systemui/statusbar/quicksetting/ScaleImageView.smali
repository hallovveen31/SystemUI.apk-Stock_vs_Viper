.class public Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
.super Landroid/widget/ImageView;
.source "ScaleImageView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private dotEffectDrawable:Landroid/graphics/drawable/Drawable;

.field private draw_color:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private overlayEnable:Z

.field private paintAnimator:Landroid/animation/ObjectAnimator;

.field private pressAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "ScaleImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->DEBUG:Z

    .line 104
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 105
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 170
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 232
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    .line 263
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    .line 307
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->draw_color:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, "ScaleImageView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->DEBUG:Z

    .line 104
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->pressAnimator:Landroid/animation/ObjectAnimator;

    .line 105
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->releaseAnimator:Landroid/animation/ObjectAnimator;

    .line 170
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 232
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    .line 263
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    .line 307
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->draw_color:Z

    .line 42
    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1
    .parameter "_enable"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->draw_color:Z

    if-eq v0, p1, :cond_0

    .line 315
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->draw_color:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->postInvalidate()V

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    .local v0, resource:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->draw_color:Z

    if-ne v0, v1, :cond_0

    .line 189
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_4

    .line 195
    :cond_2
    const/4 v7, 0x0

    .line 197
    .local v7, canvasCount:I
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 201
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 213
    .end local v7           #canvasCount:I
    :cond_3
    :goto_0
    return-void

    .line 205
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onOverlayColorChanged()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->invalidate()V

    .line 251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 141
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->invalidate()V

    .line 261
    return-void
.end method

.method public setDotEffectEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->invalidate()V

    .line 182
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->dotEffectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOverlayEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    if-ne v0, p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->invalidate()V

    goto :goto_0
.end method

.method public startColorAnimation()V
    .locals 7

    .prologue
    const/16 v2, 0xff

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 268
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 285
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 275
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 276
    .local v0, v1:I
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->overlayEnable:Z

    if-ne v4, v5, :cond_3

    move v1, v3

    .line 279
    .local v1, v2:I
    :goto_2
    const-string v2, "backgroundColor"

    new-array v4, v6, [I

    aput v0, v4, v3

    aput v1, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0           #v1:I
    .end local v1           #v2:I
    :cond_2
    move v0, v3

    .line 275
    goto :goto_1

    .restart local v0       #v1:I
    :cond_3
    move v1, v2

    .line 276
    goto :goto_2
.end method

.method public stopColorAnimation()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->paintAnimator:Landroid/animation/ObjectAnimator;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->invalidate()V

    .line 301
    return-void
.end method
